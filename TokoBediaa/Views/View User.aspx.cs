using TokoBediaa.Repository;
using TokoBediaa.DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TokoBediaa.Views
{
    public partial class View_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView.DataSource = userRepository.getAllUsers();
            GridView.DataBind();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int userID = int.Parse(txtID.Text);
            string userStatus = txtStatus.Text;

            if(txtID.Text != null && txtStatus.Text != null)
            {
                userRepository.updateStatus(userID, userStatus);
            }else if(txtID.Text == "")
            {
                fillID.Visible = true;
            }else if(txtStatus.Text == "")
            {
                fillStatus.Visible = true;
            }
            Response.Redirect("View User.aspx");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}