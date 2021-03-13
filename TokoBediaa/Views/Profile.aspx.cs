using TokoBediaa.DataModel;
using TokoBediaa.Factory;
using TokoBediaa.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TokoBediaa.Views
{
    public partial class Profile1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserEmail"] != null)
            {
                txtEmail.Text = Session["UserEmail"].ToString();
                txtName.Text = Session["USerName"].ToString();
                txtGender.Text = Session["UserGender"].ToString();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update Profile.aspx");
        }
    }
}