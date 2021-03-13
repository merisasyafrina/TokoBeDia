using TokoBediaa.Repository;
using TokoBediaa.Factory;
using TokoBediaa.DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TokoBediaa.Views
{
    public partial class Insert_PT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsertPT_Click(object sender, EventArgs e)
        {
            int PTID = 1;
            string PTName = txtName.Text;
            string PTDesc = txtDesc.Text;

            if(PTName.Length > 5 && PTRepository.getName(PTName) == null)
            {
                PTRepository.createProductType(PTID, PTName, PTDesc);

                success.Visible = true;

                txtName.Text = txtDesc.Text = "";
            }else
            {
                txtNameLen.Visible = true;
            }
        }
        
    }
}