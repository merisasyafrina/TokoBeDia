using TokoBediaa.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TokoBediaa.Views
{
    public partial class Update_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView.DataSource = productRepository.getViewProducts();
            GridView.DataBind();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int prodID = int.Parse(txtID.Text);
            int PTID = int.Parse(txtPTID.Text);
            string prodName = txtName.Text;
            int prodPrice = int.Parse(txtPrice.Text);
            int prodStock = int.Parse(txtStock.Text);
            
            if(prodName != null && prodPrice != null && prodStock != null)
            {
                if(int.Parse(txtPrice.Text) < 1000)
                {
                    price.Visible = true;
                }else if(int.Parse(txtStock.Text) < 1)
                {
                    stock.Visible = true;
                }else
                {
                    productRepository.updateProduct(prodID, PTID, prodName, prodPrice, prodStock);
                }
                
            }
            Response.Redirect("Update Product.aspx");
        }
        
    }
}