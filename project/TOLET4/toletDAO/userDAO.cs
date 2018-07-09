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

        public String[] name = new String[10];
        public String[] email = new String[10];
        public String[] contact = new String[10];



        public userDAO()
        {

        }
        public void addUser(userDTO newUser)
        {
            //sqlConnection.Open();
            obj.connect();
            System.Diagnostics.Debug.WriteLine(newUser.CONTACT);

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

        public void showall(String lt)
        {
            obj.connect();
            String query = "SELECT * FROM signup LIMIT " + lt + "";
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);

            for (int i = 1; i <= 5; i++)
            {
                name[i] = "";
                email[i] = "";
                contact[i] = "";
                
            }

            reader = sqlCommand.ExecuteReader();
            int id = 1;
            while (reader.Read())
            {
                name[id] = reader.GetString("name");
                email[id] = reader.GetString("email");
                contact[id] = reader.GetString("contact");
                
                //System.Diagnostics.Debug.WriteLine(id);
                //System.Diagnostics.Debug.WriteLine(image[id]);

                id++;
                if (id > 5) break;
            }
            obj.disconnect();
            for (int i = 1; i <= 5; i++)
            {
                System.Diagnostics.Debug.WriteLine(name[i]);
                System.Diagnostics.Debug.WriteLine(email[i]);
                System.Diagnostics.Debug.WriteLine(contact[i]);

            }

        }

        public void delete( String id )
        {
            obj.connect();
            String query = "DELETE FROM signup where email ='" + id + "'";
            System.Diagnostics.Debug.WriteLine(query);
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);
            sqlCommand.ExecuteNonQuery();
            obj.disconnect();
        }

    }
}