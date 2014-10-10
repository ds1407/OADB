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
                        pnlIAAWorkFlow0.Visible = true;
                        pnlIAAWorkFlow1.Visible = false;
                        
                        break;
                   
                    default:
                        pnlIAAWorkFlow0.Visible = false;
                        pnlIAAWorkFlow1.Visible = true;
                        
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

        protected void btnIAAInitialization_Click(object sender, EventArgs e)
        {
            lblCurentPhase.Text = "<b> Phase:</b> Initialization";
            lblWorkFlowDate.Text = "<b>Date:</b> 4/1/14";
            lblWorkFlowPOC.Text = "<b>POC:</b> Jon Mchenry ";
        }

        protected void btnIAAWorkflowReview_Click(object sender, EventArgs e)
        {
            lblCurentPhase.Text = "<b>Current Phase:</b> Receiving Agency Accepts the IAA";
            lblWorkFlowDate.Text = "<b>Date:</b> 8/1/14";
            lblWorkFlowPOC.Text = "<b>POC:</b> Lori Mendes ";
        }

        protected void btnIAAWorkflowAcq_Click(object sender, EventArgs e)
        {
            lblCurentPhase.Text = "<b>Phase:</b> CO/CS Finalize Acq. Strategy w/ Mission";
            lblWorkFlowDate.Text = "<b>Date:</b> N/A";
            lblWorkFlowPOC.Text = "<b>POC:</b> Not Assigned ";
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

        protected void btnIAAWorkFlowPrepare_Click(object sender, ImageClickEventArgs e)
        {
            lblCurentPhase.Text = "<b>Phase:</b> CO/CS Prepares IAA Documents";
            lblWorkFlowDate.Text = "<b>Date:</b> N/A";
            lblWorkFlowPOC.Text = "<b>POC:</b> Not Assigned ";
        }

        protected void btnIAAWorkReceiveDocs_Click(object sender, ImageClickEventArgs e)
        {
            lblCurentPhase.Text = "<b>Phase:</b> IAA Docs sent to Receiving Agency";
            lblWorkFlowDate.Text = "<b>Date:</b> N/A";
            lblWorkFlowPOC.Text = "<b>POC:</b> Not Assigned ";
        }

        protected void btnIAAWorkAccept_Click(object sender, ImageClickEventArgs e)
        {
            lblCurentPhase.Text = "<b>Phase:</b> Receiving Agency Accepts the IAA";
            lblWorkFlowDate.Text = "<b>Date:</b> N/A";
            lblWorkFlowPOC.Text = "<b>POC:</b> Not Assigned ";
        }

        protected void btnIAAInitialization1_Click(object sender, ImageClickEventArgs e)
        {
            lblCurentPhase.Text = "<b> Phase:</b> Initialization";
            lblWorkFlowDate.Text = "<b>Date:</b> 2/11/14";
            lblWorkFlowPOC.Text = "<b>POC:</b> Janet Shale ";
        }

        protected void btnIAAWorkflowReview1_Click(object sender, ImageClickEventArgs e)
        {
            lblCurentPhase.Text = "<b>Phase:</b> CO/CS Finalize Acq. Strategy w/ Mission";
            lblWorkFlowDate.Text = "<b>Date:</b> 3/5/14";
            lblWorkFlowPOC.Text = "<b>POC:</b> Adam Jones";
        }

        
        protected void btnIAAWorkFlowPrepare1_Click(object sender, ImageClickEventArgs e)
        {
            lblCurentPhase.Text = "<b>Phase:</b> CO/CS Prepares IAA Documents";
            lblWorkFlowDate.Text = "<b>Date:</b> 8/6/14";
            lblWorkFlowPOC.Text = "<b>POC:</b> Su Hu ";
        }

        protected void btnIAAWorkReceiveDocs1_Click(object sender, ImageClickEventArgs e)
        {
            lblCurentPhase.Text = "<b>Phase:</b> IAA Docs sent to Receiving Agency";
            lblWorkFlowDate.Text = "<b>Date:</b> 10/12/14";
            lblWorkFlowPOC.Text = "<b>POC:</b> Gary Rogers ";
        }

        protected void btnIAAWorkAccept1_Click(object sender, ImageClickEventArgs e)
        {
            lblCurentPhase.Text = "<b>Current Phase:</b> Receiving Agency Accepts the IAA";
            lblWorkFlowDate.Text = "<b>Date:</b> 12/11/14";
            lblWorkFlowPOC.Text = "<b>POC:</b> Roy Black ";
        }
        protected void btnIAAWorkflowAcq1_Click(object sender, EventArgs e)
        {
            lblCurentPhase.Text = "<b>Phase:</b> CO/CS Finalize Acq. Strategy w/ Mission";
            lblWorkFlowDate.Text = "<b>Date:</b> 7/9/14";
            lblWorkFlowPOC.Text = "<b>POC:</b> Sherryl King ";
        }

    }
}