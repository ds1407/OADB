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
    public partial class PRProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var PRId = int.Parse(Request.QueryString["PRId"]);
                LoadData(PRId);
                ViewState["PRID"] = PRId;

                switch (PRId)
                {
                    case 1:
                        pnlPR1WorkFlow1.Visible = false;
                        pnlPR1WorkFlow2.Visible = false;
                        pnlPR1WorkFlow3.Visible = true;
                        pnlPR1WorkFlow4.Visible = false;
                        pnlPR1WorkFlow5.Visible = false;
                        break;
                    case 2:
                        pnlPR1WorkFlow1.Visible = false;
                        pnlPR1WorkFlow2.Visible = true;
                        pnlPR1WorkFlow3.Visible = false;
                        pnlPR1WorkFlow4.Visible = false;
                        pnlPR1WorkFlow5.Visible = false;
                        break;
                    case 3:
                        pnlPR1WorkFlow1.Visible = true;
                        pnlPR1WorkFlow2.Visible = false;
                        pnlPR1WorkFlow3.Visible = false;
                        pnlPR1WorkFlow4.Visible = false;
                        pnlPR1WorkFlow5.Visible = false;
                        break;
                    case 4:
                        pnlPR1WorkFlow1.Visible = false;
                        pnlPR1WorkFlow2.Visible = false;
                        pnlPR1WorkFlow3.Visible = false;
                        pnlPR1WorkFlow4.Visible = true;
                        pnlPR1WorkFlow5.Visible = false;
                        break;
                    case 5:
                        pnlPR1WorkFlow1.Visible = false;
                        pnlPR1WorkFlow2.Visible = false;
                        pnlPR1WorkFlow3.Visible = false;
                        pnlPR1WorkFlow4.Visible = false;
                        pnlPR1WorkFlow5.Visible = true;
                        break;
                    default:
                        pnlPR1WorkFlow1.Visible = true;
                        pnlPR1WorkFlow2.Visible = false;
                        pnlPR1WorkFlow3.Visible = false;
                        pnlPR1WorkFlow4.Visible = false;
                        pnlPR1WorkFlow5.Visible = false;
                        break;
                }
            }
        }

        protected void LoadData(int PRID)
        {
            DataLayer.DBMethods dblayer = new DataLayer.DBMethods();
            DataTable dt = dblayer.getPRRow(PRID);

            if (dt != null && dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                PRNumber.Text = dr["PRNumber"].ToString();
                OAStatus.Text = dr["OAStatus"].ToString();
                OAAssignedTo.Text = dr["OAAssignedTo"].ToString();
                ActionDate.Text = dblayer.getDBDate(dr["ActionDate"]);
                NotificationLeadTime.Text = dr["NotificationLeadTime"].ToString();
                NotificationNote.Text = dr["NotificationNote"].ToString();
                ReqOffInfo.Text = dr["ReqOffInfo"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx", false);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("PRLandingPage.aspx", false);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect(string.Format("~/ContractProfile.aspx?PRId={0}", ViewState["PRID"].ToString()));
        } 
    }
}