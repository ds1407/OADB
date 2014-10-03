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
    public partial class ContractLandingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataLayer.DBMethods dblayer = new DataLayer.DBMethods();
            DataSet ds = dblayer.getContractList();

            if (ds != null && ds.Tables.Count > 0)
            {
                gvContractList.DataSource = ds.Tables[0];
                gvContractList.DataBind();
            }
        }

        protected void gvContractList_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            var index = Convert.ToInt32(e.CommandArgument);
            var dataKey = gvContractList.DataKeys[index];
            if (dataKey == null || dataKey.Values == null)
            {
                return;
            }
            var PRId = dataKey.Values["PRId"];
            if (e.CommandName == "CONTRACT")
            {
                Response.Redirect(string.Format("~/ContractProfile.aspx?PRId={0}", PRId.ToString()));
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