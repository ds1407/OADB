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
    public partial class AcqProfLandingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataLayer.DBMethods dblayer = new DataLayer.DBMethods();
            DataSet ds = dblayer.getAcquisitionProfessionalList();

            if (ds != null && ds.Tables.Count > 0)
            {
                gvAcqProfList.DataSource = ds.Tables[0];
                gvAcqProfList.DataBind();
            }
        }

        protected void gvAcqProfList_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            var index = Convert.ToInt32(e.CommandArgument);
            var dataKey = gvAcqProfList.DataKeys[index];
            if (dataKey == null || dataKey.Values == null)
            {
                return;
            }
            var EmployeeId = dataKey.Values["EmployeeId"];
            if (e.CommandName == "PROFILE")
            {
                Server.Transfer(string.Format("~/AcquisitionProfessionalProfile.aspx?EmployeeId={0}&ContractId=0&PRId=0&RoleType=", EmployeeId.ToString()), false);
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