using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace TOLET4
{
    public class commercialDAO
    {
        public MySqlCommand sqlCommand;
        public connData obj = new connData();
        public MySqlDataReader reader;

        private MySqlConnection sqlConnection;
        private MySqlDataAdapter sqlAdapter;
        public String[] head = new String[10];
        public String[] description = new String[10];
        public String[] rent = new String[10];
        public String[] image = new String[10];
        public String[] post = new String[10];
        public String[] time = new String[10];
        public String[] pid = new String[10];
        public String temp = "moreDetail.aspx?id=";
        public String ped = "pending";
        public String apv = "Approved";
        public commercialDAO() { }

        public void addPost(commercialDTO newPost)
        {
            obj.connect();
            int x = 0;
            Int32.TryParse(newPost.RENT, out x);

            String query = "INSERT INTO tolet.commercialSpace ( `title`, `category`, `division`, `district`, `address`, `rent`, `size`, `description`, `carparking`, `lift`, `contact`, `email` , `imageName` , `datee`) VALUES ('" + newPost.TITLE + "','"
                                                                + newPost.CATEGORY+ "','"
                                                                + newPost.DIVISION + "','"
                                                                + newPost.DISTRICT + "','"

                                                                + newPost.ADDRESS + "','"
                                                                + x + "','"
                                                                + newPost.SIZE + "','"
                                                                + newPost.DESCRIPTION + "','"
                                                             
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

        public void execute_query(String name, String cat, String qur, String lt)
        {
            String query = "";

            if (qur.Length > 0 && qur[0] == 'b')
            {
                char ct = qur[qur.Length - 1];
                String bd = ct + "";
                query = "SELECT * FROM " + name + " where category='" + cat + "' AND status ='" + apv + "' AND bedroom ='" + bd + "' ORDER BY datee DESC  LIMIT " + lt + "";
            }
            else if (qur == "Approved")
            {
                query = "SELECT * FROM " + name + " where category='" + cat + "' AND status ='" + apv + "' ORDER BY datee DESC LIMIT " + lt + "";

            }
            else if (qur == "none")
            {
                query = "SELECT * FROM " + name + " where category='" + cat + "' ORDER BY datee DESC LIMIT " + lt + "";

            }
            else if (qur == "rent")
            {

                query = "SELECT * FROM " + name + " where category='" + cat + "' AND status = '" + apv + "' ORDER BY rent ASC LIMIT " + lt + "";

            }
            else if (qur == "date")
            {
                query = "SELECT * FROM " + name + " where category='" + cat + "' AND status = '" + apv + "' ORDER BY datee DESC LIMIT " + lt + "";


            }
            System.Diagnostics.Debug.WriteLine(query);
            for (int i = 1; i <= 5; i++)
            {
                head[i] = "";
                description[i] = "";
                rent[i] = "";
                image[i] = "";
            }

            obj.connect();
            //query = "SELECT * FROM " + name + " where category='" + cat + "' LIMIT 5 ";
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);

            reader = sqlCommand.ExecuteReader();
            int id = 1;
            while (reader.Read())
            {
                pid[id] = reader.GetString("postId");
                post[id] = temp + reader.GetString("postId") + "2";
                head[id] = reader.GetString("title");
                description[id] = reader.GetString("description");
                if (reader.GetString("rent") == "")
                {
                    rent[id] = "Negotiable";
                }
                else
                {
                    rent[id] = reader.GetString("rent") + " BDT";
                }

                image[id] = "images\\" + reader.GetString("imageName");
                time[id] = reader.GetString("datee");
                //System.Diagnostics.Debug.WriteLine(id);
                //System.Diagnostics.Debug.WriteLine(image[id]);

                id++;
                if (id > 5) break;
            }
            obj.disconnect();

        }

        public int nextPostId()
        {
            obj.connect();
            String query = "SELECT MAX(postID) FROM tolet.commercialSpace";
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);

            int ans = Int32.Parse(sqlCommand.ExecuteScalar().ToString());
            ans++;
            System.Diagnostics.Debug.WriteLine(ans);
            obj.disconnect();

            return ans;


        }
    }
}