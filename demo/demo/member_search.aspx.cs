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
    public partial class member_search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["MemberID"] == null)
                Response.Redirect("login.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MemberLogic ML = new MemberLogic();
            DataTable dt = ML.Search(txtSearch.Text);
            
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}