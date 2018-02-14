using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class DBUtility
    {
        public static DataTable SelectData(string query, List<SqlParameter> lstParams)
        {
            SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Surface\source\repos\demo\demo\App_Data\member.mdf; Integrated Security = True");
            //SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Surface\source\repos\Practice1\WebSite1\App_Data\demoDatabase.mdf;Integrated Security=True");
            SqlCommand comm = new SqlCommand(query, conn);
            comm.Parameters.AddRange(lstParams.ToArray());

            SqlDataAdapter adapter = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            conn.Open();
            adapter.Fill(dt);
            conn.Close();

            return dt;
        }

        public static int ModifyData(string query, List<SqlParameter> lstParams)
        {
            SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Surface\source\repos\demo\demo\App_Data\member.mdf; Integrated Security = True");
            SqlCommand comm = new SqlCommand(query, conn);
            comm.Parameters.AddRange(lstParams.ToArray());

            conn.Open();
            int x = comm.ExecuteNonQuery();
            conn.Close();

            return x;
        }
    }
}
