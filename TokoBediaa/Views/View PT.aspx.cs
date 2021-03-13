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
    public partial class View_PT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserEmail"] == null)
            {
                btnHome.Visible = true;
               // btnInsertPT.Visible = false;
               // btnUpdatePT.Visible = false;
                //btnDeletePT.Visible = false;
                btnInsertPT.Visible = true;
                btnUpdatePT.Visible = true;
                btnDeletePT.Visible = true;
                labelID.Visible = true;
                txtID.Visible = true;
            }

            if (Session["UserEmail"] != null)
            {
                btnInsertPT.Visible = false;
                btnUpdatePT.Visible = false;
                btnDeletePT.Visible = false;
                labelID.Visible = false;
                txtID.Visible = false;

                string email = Session["UserEmail"].ToString();
                User user = userRepository.getEmail(email);

                if (user.RoleID == 1)
                {
                    btnInsertPT.Visible = true;
                    btnUpdatePT.Visible = true;
                    btnDeletePT.Visible = true;
                    labelID.Visible = true;
                    txtID.Visible = true;
                }
            }
            GridView.DataSource = PTRepository.getViewPT();
            GridView.DataBind();
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void btnInsertPT_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Insert PT.aspx");
        }

        protected void btnUpdatePT_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Update PT.aspx");
        }

        protected void btnDeletePT_Click1(object sender, EventArgs e)
        {
            if (PTRepository.getID(int.Parse(txtID.Text)) != null)
            {
                PTRepository.deleteProductType(int.Parse(txtID.Text));

                Response.Redirect("View PT.aspx");
            }
            else
            {
                notFound.Visible = true;
            }
        }
        
    }
}