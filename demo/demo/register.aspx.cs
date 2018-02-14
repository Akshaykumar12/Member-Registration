using System;
using BLL;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Member objMember = new Member();
            objMember.FirstName = firstName.Text;
            objMember.LastName = lastName.Text;
            objMember.UserName = username.Text;
            objMember.Password = password.Text;
            objMember.Email = email.Text;
            objMember.Address = address.Text + "," + address2.Text;
            objMember.City = city.Text;
            objMember.Country = DDLCountry.SelectedItem.Text;
            objMember.State = state.Text;
            objMember.ZIP = zip.Text;
            MemberLogic ML = new MemberLogic();
            ML.Insert(objMember);

            Response.Redirect("loginForm.aspx");
        }
    }
}