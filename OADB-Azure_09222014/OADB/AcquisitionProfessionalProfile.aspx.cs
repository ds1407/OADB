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
    public partial class AcquisitionProfessionalProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var ContractId = int.Parse(Request.QueryString["ContractId"]);
                var EmployeeId = int.Parse(Request.QueryString["EmployeeId"]);
                var PRId = int.Parse(Request.QueryString["PRId"]);
                var RoleType = Request.QueryString["RoleType"];
                ViewState["ContractId"] = ContractId;
                ViewState["EmployeeId"] = EmployeeId;
                ViewState["PRID"] = PRId;
                ViewState["RoleType"] = RoleType;

                LoadData(ContractId, EmployeeId);

                if (ViewState["RoleType"].ToString().Trim() != string.Empty)
                {
                    RoleName.Text = string.Format("Appointed {0} Name: ", ViewState["RoleType"].ToString().Trim());
                }
            }
        }

        protected void LoadData(int ContractId, int EmployeeId)
        {
            DataLayer.DBMethods dblayer = new DataLayer.DBMethods();
            DataTable dt;
            if (ContractId == 0)
            {
                dt = dblayer.getAcquisitionProfessionalRow(EmployeeId);
            }
            else
            {
                dt = dblayer.getAcquisitionProfessionalRow(ContractId, EmployeeId);
            }

            if (dt != null && dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                Name.Text = dr["Name"].ToString();
                Position_CO.Checked = dr["Position_CO"].ToString() == "True";
                Position_CS.Checked = dr["Position_CS"].ToString() == "True";
                Position_COTR.Checked = dr["Position_COTR"].ToString() == "True";
                Position_PM.Checked = dr["Position_PM"].ToString() == "True";
                Position_OrdOff.Checked = dr["Position_OrdOff"].ToString() == "True";
                Cert_COCS.Checked = dr["Cert_COCS"].ToString() == "True";
                Cert_PM.Checked = dr["Cert_PM"].ToString() == "True";
                Cert_COTR.Checked = dr["Cert_COTR"].ToString() == "True";
                Cert_OrdOff.Checked = dr["Cert_OrdOff"].ToString() == "True";
                JobSeriesTitle.Text = dr["JobSeriesTitle"].ToString();

                // email link
                if (ViewState["PRID"] == null || ViewState["PRID"].ToString() == "0")
                {
                    urlMail.HRef = string.Format("mailto:{0}", dr["email"].ToString());
                }
                else
                {
                    var ContractNum = dr["ContractNumber"].ToString().Trim();
                    urlMail.HRef = string.Format("mailto:{0}?Subject=Contract: {1}&Body=Hello {2}:", dr["email"].ToString(), ContractNum.ToString(), Name.Text);
                }
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx", false);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (ViewState["PRID"] == null || ViewState["PRID"].ToString() == "0")
            {
                Server.Transfer("~/AcqProfLandingPage.aspx", false);
            }
            else
            {
                Server.Transfer(string.Format("~/ContractProfile.aspx?PRId={0}", ViewState["PRID"].ToString()), false);
            }
        }


    }
}