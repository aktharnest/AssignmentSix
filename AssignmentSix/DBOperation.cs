using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AssignmentSix
{
    public class DBOperation
    {
        public SqlConnection con = new SqlConnection();
        public SqlCommand cmd = new SqlCommand();
        public DBOperation()
        {
            con.ConnectionString = "Data Source=.;Initial Catalog=Employee;Integrated Security=True;Pooling=False";
            cmd.Connection = con;
        }
        public SqlConnection GetCon()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            return con;

        }
        public void dbclose()
        {
            con.Close();
        }
        public int exenonquery(String sql)
        {
            GetCon();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            int i = cmd.ExecuteNonQuery();
            return i;
        }
        public DataSet exedataset(String sql)
        {
            cmd.CommandType = CommandType.Text; //set command type
            cmd.CommandText = sql; //pass sql command to command text
            SqlDataAdapter sd = new SqlDataAdapter(cmd);//Createadapter class because disconnected architecture
            DataSet ds = new DataSet();//create dataset
            sd.Fill(ds);
            return ds;

        }
    }
}