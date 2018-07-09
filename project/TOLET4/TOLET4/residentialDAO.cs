using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace TOLET4
{
    public class residentialDAO
    {
        public MySqlCommand sqlCommand;
        public connData obj = new connData();
        public MySqlDataReader reader;

        private MySqlConnection sqlConnection;
        private MySqlDataAdapter sqlAdapter;

        public String[] head = new String[10];
        public String[] description = new String[10];
        public String[] rent = new String[10];

        public residentialDAO() { }

        public void addPost(residentialDTO newPost)
        {
            //sqlConnection.Open();
            obj.connect();

            String query = "INSERT INTO tolet.residentialhouse ( `title`, `category`, `division`, `district`, `address`, `rent`, `size`, `description`, `bedroom`, `bathroom`, `carparking`, `lift`, `contact`, `email` , `imageName` , `datee`) VALUES ('" + newPost.TITLE + "','"
                                                                + newPost.CATEGORY+ "','"
                                                                + newPost.DIVISION + "','"
                                                                + newPost.DISTRICT + "','"

                                                                + newPost.ADDRESS + "','"
                                                                + newPost.RENT + "','"
                                                                + newPost.SIZE + "','"
                                                                + newPost.DESCRIPTION + "','"
                                                                + newPost.BEDROOM + "','"
                                                                + newPost.BATHROOM + "','"
                                                                + newPost.CARPARKING + "','"
                                                                + newPost.LIFT + "','"
                                                                + newPost.CONTACT + "','"

                                                                + newPost.MAIL + "','"
                                                                + newPost.IMAGE + "','"

                                                                + newPost.DATE + "')";

            System.Diagnostics.Debug.WriteLine(query);
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);
            sqlCommand.ExecuteNonQuery();

            obj.disconnect();

        }

        public void execute_query( String name, String cat )
        {
            for (int i = 1; i <= 5; i++)
            {
                head[i] = "";
                description[i] = "";
                rent[i] = "";
            }

            obj.connect();
            String query = "SELECT * FROM "+name+" where category='"+cat+"' LIMIT 5 ";
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);

            reader = sqlCommand.ExecuteReader();
            int id = 1;
            while (reader.Read())
            {
                head[id] = reader.GetString("title");
                description[id] = reader.GetString("description");
                rent[id] = reader.GetString("rent");
                id++;
                if (id > 5) break;
            }
            obj.disconnect();

        }

        public int nextPostId()
        {
            obj.connect();
            String query = "SELECT MAX(postID) FROM tolet.residentialhouse";
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);

            int ans = Int32.Parse(sqlCommand.ExecuteScalar().ToString());
            ans++;
            System.Diagnostics.Debug.WriteLine( ans );
            obj.disconnect();

            return ans;

            
        }

    }
}