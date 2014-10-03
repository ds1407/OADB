using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Data;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Common;
using Microsoft.Practices.EnterpriseLibrary.Common.Configuration;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using System.Configuration;

namespace DataLayer
{
    public class DataAccess
    {
        protected readonly int commandTimeOut;
        protected readonly Database DB;

        public DataAccess()
        {
            try
            {
                var factory = new DatabaseProviderFactory();
                DB = factory.CreateDefault();
            }
            catch (Exception e)
            {
                HandleError(e, "Error creating database connection: " + e.Message);
            }

            try
            {
                this.commandTimeOut = 3600;
            }
            catch (Exception e)
            {
                HandleError(e, "Error retrieving app settings: commandtimeout.");
            }
        }

        protected DataSet GetData(DbCommand oCmd)
        {
            DataSet dataSet = null;

            try
            {
                oCmd.CommandTimeout = this.commandTimeOut;
                dataSet = DB.ExecuteDataSet(oCmd);
            }
            catch (Exception ex)
            {
                HandleError(ex);
            }

            return dataSet;
        }

        protected bool GetData(ref DataSet oDS, DbCommand oCmd)
        {
            var returnValue = false;

            try
            {
                oCmd.CommandTimeout = this.commandTimeOut;
                oDS = this.DB.ExecuteDataSet(oCmd);

                returnValue = true;
            }
            catch (Exception ex)
            {
                HandleError(ex);
            }

            return returnValue;
        }

        protected bool GetData(DbDataAdapter da, ref DataSet ds)
        {
            DbConnection cn = null;
            var returnValue = false;

            try
            {
                cn = this.DB.CreateConnection();
                da.SelectCommand.CommandTimeout = this.commandTimeOut;
                da.SelectCommand.Connection = cn;
                da.Fill(ds);

                returnValue = true;
            }
            catch (Exception ex)
            {
                HandleError(ex);
            }
            finally
            {
                try
                {
                    if (cn != null)
                    {
                        cn.Close();
                    }
                }
                finally
                {
                    cn = null;
                }
            }

            return returnValue;
        }

        protected bool GetData(DbDataAdapter da, ref DataTable dt)
        {
            DbConnection cn = null;
            var returnValue = false;

            try
            {
                cn = this.DB.CreateConnection();
                da.SelectCommand.CommandTimeout = this.commandTimeOut;
                da.SelectCommand.Connection = cn;
                da.Fill(dt);
                returnValue = true;
            }
            catch (Exception ex)
            {
                HandleError(ex);
            }
            finally
            {
                try
                {
                    if (cn != null)
                    {
                        cn.Close();
                    }
                }
                finally
                {
                    cn = null;
                }
            }

            return returnValue;
        }

        protected IDataReader ExecuteReader(DbCommand oCmd)
        {
            try
            {
                oCmd.CommandTimeout = this.commandTimeOut;

                return DB.ExecuteReader(oCmd);
            }
            catch (Exception ex)
            {
                HandleError(ex);
            }

            return null;
        }

        protected object ExecuteObject(DbCommand oCmd)
        {
            try
            {
                oCmd.CommandTimeout = this.commandTimeOut;
                var dataSet = DB.ExecuteDataSet(oCmd);

                if (dataSet.Tables.Count > 0)
                    if (dataSet.Tables[0].Rows.Count > 0)
                        return dataSet.Tables[0].Rows[0][0];
            }
            catch (Exception ex)
            {
                HandleError(ex);
            }

            return null;
        }

        protected int ExecuteInt(DbCommand oCmd)
        {
            try
            {
                var value = ExecuteObject(oCmd);

                if (value != null)
                    if (!string.IsNullOrEmpty(value.ToString()))
                        return Convert.ToInt32(value.ToString());
            }
            catch (Exception ex)
            {
                HandleError(ex);
            }

            return 0;
        }

        protected string ExecuteString(DbCommand oCmd)
        {
            try
            {
                var value = ExecuteObject(oCmd);

                if (value != null)
                    return value.ToString();
            }
            catch (Exception ex)
            {
                HandleError(ex);
            }

            return null;
        }

        protected bool Execute(DbCommand oCmd)
        {
            try
            {
                oCmd.CommandTimeout = this.commandTimeOut;
                var result = this.DB.ExecuteNonQuery(oCmd);

                return true;
            }
            catch (Exception ex)
            {
                HandleError(ex);
            }

            return false;
        }

        protected bool Execute(DbCommand oCmd, out Int32 errorCode)
        {
            errorCode = 0;

            try
            {
                oCmd.CommandTimeout = this.commandTimeOut;
                errorCode = DB.ExecuteNonQuery(oCmd);

                return errorCode == 0;
            }
            catch (Exception ex)
            {
                HandleError(ex);
            }

            return false;
        }

        protected int Update(DbDataAdapter da, DataSet ds, string tableName)
        {
            DbConnection cn = null;
            var returnValue = 0;

            try
            {
                cn = DB.CreateConnection();
                da.UpdateCommand.CommandTimeout = this.commandTimeOut;
                da.UpdateCommand.Connection = cn;
                da.InsertCommand.CommandTimeout = this.commandTimeOut;
                da.InsertCommand.Connection = cn;
                returnValue = da.Update(ds, tableName);
            }
            catch (Exception ex)
            {
                HandleError(ex);
            }
            finally
            {
                try
                {
                    if (cn != null)
                    {
                        cn.Close();
                    }
                }
                finally
                {
                    cn = null;
                }
            }

            return returnValue;
        }

        protected static void HandleError(Exception ex)
        {
            HandleError(ex, string.Empty);
        }

        protected static void HandleError(Exception ex, string fmt, params object[] vars)
        {
            HandleError(ex, string.Format(fmt, vars));
        }

        protected static void HandleError(Exception ex, string errMsg)
        {
            //throw new BestException("Overridden Error: " + errMsg, ex);
        }

        protected static void HandleError(Exception ex, DbCommand oCmd)
        {
            HandleError(ex, oCmd, string.Empty);
        }

        protected static void HandleError(Exception ex, DbCommand oCmd, string fmt, params object[] vars)
        {
            HandleError(ex, oCmd, string.Format(fmt, vars));
        }

        protected static void HandleError(Exception ex, DbCommand oCmd, string errMsg)
        {
            string spName = oCmd.CommandText;
            string paralist = oCmd.Parameters.Cast<DbParameter>().Aggregate("", (current, para) => current + ("\r\n\t\t" + para.ParameterName + ": " + para.Value));
            string _exception = "Database Error: \r\n\t" + spName + paralist + "\r\n\r\n" + ex.Message + "\r\n" + errMsg;

            //throw new BestException(_exception, ex);
        }
    }
}
