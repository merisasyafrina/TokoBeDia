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
    public partial class Change_Password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChangePass_Click(object sender, EventArgs e)
        {
            string oldPass = txtOld.Text;
            string newPass = txtNew.Text;

            DatabaseEntities2 db = new DatabaseEntities2();
            var change = (from x in db.Users where x.Password == oldPass select x).FirstOrDefault();

            if(change == null)
            {
                old.Visible = true;
            }

            if(newPass.Length > 5)
            {
                change.Password = newPass;
                db.SaveChanges();

                success.Visible = true;
            }else
            {
                newVal.Visible = true;
            }
        }
        
    }
}