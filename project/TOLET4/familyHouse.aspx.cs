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
    public partial class familyHouse : System.Web.UI.Page
    {
        public residentialDAO obj = new residentialDAO();
        public String print = "";
        public String[] jole = new String[20];

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["typ"] == null)
            {
                Response.Redirect("~/signIn.aspx");
            }

            String id = Request.QueryString["id"];


            if (id != null)
            {
                int pp = Convert.ToInt32(id);
                System.Diagnostics.Debug.WriteLine(pp);
                for (int i = 1; i <= 12; i++)
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
            if (id != null)
            {
                int x = Convert.ToInt32(id);
                x--;
                int xx = x * 5, yy = xx + 5;


                lt = xx + "," + yy + "";

            }

            String idd = Request.QueryString["idd"];
            System.Diagnostics.Debug.WriteLine(idd);

            if (idd == "rent") init("rent", lt);
            else if (idd == "date") init("date", lt );
            else if (idd == "bed3" || idd == "bed1" || idd == "bed2" || idd == "bed4")
            {

                System.Diagnostics.Debug.WriteLine("cnt we value " + idd);
                init(idd, lt );
            }
            else init("Approved", lt );
        }
        public void init(String tmp, String lt )
        {

            obj.execute_query("residentialhouse", "Family House", tmp, lt );

        }

        protected void d_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/familyHouse.aspx?idd=date");
        }

        protected void r_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/familyHouse.aspx?idd=rent");
        }

        protected void search_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/familyHouse.aspx?idd=bed" + bed.Items[bed.SelectedIndex].Text);
        }

        protected void post_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/mypost.aspx");
        }
    }
}