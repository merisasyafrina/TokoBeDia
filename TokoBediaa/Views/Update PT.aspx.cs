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
    public partial class Update_PT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView.DataSource = PTRepository.getViewPT();
            GridView.DataBind();
        }

        protected void btnUpdatePT_Click(object sender, EventArgs e)
        {
            int PTID = 1;
            string PTName = txtName.Text;
            string PTDesc = txtDesc.Text;

            if (PTName != null && PTDesc != null)
            {
                if (PTName.Length > 5)
                {
                    if (PTRepository.getName(PTName) != null)
                    {
                        alrExists.Visible = true;
                    }else
                    {
                        PTRepository.updateProductType(PTID, PTName, PTDesc);

                        txtName.Text = txtDesc.Text = "";

                        Response.Redirect("Update PT.aspx");
                    }
                    
                }else
                {
                    txtNameLen.Visible = true;
                }
            }
            
        }
    }
}