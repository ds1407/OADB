using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Common;
using DataLayer;

namespace DataLayer
{
    public class DBMethods : DataAccess
    {
        public string getDBDate(object dtIn)
        {
            DateTime dtDate;
            return DateTime.TryParse(dtIn.ToString(), out dtDate) ? dtDate.ToString("d") : string.Empty;
        }


        public DataSet getPRList()
        {
            DbCommand dbc = DB.GetSqlStringCommand("select * from PR");
            DataSet ds = GetData(dbc);

            if (ds != null && ds.Tables.Count > 0)
                return ds;
            else
                return null;
        }

        public DataSet getContractList()
        {
            DbCommand dbc = DB.GetSqlStringCommand("select * from [dbo].[PRContract] order by [ContractNumber];");
            DataSet ds = GetData(dbc);

            if (ds != null && ds.Tables.Count > 0)
                return ds;
            else
                return null;
        }

        public DataSet getIaaList()
        {
            DbCommand dbc = DB.GetSqlStringCommand("select * from [dbo].[PRIaa] order by [IaaNumber];");
            DataSet ds = GetData(dbc);

            if (ds != null && ds.Tables.Count > 0)
                return ds;
            else
                return null;
        }

        public DataSet getAcquisitionProfessionalList()
        {
            DbCommand dbc = DB.GetSqlStringCommand("select * from [dbo].[AcquisitionProfessional] order by [Name];");
            DataSet ds = GetData(dbc);

            if (ds != null && ds.Tables.Count > 0)
                return ds;
            else
                return null;

        }

        public DataTable getPRRow(string PRNumber)
        {
            var sql = string.Format("select top 1 * from PR where PRNumber = '{0}';", PRNumber.Trim());
            DbCommand dbc = DB.GetSqlStringCommand(sql);
            DataSet ds = GetData(dbc);

            if (ds != null && ds.Tables.Count > 0)
                return ds.Tables[0];
            else
                return null;
        }

        public DataTable getPRRow(int PRId)
        {
            var sql = string.Format("select top 1 * from PR where PRId = {0};", PRId.ToString());
            DbCommand dbc = DB.GetSqlStringCommand(sql);
            DataSet ds = GetData(dbc);

            if (ds != null && ds.Tables.Count > 0)
                return ds.Tables[0];
            else
                return null;
        }


        public DataTable getPRContractRow(int PRId)
        {
            var sql = string.Format("select top 1 C.*, P.PRNumber from prcontract C left join PR P on C.PRID = P.PRId where C.PRId = {0};", PRId.ToString());
            DbCommand dbc = DB.GetSqlStringCommand(sql);
            DataSet ds = GetData(dbc);

            if (ds != null && ds.Tables.Count > 0)
                return ds.Tables[0];
            else
                return null;
        }

        public DataTable getPRContractRow(int PRId, int ContractId)
        {
            var sql = string.Format("select top 1 C.*, P.PRNumber from prcontract C left join PR P on C.PRID = P.PRId where C.PRId = {0} and P.PRId = {1};", PRId.ToString(), ContractId.ToString());
            DbCommand dbc = DB.GetSqlStringCommand(sql);
            DataSet ds = GetData(dbc);

            if (ds != null && ds.Tables.Count > 0)
                return ds.Tables[0];
            else
                return null;
        }

        public DataTable getPRIaaRow(int PRId)
        {
            var sql = string.Format("select top 1 I.*, P.PRNumber from prIaa I left join PR P on I.PRID = P.PRId where I.PRId = {0};", PRId.ToString());
            DbCommand dbc = DB.GetSqlStringCommand(sql);
            DataSet ds = GetData(dbc);

            if (ds != null && ds.Tables.Count > 0)
                return ds.Tables[0];
            else
                return null;
        }

        public DataTable getPRIaaRow(int PRId, int IaaId)
        {
            var sql = string.Format("select top 1 I.*, P.PRNumber from prIaa  C left join PR P on I.PRID = P.PRId where I.PRId = {0} and P.PRId = {1};", PRId.ToString(), IaaId.ToString());
            DbCommand dbc = DB.GetSqlStringCommand(sql);
            DataSet ds = GetData(dbc);

            if (ds != null && ds.Tables.Count > 0)
                return ds.Tables[0];
            else
                return null;
        }

        public DataTable getPRContractorRow(int ContractId)
        {
            var sql = string.Format("select top 1 * from [dbo].[Contractor] where ContractId = {0};", ContractId.ToString());
            DbCommand dbc = DB.GetSqlStringCommand(sql);
            DataSet ds = GetData(dbc);

            if (ds != null && ds.Tables.Count > 0)
                return ds.Tables[0];
            else
                return null;
        }

        public DataSet getPRDrawDownAmts()
        {
            DbCommand dbc = DB.GetSqlStringCommand("select PRNumber, CumulativePRAmt, AmtExpensedToDate, CumulativePRAmt-AmtExpensedToDate  as [PRamtRemaining] from [dbo].[PR];");
            DataSet ds = GetData(dbc);

            if (ds != null && ds.Tables.Count > 0)
                return ds;
            else
                return null;
        }


        public DataTable getTaskOrderRow(int ContractId)
        {
            var sql = string.Format("select top 1 * from [dbo].[TaskOrder] where ContractId = {0};", ContractId.ToString());
            DbCommand dbc = DB.GetSqlStringCommand(sql);
            DataSet ds = GetData(dbc);

            if (ds != null && ds.Tables.Count > 0)
                return ds.Tables[0];
            else
                return null;
        }

        public DataTable getAcquisitionProfessionalRow(int ContractId, int EmployeeId)
        {
            //var sql = string.Format("select top 1 * from [dbo].[AcquisitionProfessional] where ContractId = {0} and EmployeeId = {1};", ContractId.ToString(), EmployeeId.ToString());
            var sql = string.Format("select A.*,C.ContractNumber from [dbo].[AcquisitionProfessional] A left join PRContract C on A.ContractId = C.ContractId where A.ContractId = {0} and A.EmployeeId = {1}", ContractId.ToString(), EmployeeId.ToString());

            DbCommand dbc = DB.GetSqlStringCommand(sql);
            DataSet ds = GetData(dbc);

            if (ds != null && ds.Tables.Count > 0)
                return ds.Tables[0];
            else
                return null;
        }

        public DataTable getAcquisitionProfessionalRow(int EmployeeId)
        {
            var sql = string.Format("select top 1 * from [dbo].[AcquisitionProfessional] where EmployeeId = {0};", EmployeeId.ToString());
            DbCommand dbc = DB.GetSqlStringCommand(sql);
            DataSet ds = GetData(dbc);

            if (ds != null && ds.Tables.Count > 0)
                return ds.Tables[0];
            else
                return null;
        }

        public DataTable getPRsBYOffice()
        {
            var sql = string.Format("select * from [dbo].[PRByOffice] order by [Id]");
            DbCommand dbc = DB.GetSqlStringCommand(sql);
            DataSet ds = GetData(dbc);

            if (ds != null && ds.Tables.Count > 0)
                return ds.Tables[0];
            else
                return null;
        }


    }
}
