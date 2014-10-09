using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OADB
{
    public partial class AcqItemDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var AcqId = int.Parse(Request.QueryString["AcqId"]);
                var AcqItem = Request.QueryString["AcqItem"];
                ViewState["ACQID"] = AcqId;
                ViewState["ACQITEM"] = AcqItem;
                lblAcqItem.Text = AcqItem;

                ImageButton1.Attributes.Add("onclick", "return window.open('AcqItemStatus.aspx?acqitem=" + AcqItem + "&StageId=1','','height=500,width=850,menubar=yes,status=no,toolbar=no,scrollbars=yes,resizable=yes,left=50,top=50');");
                ImageButton2.Attributes.Add("onclick", "return window.open('AcqItemStatus.aspx?acqitem=" + AcqItem + "&StageId=2','','height=500,width=850,menubar=yes,status=no,toolbar=no,scrollbars=yes,resizable=yes,left=50,top=50');");
                ImageButton3.Attributes.Add("onclick", "return window.open('prpackage.aspx?acqitem=" + AcqItem + "&StageId=3','','height=500,width=850,menubar=yes,status=no,toolbar=no,scrollbars=yes,resizable=yes,left=50,top=50');");

                urlMail.HRef = string.Format("mailto:{0}?Subject=Acquisition Item Number: {1}&Body=Please review acquisition item {1}.", "amyshah@deloitte.com", AcqItem);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx", false);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/ViewAcquisitionItem.aspx", false);
        }

    }
}

