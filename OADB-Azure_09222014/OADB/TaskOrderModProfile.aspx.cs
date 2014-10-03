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
    public partial class TaskOrderModProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var ContractId = int.Parse(Request.QueryString["CONTRACTID"]);
                var PRId = int.Parse(Request.QueryString["PRId"]);
                ViewState["CONTRACTID"] = ContractId;
                ViewState["PRID"] = PRId;
                LoadData(ContractId);
            }
        }

        protected void LoadData(int ContractId)
        {
            DataLayer.DBMethods dblayer = new DataLayer.DBMethods();
            DataTable dt = dblayer.getTaskOrderRow(ContractId);

            if (dt != null && dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                ModificationNumber.Text = dr["ModificationNumber"].ToString();
                CO.Text = dr["CO"].ToString();
                ContractOrderNumber.Text = dr["ContractOrderNumber"].ToString();
                CS.Text = dr["CS"].ToString();
                ObligatedAmtOfMod.Text = dr["ObligatedAmtOfMod"].ToString();
                COTR.Text = dr["COTR"].ToString();
                EffectiveDate.Text = dblayer.getDBDate(dr["EffectiveDate"]);
                ModDesc.Text = dr["ModDesc"].ToString();
            }

            // update Contract and PR info
            DataTable dt1 = dblayer.getPRContractRow(ContractId, int.Parse(ViewState["PRID"].ToString()));
            if (dt1 != null && dt1.Rows.Count > 0)
            {
                DataRow dr1 = dt1.Rows[0];
                lblContractInfo.Text = string.Format("PR Number: {0}, Contract Number: {1}<br /><br />", dr1["PRNumber"].ToString(), dr1["ContractNumber"].ToString());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx", false);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer(string.Format("~/ContractProfile.aspx?PRId={0}", ViewState["PRID"].ToString()), false);
        }

        protected void btnCloseinvoice_Click(object sender, EventArgs e)
        {
            Button1.Visible = true;
            Button2.Visible = true;
            pnlInvoices.Visible = false;
            tblTaskOrder.Visible = true;
        }

        protected void btnViewInvoices_Click(object sender, EventArgs e)
        {
            Button1.Visible = false;
            Button2.Visible = false;
            tblTaskOrder.Visible = false;
            pnlInvoices.Visible = true;
        }

    }
}