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
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["MemberID"] == null)
                Response.Redirect("login.aspx");

            if (!IsPostBack)
            {
                MemberLogic ML = new MemberLogic();
                Member objMember = ML.SelectByID((int)Session["MemberID"]);
                if(objMember!= null)
                {
                    txtUserName.Text = objMember.UserName.ToString();
                    txtEmail.Text = objMember.Email.ToString();
                    txtAddress.Text = objMember.Address.ToString();
                }
            }

        }

        protected void BtnEdit_Click(object sender, EventArgs e)
        {
            MemberLogic ML = new MemberLogic();
            Member objMember = ML.SelectByID((int)Session["MemberID"]);
            objMember.UserName = txtUserName.Text;
            objMember.Email = txtEmail.Text;
            objMember.Address = txtAddress.Text;

            ML.Update(objMember);

        }

       
    }
}