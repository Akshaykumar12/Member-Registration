using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using DAL;
using System.Linq;
using System.Web;

namespace BLL
{
    public class MemberLogic : ILogic<Member>
    {
        public int Insert(Member objMember)
        {
            string query = "insert member values (@FirstName, @LastName, @UserName, @Password, @Email, @Address, @Country, @State, @ZIP)";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@FirstName", objMember.FirstName));
            lstParams.Add(new SqlParameter("@LastName", objMember.LastName));
            lstParams.Add(new SqlParameter("@UserName", objMember.UserName));
            lstParams.Add(new SqlParameter("@Password", objMember.Password));
            lstParams.Add(new SqlParameter("@Email", objMember.Email));
            lstParams.Add(new SqlParameter("@Address", objMember.Address));
            lstParams.Add(new SqlParameter("@Country", objMember.Country));
            lstParams.Add(new SqlParameter("@State", objMember.State));
            lstParams.Add(new SqlParameter("@ZIP", objMember.ZIP));

            return DBUtility.ModifyData(query, lstParams);
        }

        public int Update(Member objMember)
        {
            string query = "update member set Username = @Username,Email = @Email, Address = @Address  WHERE MemberID = @MemberID";

            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@MemberID", objMember.MemberID));
            //lstParams.Add(new SqlParameter("@FirstName", objMember.FirstName));
            //lstParams.Add(new SqlParameter("@LastName", objMember.LastName));
            lstParams.Add(new SqlParameter("@UserName", objMember.UserName));
            //lstParams.Add(new SqlParameter("@Password", objMember.Password));
            lstParams.Add(new SqlParameter("@Email", objMember.Email));
            lstParams.Add(new SqlParameter("@Address", objMember.Address));
            //lstParams.Add(new SqlParameter("@Country", objMember.Country));
            //lstParams.Add(new SqlParameter("@State", objMember.State));
            //lstParams.Add(new SqlParameter("@ZIP", objMember.ZIP));

            return DBUtility.ModifyData(query, lstParams);
        }

        public int Delete(int MemberID)
        {
            string query = "delete Member WHERE MemberID = @MemberID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@MemberID", MemberID));

            return DBUtility.ModifyData(query, lstParams);
        }

        public Member SelectByID(int MemberID)
        {
            string query = "select * from Member WHERE MemberID = @MemberID";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@MemberID", MemberID));

            DataTable dt = DBUtility.SelectData(query, lstParams);

            Member objMember = new Member();
            if (dt.Rows.Count > 0)
            {
                objMember.FirstName = dt.Rows[0]["FirstName"].ToString();
                objMember.LastName = dt.Rows[0]["LastName"].ToString();
                objMember.UserName = dt.Rows[0]["UserName"].ToString();
                objMember.Password = dt.Rows[0]["Password"].ToString();
                objMember.Email = dt.Rows[0]["Email"].ToString();
                objMember.Address = dt.Rows[0]["Address"].ToString();
                objMember.Country = dt.Rows[0]["Country"].ToString();
                objMember.State = dt.Rows[0]["State"].ToString();
                objMember.ZIP = dt.Rows[0]["ZIP"].ToString();
                objMember.MemberID = Convert.ToInt32(dt.Rows[0]["MemberID"]);
            }

            return objMember;
        }

        public DataTable Search(string username)
        {
            string query = "select * from Member where UserName like @Username + '%'";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@Username", username));
            return DBUtility.SelectData(query, lstParams);
        }

        public DataTable SelectAll()
        {
            string query = "select * from Member";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            return DBUtility.SelectData(query, lstParams);
        }
    }
}