using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace OADB
{
    public partial class IAAProfile : System.Web.UI.Page
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
                        pnlIAAWorkFlow1.Visible = false;
                        pnlIAAWorkFlow2.Visible = false;
                        pnlIAAWorkFlow3.Visible = true;
                        pnlIAAWorkFlow4.Visible = false;
                        pnlIAAWorkFlow5.Visible = false;
                        break;
                    case 2:
                        pnlIAAWorkFlow1.Visible = false;
                        pnlIAAWorkFlow2.Visible = true;
                        pnlIAAWorkFlow3.Visible = false;
                        pnlIAAWorkFlow4.Visible = false;
                        pnlIAAWorkFlow5.Visible = false;
                        break;
                    case 3:
                        pnlIAAWorkFlow1.Visible = true;
                        pnlIAAWorkFlow2.Visible = false;
                        pnlIAAWorkFlow3.Visible = false;
                        pnlIAAWorkFlow4.Visible = false;
                        pnlIAAWorkFlow5.Visible = false;
                        break;
                    case 4:
                        pnlIAAWorkFlow1.Visible = false;
                        pnlIAAWorkFlow2.Visible = false;
                        pnlIAAWorkFlow3.Visible = false;
                        pnlIAAWorkFlow4.Visible = true;
                        pnlIAAWorkFlow5.Visible = false;
                        break;
                    case 5:
                        pnlIAAWorkFlow1.Visible = false;
                        pnlIAAWorkFlow2.Visible = false;
                        pnlIAAWorkFlow3.Visible = false;
                        pnlIAAWorkFlow4.Visible = false;
                        pnlIAAWorkFlow5.Visible = true;
                        break;
                    default:
                        pnlIAAWorkFlow1.Visible = true;
                        pnlIAAWorkFlow2.Visible = false;
                        pnlIAAWorkFlow3.Visible = false;
                        pnlIAAWorkFlow4.Visible = false;
                        pnlIAAWorkFlow5.Visible = false;
                        break;
                }
            }
        }

        protected void LoadData(int PRID)
        {
            DataLayer.DBMethods dblayer = new DataLayer.DBMethods();
            DataTable dt = dblayer.getPRIaaRow(PRID);

            if (dt != null && dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                ViewState["IAAID"] = dr["IaaID"].ToString();

                ViewState["CO_EmployeeId"] = dr["CO_EmployeeId"].ToString();
                ViewState["CS_EmployeeId"] = dr["CS_EmployeeId"].ToString();
                ViewState["PM_EmployeeId"] = dr["PM_EmployeeId"].ToString();
                ViewState["COTR_EmployeeId"] = dr["COTR_EmployeeId"].ToString();

                lblPRNumber.Text = string.Format("PR Number: {0}", dr["PRNumber"].ToString());
                IaaNumber.Text = dr["IaaNumber"].ToString();
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
            Server.Transfer("IAALandingPage.aspx", false);
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Server.Transfer(string.Format("~/ContractorProfile.aspx?PRId={0}&ContractId={1}", ViewState["PRID"].ToString(), ViewState["IAAID"].ToString()), false);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer(string.Format("~/TaskOrderModProfile.aspx?PRId={0}&ContractId={1}", ViewState["PRID"].ToString(), ViewState["IAAID"].ToString()), false);
        }

        protected void Button_CO_Click(object sender, EventArgs e)
        {
            Server.Transfer(string.Format("~/AcquisitionProfessionalProfile.aspx?ContractId={0}&EmployeeId={1}&PRID={2}&RoleType=CO", ViewState["IAAID"].ToString(), ViewState["CO_EmployeeId"].ToString(), ViewState["PRID"].ToString()), false);
        }

        protected void Button_CS_Click(object sender, EventArgs e)
        {
            Server.Transfer(string.Format("~/AcquisitionProfessionalProfile.aspx?ContractId={0}&EmployeeId={1}&PRID={2}&RoleType=CS", ViewState["IAAID"].ToString(), ViewState["CS_EmployeeId"].ToString(), ViewState["PRID"].ToString()), false);
        }

        protected void Button_COTR_Click(object sender, EventArgs e)
        {
            Server.Transfer(string.Format("~/AcquisitionProfessionalProfile.aspx?ContractId={0}&EmployeeId={1}&PRID={2}&RoleType=COTR", ViewState["IAAID"].ToString(), ViewState["COTR_EmployeeId"].ToString(), ViewState["PRID"].ToString()), false);
        }

        protected void Button_PM_Click(object sender, EventArgs e)
        {
            Server.Transfer(string.Format("~/AcquisitionProfessionalProfile.aspx?ContractId={0}&EmployeeId={1}&PRID={2}&RoleType=PM", ViewState["IAAID"].ToString(), ViewState["PM_EmployeeId"].ToString(), ViewState["PRID"].ToString()), false);
        }

    }
}