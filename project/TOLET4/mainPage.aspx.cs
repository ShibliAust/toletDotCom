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
        
        public residentialDAO obj = new residentialDAO();
        public MySqlCommand sqlCommand;
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
        String ped = "Approved";

        public String[] jole= new String[20];




        public String temp = "moreDetail.aspx?id=";
        protected void Page_Load(object sender, EventArgs e)
        {
            if( Session["typ"] == null)
            {
                Response.Redirect("~/signIn.aspx");
            }
            
            String id = Request.QueryString["id"];

            if (id != null)
            {
                int pp = Convert.ToInt32(id);
                System.Diagnostics.Debug.WriteLine(pp);
                for ( int i = 1; i <= 12; i++)
                {
                    if (i == pp) jole[i] = "active";
                    else jole[i] = "";
                }
            }
            else
            {
                jole[1] = "active";
            }
            
            System.Diagnostics.Debug.WriteLine(id);

            String lt = "5";
            if( id != null)
            {
                int x = Convert.ToInt32(id);
                x--;
                int xx = x * 5, yy = xx + 5;
               
           
                lt = xx + "," + yy + "";

            }
            
            init("Approved", lt );
        }

        public void init(String tmp, String lt )
        {
            obj.showall(tmp, lt );

           
        }

        protected void post_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/mypost.aspx");
        }
    }
}