using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SL_JEWELLERY
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButtonInsert_Click(object sender, EventArgs e)
        {
            ProductDataSource.InsertParameters["ProductStock"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("Txtpdctstock")).Text;
            ProductDataSource.InsertParameters["ProductName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox4")).Text;
            ProductDataSource.InsertParameters["ProductPrice"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextProductPrice")).Text;
            ProductDataSource.Insert();
        }
    }
}