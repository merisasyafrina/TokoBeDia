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
    public partial class InsertProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView.DataSource = PTRepository.getViewPT();
            GridView.DataBind();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            int prodID = 1;
            int PTID = int.Parse(txtPTID.Text);
            string prodName = txtName.Text;
            int prodPrice = int.Parse(txtPrice.Text);
            int prodStock = int.Parse(txtStock.Text);

            if(PTRepository.getID(int.Parse(txtPTID.Text)) != null)
            {
                if (int.Parse(txtPrice.Text) < 1000)
                {
                    price.Visible = true;
                }
                else if (int.Parse(txtStock.Text) < 1)
                {
                    stock.Visible = true;
                }
                else
                {
                    productRepository.updateProduct(prodID, PTID, prodName, prodPrice, prodStock);
                }
            }
            else
            {
                notFound.Visible = true;
            }
            
        }
        
    }
}