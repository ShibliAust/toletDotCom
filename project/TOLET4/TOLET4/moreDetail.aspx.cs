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
    public partial class moreDetail : System.Web.UI.Page
    {
        public connData obj = new connData();
        public MySqlCommand sqlCommand;
        public MySqlDataReader reader;

        private MySqlConnection sqlConnection;
        private MySqlDataAdapter sqlAdapter;

        public String image, size, address, category, rent, bedroom, bathroom, car, lift, contact, email, description, time;

        protected void Page_Load(object sender, EventArgs e)
        {
            init();

        }

        void init()
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            System.Diagnostics.Debug.WriteLine(id);

            int type = id % 10;
            id /= 10;
            if (type == 1)
            {
                obj.connect();
                String query = "SELECT * FROM tolet.residentialhouse WHERE `postId` =  '" + id + "" + "'";
                //String query = "SELECT * FROM signup WHERE `email` =  '" + fmail + "'";
                sqlCommand = new MySqlCommand(query, obj.SQLCONNECTION);

                reader = sqlCommand.ExecuteReader();

                while (reader.Read())
                {
                    image = "images\\" + reader.GetString("imageName");
                    size = reader.GetString("size");
                    address = reader.GetString("address");
                    category = reader.GetString("category");
                    rent = reader.GetString("rent");

                    bedroom = reader.GetString("bedroom");
                    bathroom = reader.GetString("bathroom");
                    car = reader.GetString("carParking");
                    lift = reader.GetString("lift");
                    contact = reader.GetString("contact");

                    email = reader.GetString("email");
                    description = reader.GetString("description");
                    time = reader.GetString("datee");

                }

            }

        }
    }
}