using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace TOLET4
{
    public class userDAO
    {
        public MySqlCommand sqlCommand;
        public connData obj = new connData();
        public MySqlDataReader reader;

        //private String connectionString = "datasource=localhost;port=3306;username=root;password=";

        private MySqlConnection sqlConnection;
        private MySqlDataAdapter sqlAdapter;

        public userDAO()
        {

        }
        public void addUser(userDTO newUser)
        {
            //sqlConnection.Open();
            obj.connect();

            String query = "INSERT INTO tolet.signup ( `name`, `email`, `password`, `contact`) VALUES ('" + newUser.NAME + "','"
                                                                + newUser.EMAIL + "','"
                                                                + newUser.PASSWORD + "','"
                                                                + newUser.CONTACT + "')";

            System.Diagnostics.Debug.WriteLine(query);
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);
            sqlCommand.ExecuteNonQuery();

            obj.disconnect();

        }
        public Boolean searchUser(String fmail)
        {
            obj.connect();
            String query = "SELECT * FROM tolet.signup WHERE `email` =  '" + fmail + "'";
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);

            reader = sqlCommand.ExecuteReader();
            if (reader.Read())
            {
                String mail = reader.GetString("email");
                if (mail == fmail) return true;
            }
            return false;
            obj.disconnect();
        }
        public Boolean searchUser(String fmail, String fpass)
        {
            obj.connect();
            String query = "SELECT * FROM tolet.signup WHERE `email` =  '" + fmail + "'";
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);

            reader = sqlCommand.ExecuteReader();
            if (reader.Read())
            {
                String mail = reader.GetString("email");
                String pass = reader.GetString("password");
                if (mail == fmail && pass == fpass) return true;
            }
            return false;
            obj.disconnect();
        }
    }
}