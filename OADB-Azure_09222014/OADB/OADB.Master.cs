using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OADB
{
    public partial class OADB : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDateNow.Text = DateTime.Today.ToString("MMM dd, yyyy");
        }
    }
}