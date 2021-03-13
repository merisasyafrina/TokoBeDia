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
    public partial class View_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (Session["UserEmail"] == null)
            {
                btnHome.Visible = true;
                btnInsertP.Visible = false;
                btnUpdateP.Visible = false;
                btnDeleteP.Visible = false;
            }

            if (Session["UserEmail"] != null)
            {
                btnInsertP.Visible = false;
                btnUpdateP.Visible = false;
                btnDeleteP.Visible = false;
                labelID.Visible = false;
                txtID.Visible = false;

                string email = Session["UserEmail"].ToString();
                User user = userRepository.getEmail(email);

                if (user.RoleID == 1)
                {
                    btnInsertP.Visible = true;
                    btnUpdateP.Visible = true;
                    btnDeleteP.Visible = true;
                    labelID.Visible = true;
                    txtID.Visible = true;
                }
            }
            GridView.DataSource = productRepository.getViewProducts();
            GridView.DataBind();
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void btnInsertP_Click(object sender, EventArgs e)
        {
            Response.Redirect("Insert Product.aspx");
        }

        protected void btnUpdateP_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update Product.aspx");
        }

        protected void btnDeleteP_Click(object sender, EventArgs e)
        {
            if (productRepository.getID(int.Parse(txtID.Text)) != null)
            {
                productRepository.deleteProduct(int.Parse(txtID.Text));

                Response.Redirect("View Product.aspx");
            }
            else
            {
                notFound.Visible = true;
            }
        }
    }
}