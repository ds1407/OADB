using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OADB
{
    public partial class InitializeHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx", false);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx", false);
        }

        protected void btnCreateNew_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/CreateAcquisitionItem.aspx", false);
        }

        protected void btnViewAcquisition_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/ViewAcquisitionItem.aspx", false);
        }
    }
}