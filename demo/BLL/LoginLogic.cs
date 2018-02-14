using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using DAL;
using System.Linq;
using System.Web;
using System.Data;

namespace BLL
{
    public class LoginLogic
    {
        public Member Authenticate(LoginData loginObj)
        {
            string query = "select * from Member where Email=@UserName and Password=@Password";
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@UserName", loginObj.UserName));
            lstParams.Add(new SqlParameter("@Password", loginObj.Password));
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
    }
}