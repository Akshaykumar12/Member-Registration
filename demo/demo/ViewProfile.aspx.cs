using BLL;
using DAL;
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
    public partial class ViewProfile1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["MemberID"] == null)
                Response.Redirect("login.aspx");

            MemberLogic ML = new MemberLogic();
            Member objMember = ML.SelectByID(Convert.ToInt32(Request.QueryString["ID"]));
            if (objMember != null)
            {
                lblUserName.Text = objMember.UserName.ToString();
                lblEmail.Text = objMember.Email.ToString();
                lblCounrty.Text = objMember.Address.ToString();
            }

        }
    }
}