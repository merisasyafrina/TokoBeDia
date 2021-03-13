using TokoBediaa.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TokoBediaa.Views
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            int roleID = 2;
            string email = txtEmail.Text;
            string name = txtName.Text;
            string password = txtPassword.Text;
            string gender = btnGender.Text;
            string status = "active";

            if(email != null && name != null && password != null && gender != null)
            {
                if(userRepository.getEmail(email) == null)
                {
                    userRepository.registerUser(roleID, email, name, password, gender, status);
                }else
                {
                    notUnique.Visible = true;
                }
            }
            Response.Redirect("Login.aspx");
        }
    }
}