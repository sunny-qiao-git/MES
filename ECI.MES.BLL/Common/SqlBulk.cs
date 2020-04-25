using PL.Base;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace ECI.MES.BLL
{
    public class SqlBulk
    {
        /// <summary>
        /// 批量保存多表
        /// </summary>
        /// <param name="dt1"></param>
        /// <param name="TableName"></param>
        /// <returns></returns>
        public static void SqlBatchCopy(DataTable dt, string TableName, DataTable dt1, string TableName1)
        {
            string connectionString = DBHelper.GetDB("").ConnectionString;
            using (SqlConnection Con = new SqlConnection(connectionString))
            {
                using (SqlTransaction st = Con.BeginTransaction())
                {
                    using (SqlBulkCopy copy = new SqlBulkCopy(Con, SqlBulkCopyOptions.Default, st))
                    {
                        for (int i = 0; i < dt.Columns.Count; i++)
                        {
                            copy.ColumnMappings.Add(dt.Columns[i].ColumnName, dt.Columns[i].ColumnName);
                        }
                        copy.DestinationTableName = TableName;
                        copy.WriteToServer(dt);
                    }
                    using (SqlBulkCopy copy = new SqlBulkCopy(Con, SqlBulkCopyOptions.Default, st))
                    {
                        for (int i = 0; i < dt1.Columns.Count; i++)
                        {
                            copy.ColumnMappings.Add(dt1.Columns[i].ColumnName, dt1.Columns[i].ColumnName);
                        }
                        copy.DestinationTableName = TableName1;
                        copy.WriteToServer(dt1);
                    }
                    st.Commit();
                }
            }
        }
    }
}
