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
        public String[] time = new String[10];
        public String[] PID = new String[10];


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

        public void showrequest(String lt)
        {
            for (int i = 1; i <= 5; i++)
            {
                name[i] = "";
                email[i] = "";
                category[i] = "";
                massege[i] = "";
                time[i] = "";
            }
            obj.connect();
            String query = "SELECT * FROM tolet.contact LIMIT " + lt + "";
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);

            reader = sqlCommand.ExecuteReader();
            int id = 1;
            while (reader.Read())
            {
                PID[id] = reader.GetString("id");
                name[id] = reader.GetString("name");
                email[id] = reader.GetString("email");
                category[id] = reader.GetString("category");
                massege[id] = reader.GetString("massege");
                time[id] = reader.GetString("datee");
                //System.Diagnostics.Debug.WriteLine(id);
                //System.Diagnostics.Debug.WriteLine(image[id]);

                id++;
                if (id > 5) break;
            }
            obj.disconnect();
        }

        public void delete( String id)
        {
            obj.connect();
            String query = "DELETE FROM contact where id ='" + id + "'";
            System.Diagnostics.Debug.WriteLine(query);
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);
            sqlCommand.ExecuteNonQuery();
            obj.disconnect();
            
        }


    }
}