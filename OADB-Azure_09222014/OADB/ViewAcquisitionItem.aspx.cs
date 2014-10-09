using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OADB
{
    public partial class ViewAcquisitionItem : System.Web.UI.Page
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
            Server.Transfer("InitializeHome.aspx", false);
        }

        protected void gvAcqList_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            var index = Convert.ToInt32(e.CommandArgument);
            var dataKey = gvAcqList.DataKeys[index];
            if (dataKey == null || dataKey.Values == null)
            {
                return;
            }
            var ACQId = dataKey.Values["AcqId"];
            var ACQItem = dataKey.Values["AcqItem"];
            if (e.CommandName == "ACQITEM")
            {
                Response.Redirect(string.Format("~/AcqItemDetail.aspx?AcqId={0}&AcqItem={1}", ACQId.ToString(),ACQItem.ToString()));
            }
        }


    }
}

