using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace OADB
{
    public partial class Drawdown : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataLayer.DBMethods dblayer = new DataLayer.DBMethods();
            DataSet dsPR = dblayer.getPRDrawDownAmts();

            if (dsPR != null && dsPR.Tables.Count > 0)
            {
                gvDrawdownList.DataSource = dsPR.Tables[0];
                gvDrawdownList.DataBind();
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