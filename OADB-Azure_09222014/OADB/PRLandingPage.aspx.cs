using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using DataLayer;

namespace OADB
{
    public partial class PRLandingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataLayer.DBMethods dblayer = new DataLayer.DBMethods();
            DataSet dsPR = dblayer.getPRList();

            if (dsPR != null && dsPR.Tables.Count > 0)
            {
                gvPRList.DataSource = dsPR.Tables[0];
                gvPRList.DataBind();
            }
        }

        protected void gvPRList_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            var index = Convert.ToInt32(e.CommandArgument);
            var dataKey = gvPRList.DataKeys[index];
            if (dataKey == null || dataKey.Values == null)
            {
                return;
            }
            var PRId = dataKey.Values["PRId"];
            if (e.CommandName == "PRPROFILE") 
            {
                Response.Redirect(string.Format("~/PRProfile.aspx?PRId={0}", PRId.ToString()));
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx", false);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx", false);
        }

    }
}