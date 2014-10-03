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
    public partial class ContractorProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var ContractId = int.Parse(Request.QueryString["CONTRACTID"]);
                var PRId = int.Parse(Request.QueryString["PRId"]);
                ViewState["PRID"] = PRId;
                LoadData(ContractId);
                ViewState["CONTRACTID"] = ContractId;
            }
        }

        protected void LoadData(int ContractId)
        {
            DataLayer.DBMethods dblayer = new DataLayer.DBMethods();
            DataTable dt = dblayer.getPRContractorRow(ContractId);

            if (dt != null && dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                
                ContractorName.Text = dr["ContractorName"].ToString();
                StreetAddress.Text = dr["StreetAddress"].ToString();
                City.Text = dr["City"].ToString();
                State.Text = dr["State"].ToString();
                ZIPCode.Text = dr["ZIPCode"].ToString();
                Phone.Text = dr["Phone"].ToString();
                Email.Text = dr["Email"].ToString();
                POCName.Text = dr["POCName"].ToString();
                POCPhone.Text = dr["POCPhone"].ToString();
                POCEmail.Text = dr["POCEmail"].ToString();
                DUNS.Text = dr["DUNS"].ToString();
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


    }
}