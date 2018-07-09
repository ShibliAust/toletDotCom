using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace TOLET4
{
    public partial class mainPage : System.Web.UI.Page
    {
        public connData obj = new connData();
        public MySqlCommand sqlCommand;
        public MySqlDataReader reader;

        private MySqlConnection sqlConnection;
        private MySqlDataAdapter sqlAdapter;

        public String[] head = new String[10];
        public String[] description = new String[10];
        public String[] rent = new String[10];
        public String[] image = new String[10];
        public String[] post = new String[10];

        public String temp = "moreDetail.aspx?id=";
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            System.Diagnostics.Debug.WriteLine(id);
            init();
        }

        public void init()
        {

            for (int i = 1; i <= 5; i++)
            {
                head[i] = "";
                description[i] = "";
                rent[i] = "";
                image[i] = "";
            }

            obj.connect();
            String query = "SELECT * FROM residentialhouse LIMIT 5";
            sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);

            reader = sqlCommand.ExecuteReader();
            int id = 1;
            while (reader.Read())
            {
                post[id] = temp+reader.GetString("postId") + "1";
                head[id] = reader.GetString("title");
                description[id] = reader.GetString("description");
                rent[id] = reader.GetString("rent");
                image[id] = "images\\" + reader.GetString("imageName");
                //System.Diagnostics.Debug.WriteLine(id);
                //System.Diagnostics.Debug.WriteLine(image[id]);
               
                id++;
                if (id > 5) break;
            }
            obj.disconnect();
            obj.connect();
            

            if (id < 5)
            {
                query = "SELECT * FROM commercialspace LIMIT 5";
                sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);
                reader = sqlCommand.ExecuteReader();
                while (reader.Read())
                {
                    post[id] = temp+reader.GetString("postId") + "2";
                    head[id] = reader.GetString("title");
                    description[id] = reader.GetString("description");
                    rent[id] = reader.GetString("rent");
                    image[id] = "images\\" + reader.GetString("imageName");
                    id++;
                    if (id > 5) break;
                }

            }

            obj.disconnect();

        }
    }
}