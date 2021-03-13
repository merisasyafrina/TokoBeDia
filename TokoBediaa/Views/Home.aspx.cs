using TokoBediaa.DataModel;
using TokoBediaa.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TokoBediaa.Views
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserEmail"] == null)    //guest
            {
                btnViewHome.Visible = true;
                btnRegister.Visible = true;
                btnLogin.Visible = true;
                btnViewProd.Visible = true;

                btnProfile.Visible = false;
                btnLogout.Visible = false;
                btnInsertProd.Visible = false;
                btnUpdateProd.Visible = false;
                btnViewPT.Visible = false;
                btnInsertPT.Visible = false;
                btnUpdatePT.Visible = false;
                btnViewUser.Visible = false;
            }
            if (Session["UserEmail"] != null)    //member or admin
            {

                btnViewHome.Visible = true;
                btnProfile.Visible = true;
                btnLogout.Visible = true;
                btnViewProd.Visible = true;

                btnRegister.Visible = false;
                btnLogin.Visible = false;
                btnInsertProd.Visible = false;
                btnUpdateProd.Visible = false;
                btnViewPT.Visible = false;
                btnInsertPT.Visible = false;
                btnUpdatePT.Visible = false;
                btnViewUser.Visible = false;

                string vstrName = Session["UserEmail"].ToString();
                User user = userRepository.getEmail(vstrName);
                visitorName.Text = "Welcome to TokoBeDia, " + user.Name;

                if (user.RoleID == 1)    //roleID admin = 1
                {
                    btnInsertProd.Visible = true;
                    btnUpdateProd.Visible = true;
                    btnViewPT.Visible = true;
                    btnInsertPT.Visible = true;
                    btnUpdatePT.Visible = true;
                    btnViewUser.Visible = true;
                }
            }
            GridView.DataSource = productRepository.getRandProducts();
            GridView.DataBind();
        }
        protected void btnViewHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Session.Remove("user");
            }
            Response.Redirect("Home.aspx");
        }

        protected void btnViewProd_Click(object sender, EventArgs e)
        {
            Response.Redirect("View Product.aspx");
        }

        protected void btnInsertProd_Click(object sender, EventArgs e)
        {
            Response.Redirect("Insert Product.aspx");
        }

        protected void btnUpdateProd_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update Product.aspx");
        }

        protected void btnViewPT_Click(object sender, EventArgs e)
        {
            Response.Redirect("View PT.aspx");
        }

        protected void btnInsertPT_Click(object sender, EventArgs e)
        {
            Response.Redirect("Insert PT.aspx");
        }

        protected void btnUpdatePT_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update PT.aspx");
        }

        protected void btnViewUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("View User.aspx");
        }
    }
}