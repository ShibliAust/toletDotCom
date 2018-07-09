using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace TOLET4
{
    public class contactDAO
    {
        public MySqlCommand sqlCommand;
        public connData obj = new connData();
        public MySqlDataReader reader;

        private MySqlConnection sqlConnection;
        private MySqlDataAdapter sqlAdapter;

        public String[] name = new String[10];
        public String[] email = new String[10];
        public String[] category = new String[10];
        public String[] massege = new String[10];

        public contactDAO() { }

        public void addPost(contactDTO newPost)
        {
            //sqlConnection.Open();
            obj.connect();

            String query = "INSERT INTO tolet.contact ( `name`, `email`, `category`, `massege`, `datee` ) VALUES ('" + newPost.NAME + "','"
                                                                + newPost.EMAIL + "','"
                                                                + newPost.CATEGORY + "','"
                                                                + newPost.MASSEGE + "','"
                                                                + newPost.DATE + "')";

            System.Diagnostics.Debug.WriteLine(query);
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);
            sqlCommand.ExecuteNonQuery();

            obj.disconnect();

        }


    }
}