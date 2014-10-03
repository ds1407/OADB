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
    public partial class ContractProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var PRId = int.Parse(Request.QueryString["PRId"]);
                LoadData(PRId);
                ViewState["PRID"] = PRId;
            }
        }

        protected void LoadData(int PRID)
        {
            DataLayer.DBMethods dblayer = new DataLayer.DBMethods();
            DataTable dt = dblayer.getPRContractRow(PRID);

            if (dt != null && dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                ViewState["CONTRACTID"] = dr["ContractId"].ToString();

                ViewState["CO_EmployeeId"] = dr["CO_EmployeeId"].ToString();
                ViewState["CS_EmployeeId"] = dr["CS_EmployeeId"].ToString();
                ViewState["PM_EmployeeId"] = dr["PM_EmployeeId"].ToString();
                ViewState["COTR_EmployeeId"] = dr["COTR_EmployeeId"].ToString();

                lblPRNumber.Text = string.Format("PR Number: {0}", dr["PRNumber"].ToString());
                ContractNumber.Text = dr["ContractNumber"].ToString();
                OrderNumber.Text = dr["OrderNumber"].ToString();
                ActionDate.Text = dblayer.getDBDate(dr["ActionDate"]);
                NotificationLeadTime.Text = dr["NotificationLeadTime"].ToString();
                NotificationNote.Text = dr["NotificationNote"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx", false);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer(string.Format("~/PRProfile.aspx?PRId={0}", ViewState["PRID"].ToString()), false);
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Server.Transfer(string.Format("~/ContractorProfile.aspx?PRId={0}&ContractId={1}", ViewState["PRID"].ToString(), ViewState["CONTRACTID"].ToString()), false);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer(string.Format("~/TaskOrderModProfile.aspx?PRId={0}&ContractId={1}", ViewState["PRID"].ToString(), ViewState["CONTRACTID"].ToString()), false);
        }

        protected void Button_CO_Click(object sender, EventArgs e)
        {
            Server.Transfer(string.Format("~/AcquisitionProfessionalProfile.aspx?ContractId={0}&EmployeeId={1}&PRID={2}&RoleType=CO", ViewState["CONTRACTID"].ToString(), ViewState["CO_EmployeeId"].ToString(), ViewState["PRID"].ToString()), false);
        }

        protected void Button_CS_Click(object sender, EventArgs e)
        {
            Server.Transfer(string.Format("~/AcquisitionProfessionalProfile.aspx?ContractId={0}&EmployeeId={1}&PRID={2}&RoleType=CS", ViewState["CONTRACTID"].ToString(), ViewState["CS_EmployeeId"].ToString(), ViewState["PRID"].ToString()), false);
        }

        protected void Button_COTR_Click(object sender, EventArgs e)
        {
            Server.Transfer(string.Format("~/AcquisitionProfessionalProfile.aspx?ContractId={0}&EmployeeId={1}&PRID={2}&RoleType=COTR", ViewState["CONTRACTID"].ToString(), ViewState["COTR_EmployeeId"].ToString(), ViewState["PRID"].ToString()), false);
        }

        protected void Button_PM_Click(object sender, EventArgs e)
        {
            Server.Transfer(string.Format("~/AcquisitionProfessionalProfile.aspx?ContractId={0}&EmployeeId={1}&PRID={2}&RoleType=PM", ViewState["CONTRACTID"].ToString(), ViewState["PM_EmployeeId"].ToString(), ViewState["PRID"].ToString()), false);
        }

    }
}
