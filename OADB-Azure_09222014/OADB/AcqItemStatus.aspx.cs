using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OADB
{
    public partial class AcqItemStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var AcqItem = Request.QueryString["AcqItem"];
            lblAcqItem.Text = AcqItem;
            var StageId = Request.QueryString["StageId"];
            if (StageId == "1")
            {
                lblStageName.Text = "Develop SOW/PW/SOO";
            }
            else if (StageId == "2")
            {
                lblStageName.Text = "Conduct Market Research";
            }
        }

    }
}