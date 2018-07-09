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
        public String[] image = new String[10];
        public String[] post = new String[10];
        public String[] time = new String[10];
        public String[] pid = new String[10];
        public String[] tb = new String[10];
        public String temp = "moreDetail.aspx?id=";
        public String ped = "pending";
        public String apv = "Approved";


        public residentialDAO() { }

        public void addPost(residentialDTO newPost)
        {
            //sqlConnection.Open();
            obj.connect();
            int x = 0;
            Int32.TryParse(newPost.RENT, out x);

            String query = "INSERT INTO tolet.residentialhouse ( `title`, `category`, `division`, `district`, `address`, `rent`, `size`, `description`, `bedroom`, `bathroom`, `carparking`, `lift`, `contact`, `email` , `imageName` , `datee`) VALUES ('" + newPost.TITLE + "','"
                                                                + newPost.CATEGORY+ "','"
                                                                + newPost.DIVISION + "','"
                                                                + newPost.DISTRICT + "','"

                                                                + newPost.ADDRESS + "','"
                                                                
                                                                + x + "','"
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

        public void execute_query( String name, String cat, String qur , String lt )
        {
            String query = "";

            if (qur.Length > 0 && qur[0] == 'b')
            {
                char ct = qur[qur.Length - 1];
                String bd = ct + "";
                query = "SELECT * FROM " + name + " where category='" + cat + "' AND status ='" + apv + "' AND bedroom ='" + bd + "' ORDER BY datee DESC LIMIT " + lt + "";
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
                
                query = "SELECT * FROM " + name + " where category='" + cat + "' AND status = '" + apv + "'  ORDER BY rent ASC LIMIT " + lt + "";

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
                post[i] = "";
            }

            obj.connect();
            //query = "SELECT * FROM " + name + " where category='" + cat + "' LIMIT 5 ";
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);

            reader = sqlCommand.ExecuteReader();
            int id = 1;
            while (reader.Read())
            {
                pid[id] = reader.GetString("postId");
                post[id] = temp + reader.GetString("postId") + "1";
                head[id] = reader.GetString("title");
                description[id] = reader.GetString("description");
                if (reader.GetString("rent") == "" || reader.GetString("rent") == "0" )
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
            String query = "SELECT MAX(postID) FROM tolet.residentialhouse";
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);

            int ans = Int32.Parse(sqlCommand.ExecuteScalar().ToString());
            ans++;
            System.Diagnostics.Debug.WriteLine( ans );
            obj.disconnect();

            return ans;            
        }

        public int totalAPVpost()  // approved post
        {
            obj.connect();
            String query = "SELECT count(postID) FROM tolet.residentialhouse where  status ='" + apv + "'";
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);
            if (sqlCommand.ExecuteScalar().ToString() == null) return 0;
            int ans = Int32.Parse(sqlCommand.ExecuteScalar().ToString());

            System.Diagnostics.Debug.WriteLine(ans);
            obj.disconnect();

            return ans;
        }
        public int totalALLpost() //all post
        {
            obj.connect();
            String query = "SELECT count(postID) FROM tolet.residentialhouse ";
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);
            if (sqlCommand.ExecuteScalar().ToString() == null) return 0;
            int ans = Int32.Parse(sqlCommand.ExecuteScalar().ToString());

            System.Diagnostics.Debug.WriteLine(ans);
            obj.disconnect();

            return ans;
        }
        public int totalpost()  // pending
        {
            obj.connect();
            String query = "SELECT count(postID) FROM tolet.residentialhouse where  status ='" + ped + "'";
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);
            if (sqlCommand.ExecuteScalar().ToString() == null) return 0;
            int ans = Int32.Parse(sqlCommand.ExecuteScalar().ToString());
            
            System.Diagnostics.Debug.WriteLine(ans);
            obj.disconnect();

            return ans;
        }
        public int totalMyPost(String mail ) //users post
        {
            obj.connect();
            String query = "SELECT count(postID) FROM tolet.residentialhouse where email ='" + mail + "'";
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);
            if (sqlCommand.ExecuteScalar().ToString() == null) return 0;
            int ans = Int32.Parse(sqlCommand.ExecuteScalar().ToString());
            //ans++;
            System.Diagnostics.Debug.WriteLine(ans);
            obj.disconnect();

            return ans;
        }
        public void mypost(String mail, String lt)
        {
            System.Diagnostics.Debug.WriteLine("lt asche " + lt);
            String lt1 = "", lt2 = "";

            if (lt.Length != 1)
            {
                String a = "", b = "";
                int idx = 0;
                while (lt[idx] != ',')
                {
                    a += lt[idx];
                    idx++;
                }
                idx++;
                while (idx < lt.Length)
                {
                    b += lt[idx];
                    idx++;
                }
                int x = Convert.ToInt32(a);
                int y = Convert.ToInt32(b);


                
                
                int limit1 = totalMyPost( mail );

                int a1 = 0, b1 = 0, a2, b2;

                if (x > limit1)
                {
                    a1 = x - limit1;
                    b1 = y - limit1;
                    lt2 = a1 + "," + b1;
                }
                else if (x < limit1 && y > limit1)
                {
                    lt2 = "0,5";
                }
                else lt2 = lt;
                System.Diagnostics.Debug.WriteLine(a1 + " " + b1 + " " + limit1);
            }
            else lt2 = lt;
            System.Diagnostics.Debug.WriteLine("lt2 last e hoilo " + lt2 );
            String query1 = "", query2 = "";
            query1 = "SELECT * FROM tolet.residentialhouse  where email ='" + mail + "' ORDER BY datee DESC LIMIT " + lt + "";
            query2 = "SELECT * FROM tolet.commercialspace  where email ='" + mail + "' ORDER BY datee DESC LIMIT " + lt2 + "";
            System.Diagnostics.Debug.WriteLine(" mypost er modhe ");
            System.Diagnostics.Debug.WriteLine(query1);
            System.Diagnostics.Debug.WriteLine(query2);

            System.Diagnostics.Debug.WriteLine(query1);
            System.Diagnostics.Debug.WriteLine(query2);
            for (int i = 1; i <= 5; i++)
            {
                head[i] = "";
                description[i] = "";
                rent[i] = "";
                image[i] = "";
                tb[i] = "";
            }

            obj.connect();

            sqlCommand = new MySqlCommand(query1, obj.SQLCONNECTION);

            reader = sqlCommand.ExecuteReader();
            int id = 1;
            while (reader.Read()) 
            {
                tb[id] = "residentialhouse";
                pid[id] = reader.GetString("postId");
                post[id] = temp + reader.GetString("postId") + "1";
                head[id] = reader.GetString("title");
                description[id] = reader.GetString("description");
                if (reader.GetString("rent") == "" || reader.GetString("rent") == "0")
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
            obj.connect();


            if (id <= 5 && query2 != "")
            {

                sqlCommand = new MySqlCommand(query2, obj.SQLCONNECTION);
                reader = sqlCommand.ExecuteReader();
                while (reader.Read())
                {
                    tb[id] = "commercialSpace";
                    pid[id] = reader.GetString("postId");
                    post[id] = temp + reader.GetString("postId") + "2";
                    head[id] = reader.GetString("title");
                    description[id] = reader.GetString("description");

                    if (reader.GetString("rent") == "" || reader.GetString("rent") == "0")
                    {
                        rent[id] = "Negotiable";
                    }
                    else
                    {
                        rent[id] = reader.GetString("rent") + " BDT";
                    }
                    image[id] = "images\\" + reader.GetString("imageName");
                    time[id] = reader.GetString("datee");
                    id++;
                    if (id > 5) break;
                }

            }

            obj.disconnect();
        }

        public void showall(String qur , String lt )
        {
            System.Diagnostics.Debug.WriteLine("lt asche " + lt);
            String lt1 = "", lt2 = "";
            int limit1 = totalAPVpost();
            if( qur == "none")
            {
                limit1 = totalALLpost();
            }
            System.Diagnostics.Debug.WriteLine("total res post : "+ limit1);
            if (lt.Length != 1)
            {
                String a = "", b = "";
                int idx = 0;
                while (lt[idx] != ',')
                {
                    a += lt[idx];
                    idx++;
                }
                idx++;
                while (idx < lt.Length)
                {
                    b += lt[idx];
                    idx++;
                }
                int x = Convert.ToInt32(a);
                int y = Convert.ToInt32(b);



                

                int a1 = 0, b1 = 0, a2, b2;

                if (x > limit1)
                {
                    a1 = x - limit1;
                    b1 = y - limit1;
                    lt2 = a1 + "," + b1;
                }
                else if (x < limit1 && y > limit1)
                {
                    lt2 = "0,5";
                }
                else lt2 = lt;
                System.Diagnostics.Debug.WriteLine(a1 + " " + b1 + " " + limit1);
            }
            else lt2 = lt;

            String query1 = "", query2 = "";

            if( qur.Length > 0 && qur[0] == 'b')
            {
                
                char ct = qur[qur.Length - 1];
                String bd = ct + "";
                query1 = "SELECT * FROM tolet.residentialhouse where status ='" + apv + "' AND bedroom ='" + bd + "' ORDER BY datee DESC  LIMIT " + lt + "";
                



            }

            else if( qur == "Approved")
            {
                query1 = "SELECT * FROM tolet.residentialhouse where status ='" + apv + "' ORDER BY datee DESC LIMIT " + lt + "";
                query2 = "SELECT * FROM tolet.commercialspace where status ='" + apv + "' ORDER BY datee DESC LIMIT " + lt2 + "";
            }
            else if( qur == "none")
            {
                query1 = "SELECT * FROM tolet.residentialhouse ORDER BY datee DESC LIMIT " + lt + "";
                query2 = "SELECT * FROM tolet.commercialSpace ORDER BY datee DESC LIMIT " + lt2 + "";
            }
            else if( qur == "rent")
            {
                query1 = "SELECT* FROM residentialhouse ORDER BY rent ASC LIMIT " + lt + "";
                query2 = "SELECT* FROM commercialSpace ORDER BY rent ASC LIMIT " + lt2 + ""; 
            }
            else if( qur == "date")
            {
                query1 = "SELECT* FROM residentialhouse ORDER BY datee DESC LIMIT '" + lt + "'";
                query2 = "SELECT* FROM commercialSpace ORDER BY datee DESC LIMIT '" + lt2 + "'";
            }
            
            System.Diagnostics.Debug.WriteLine(query1);
            System.Diagnostics.Debug.WriteLine(query2);
            for (int i = 1; i <= 5; i++)
            {
                head[i] = "";
                description[i] = "";
                rent[i] = "";
                image[i] = "";
                tb[i] = "";
            }

            obj.connect();
           
            sqlCommand = new MySqlCommand(query1, obj.SQLCONNECTION);

            reader = sqlCommand.ExecuteReader();
            int id = 1;
            while (reader.Read())
            {
                tb[id] = "residentialhouse";
                pid[id] = reader.GetString("postId");
                post[id] = temp + reader.GetString("postId") + "1";
                head[id] = reader.GetString("title");
                description[id] = reader.GetString("description");
                if (reader.GetString("rent") == "" || reader.GetString("rent") == "0")
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
            obj.connect();
            System.Diagnostics.Debug.WriteLine("id = "+id);

            if (id <= 5 && query2 != "" )
            {
                
                sqlCommand = new MySqlCommand(query2, obj.SQLCONNECTION);
                reader = sqlCommand.ExecuteReader();
                while (reader.Read())
                {
                    tb[id] = "commercialSpace";
                    pid[id] = reader.GetString("postId");
                    post[id] = temp + reader.GetString("postId") + "2";
                    head[id] = reader.GetString("title");
                    description[id] = reader.GetString("description");

                    if (reader.GetString("rent") == "" || reader.GetString("rent") == "0")
                    {
                        rent[id] = "Negotiable";
                    }
                    else
                    {
                        rent[id] = reader.GetString("rent") + " BDT";
                    }
                    image[id] = "images\\" + reader.GetString("imageName");
                    time[id] = reader.GetString("datee");
                    id++;
                    if (id > 5) break;
                }

            }
            System.Diagnostics.Debug.WriteLine("id = " + id);

            obj.disconnect();

        }

        public void deletePost(String nm, String id )
        {
            obj.connect();
            String query = "DELETE FROM " + nm + " where postID ='" + id + "'";
            System.Diagnostics.Debug.WriteLine(query);
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);
            sqlCommand.ExecuteNonQuery();
            obj.disconnect();

        }

        public void pendingPost(String lt)
        {
            System.Diagnostics.Debug.WriteLine("lt asche " + lt );
            String lt1 = "", lt2 = "";

            if (lt.Length != 1)
            {
                String a = "", b = "";
                int idx = 0;
                while (lt[idx] != ',')
                {
                    a += lt[idx];
                    idx++;
                }
                idx++;
                while (idx < lt.Length)
                {
                    b += lt[idx];
                    idx++;
                }
                int x = Convert.ToInt32(a);
                int y = Convert.ToInt32(b);



                int limit1 = totalpost();
                
                int a1 = 0, b1 = 0, a2, b2;
                
                if (x > limit1)
                {
                    a1 = x - limit1;
                    b1 = y - limit1;
                    lt2 = a1 + "," + b1;
                }
                else if (x < limit1 && y > limit1)
                {
                    lt2 = "0,5";
                }
                else lt2 = lt;
                System.Diagnostics.Debug.WriteLine(a1 + " " + b1 + " " + limit1);
            }
            else lt2 = lt;
            

            for (int i = 1; i <= 5; i++)
            {
                head[i] = "";
                description[i] = "";
                rent[i] = "";
                image[i] = "";
                pid[i] = "";
            }

            obj.connect();
            String query = "SELECT * FROM tolet.residentialhouse where status ='" + ped + "' ORDER BY datee DESC LIMIT " + lt + "";
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);

            reader = sqlCommand.ExecuteReader();
            int id = 1;
            while (reader.Read())
            {
                tb[id] = "residentialhouse";
                pid[id] = reader.GetString("postId");
                post[id] = temp + reader.GetString("postId") + "1";
                head[id] = reader.GetString("title");
                description[id] = reader.GetString("description");
                if (reader.GetString("rent") == "" || reader.GetString("rent") == "0")
                {
                    rent[id] = "Negotiable";
                }
                else
                {
                    rent[id] = reader.GetString("rent") + " BDT";
                }
                System.Diagnostics.Debug.WriteLine("rent paitese" + reader.GetString("rent"));

                image[id] = "images\\" + reader.GetString("imageName");
                time[id] = reader.GetString("datee");
                //System.Diagnostics.Debug.WriteLine(id);
                //System.Diagnostics.Debug.WriteLine(image[id]);

                id++;
                if (id > 5) break;
            }
            obj.disconnect();
            obj.connect();
            System.Diagnostics.Debug.WriteLine("lt2 er maan" +lt2);

            if (id < 5)
            {
                query = "SELECT * FROM tolet.commercialspace where status ='" + ped + "' ORDER BY datee DESC LIMIT " + lt2 + "";
                sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);
                reader = sqlCommand.ExecuteReader();
                while (reader.Read())
                {
                    tb[id] = "commercialspace";
                    pid[id] = reader.GetString("postId");
                    post[id] = temp + reader.GetString("postId") + "2";
                    head[id] = reader.GetString("title");
                    description[id] = reader.GetString("description");

                    if (reader.GetString("rent") == "" || reader.GetString("rent") == "0")
                    {
                        rent[id] = "Negotiable";
                    }
                    else
                    {
                        rent[id] = reader.GetString("rent") + " BDT";
                    }
                    image[id] = "images\\" + reader.GetString("imageName");
                    time[id] = reader.GetString("datee");
                    id++;
                    if (id > 5) break;
                }

            }

            obj.disconnect();
        }

        public void update(String nm, String id)
        {
            String ap = "Approved";
            obj.connect();
            String query = "UPDATE " + nm + " SET status ='" + ap + "' where postID ='" + id + "'";
            System.Diagnostics.Debug.WriteLine(query);
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);
            sqlCommand.ExecuteNonQuery();
            obj.disconnect();
        }
    }
}