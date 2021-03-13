using TokoBediaa.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TokoBediaa.Views
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int userID = 1;
            string email = txtEmail.Text;
            string name = txtName.Text;
            string gender = btnGender.Text;

            if (email != null && name != null && gender != null)
            {
                if (userRepository.getEmail(email) != null)
                {
                    userRepository.updateProfile(userID, email, name, gender);
                }
                else
                {
                    notUnique.Visible = true;
                }
            }
            success.Visible = true;
        }

        protected void btnChangePass_Click(object sender, EventArgs e)
        {
            Response.Redirect("Change Password.aspx");
        }
        
    }
}