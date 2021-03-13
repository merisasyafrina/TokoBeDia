using TokoBediaa.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TokoBediaa.DataModel;

namespace TokoBediaa.Views
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack && Request.Cookies["UserEmail"] != null)
            {
                txtEmail.Text = Request.Cookies["UserEmail"].Value.ToString();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            User account = userRepository.getLogin(txtEmail.Text, txtPassword.Text);
            
            if(account != null)
            {
                Session["UserName"] = account.Name;
                Session["UserGender"] = account.Gender;
                if(account.Status != "Blocked")
                {
                    Session["UserEmail"] = txtEmail.Text;
                    Session.Timeout = 60;

                    if (rememberMe.Checked)
                    {
                        Response.Cookies["UserEmail"].Value = txtEmail.Text;
                    }
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    blocked.Visible = true;
                }
            }
            Response.Redirect("Home.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}