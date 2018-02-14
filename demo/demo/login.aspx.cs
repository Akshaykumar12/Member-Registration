using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo
{
    public partial class loginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["MemberID"] = null;
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {

            LoginLogic LL = new LoginLogic();
            LoginData loginObj = new LoginData();
            loginObj.UserName = txtEmail.Text;
            loginObj.Password = txtPassword.Text;


            Member memberObj = new Member();
            memberObj = LL.Authenticate(loginObj);

            if(memberObj!= null)
            {
                Session["MemberID"] = Convert.ToInt32(memberObj.MemberID);
                Session["UserName"] = memberObj.UserName;
                Response.Redirect("Home.aspx");
            }
            
        }

    }
}