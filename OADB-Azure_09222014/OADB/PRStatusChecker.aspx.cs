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
    public partial class PRStatusChecker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btSearch_Click(object sender, EventArgs e)
        {
            lblErrorMessage.Text = string.Empty;

            if (txtPRNumberToFind.Text.Trim() == string.Empty)
            {
                lblErrorMessage.Text = "Enter a PR Number!";
                return;
            }

            DataLayer.DBMethods dblayer = new DataLayer.DBMethods();
            DataTable dt = dblayer.getPRRow(txtPRNumberToFind.Text);

            if (dt != null && dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                txtPRNumber.Text = dr["PRNumber"].ToString();
                txtOAStatus.Text = dr["OAStatus"].ToString();
                txtOADiv.Text = dr["OAAssignedTo"].ToString();
                txtCOName.Text = dr["COName"].ToString();
                txtCOPhone.Text = dr["CPPhoneNumber"].ToString();
                txtCSName.Text = dr["CSName"].ToString();
                txtCSPhone.Text = dr["CSPhoneNumber"].ToString();
                AcqPlan.Checked = dr["AcqPlan"].ToString() == "True";
                TSABuyIT.Checked = dr["TSABuyIT"].ToString() == "True";
                DHSBuyIT.Checked = dr["DHSBuyIT"].ToString() == "True";
                COTRRequired.Checked = dr["COTRRequired"].ToString() == "True";
                AcqPlanVersionDate.Text = dblayer.getDBDate(dr["AcqPlanVersionDate"]);
                ApprPRReceivedbyOA.Text = dblayer.getDBDate(dr["ApprPRReceivedbyOA"]);
                SOWAccepted.Text = dblayer.getDBDate(dr["SOWAccepted"]);
                MRAccepted.Text = dblayer.getDBDate(dr["MRAccepted"]);
                IGCEAccepted.Text = dblayer.getDBDate(dr["IGCEAccepted"]);
                EvalFactorsAccepted.Text = dblayer.getDBDate(dr["EvalFactorsAccepted"]);
                SMBApproved.Text = dblayer.getDBDate(dr["SMBApproved"]);
                TSABuyITDate.Text = dblayer.getDBDate(dr["TSABuyITDate"]);
                DHSBuyITDate.Text = dblayer.getDBDate(dr["DHSBuyITDate"]);
                PRPackageCompleteDate.Text = dblayer.getDBDate(dr["PRPackageCompleteDate"]);
                COTRNomineeName.Text = dr["COTRNomineeName"].ToString();

                IndustryDay.Checked = dr["IndustryDay"].ToString() == "True";
                RFPRFQIssue.Checked = dr["RFPRFQIssue"].ToString() == "True";
                PropQuoteDue.Checked = dr["PropQuoteDue"].ToString() == "True";
                EvalComplete.Checked = dr["EvalComplete"].ToString() == "True";
                NegotComplete.Checked = dr["NegotComplete"].ToString() == "True";
                PreAwardReview.Checked = dr["PreAwardReview"].ToString() == "True";
                ContractAward.Checked = dr["ContractAward"].ToString() == "True";

                IndustryDayPlannedDate.Text = dblayer.getDBDate(dr["IndustryDayPlannedDate"]);
                RFPRFQIssuePlannedDate.Text = dblayer.getDBDate(dr["RFPRFQIssuePlannedDate"]);
                PropQuoteDuePlannedDate.Text = dblayer.getDBDate(dr["PropQuoteDuePlannedDate"]);
                EvalCompletePlannedDate.Text = dblayer.getDBDate(dr["EvalCompletePlannedDate"]);
                NegotCompletePlannedDate.Text = dblayer.getDBDate(dr["NegotCompletePlannedDate"]);
                PreAwardReviewPlannedDate.Text = dblayer.getDBDate(dr["PreAwardReviewPlannedDate"]);

                IndustryDayActualDate.Text = dblayer.getDBDate(dr["IndustryDayActualDate"]);
                RFPRFQIssueActualDate.Text = dblayer.getDBDate(dr["RFPRFQIssueActualDate"]);
                PropQuoteDueActualDate.Text = dblayer.getDBDate(dr["PropQuoteDueActualDate"]);
                EvalCompleteActualDate.Text = dblayer.getDBDate(dr["EvalCompleteActualDate"]);
                NegotCompleteActualDate.Text = dblayer.getDBDate(dr["NegotCompleteActualDate"]);
                PreAwardReviewActualDate.Text = dblayer.getDBDate(dr["PreAwardReviewActualDate"]);
                ContractAwardActualDate.Text = dblayer.getDBDate(dr["ContractAwardActualDate"]);
            }
            else
            {
                lblErrorMessage.Text = "PR Number not found.";
                return;
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