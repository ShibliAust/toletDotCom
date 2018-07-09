using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace TOLET4
{
    public class connData
    {
        private String connectionString = "datasource=localhost;port=3306;Initial Catalog='tolet';username=root;password=";

        private MySqlConnection sqlConnection;

        private MySqlCommand sqlCommand;

        private MySqlDataAdapter sqlAdapter;

        public connData()
        {

        }

        public void connect()
        {
            sqlConnection = new MySqlConnection(connectionString);
            sqlConnection.Open();
            //System.Diagnostics.Debug.WriteLine("connected");
        }
        public void disconnect()
        {
            sqlConnection.Close();
        }
        public MySqlConnection SQLCONNECTION
        {
            get { return sqlConnection; }


        }
    }
}