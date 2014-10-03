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
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                HideAll();
            }
        }

        protected void HideAll()
        {
            tblAdHoc.Visible = false;
            tblByOffice.Visible = false;
            tblByStatus.Visible = false;
            tblTopContracts.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx", false);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx", false);
        }

        protected void lnkAdHocReports_Click(object sender, EventArgs e)
        {
            HideAll();
            tblAdHoc.Visible = true;
            gvAdHocReport.DataSource = new string[] { };
            gvAdHocReport.DataBind();
        }

        protected void lnkFYPRsBYOffice_Click(object sender, EventArgs e)
        {
            HideAll();
            tblByOffice.Visible = true;
            DataLayer.DBMethods dblayer = new DataLayer.DBMethods();
            DataTable dt = dblayer.getPRsBYOffice();

            if (dt != null && dt.Rows.Count > 0)
            {
                gvByOffice.DataSource = dt;
                gvByOffice.DataBind();
            }
        }

        protected void lnkStatusofFYPRs_Click(object sender, EventArgs e)
        {
            HideAll();
            tblByStatus.Visible = true;
        }

        protected void TopActiveContracts_Click(object sender, EventArgs e)
        {
            HideAll();
            tblTopContracts.Visible = true;
        }


    }
}