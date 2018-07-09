using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TOLET4
{
    public partial class viewContactus : System.Web.UI.Page
    {
        public contactDAO obj = new contactDAO();
        public String print = "";
        public String[] jole = new String[20];
        public String id = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (Session["typ"] == null)
            {
                Response.Redirect("~/signIn.aspx");
            }

            id = Request.QueryString["id"];

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

            String lt = "5";
            if (id != null)
            {
                int x = Convert.ToInt32(id);
                x--;
                int xx = x * 5, yy = xx + 5;


                lt = xx + "," + yy + "";

            }

            String utype = Session["typ"].ToString().Trim();
            System.Diagnostics.Debug.WriteLine(utype);
            if (utype == "admin")
            {
                print = "active";
            }
            else print = "disabled";
            obj.showrequest(lt);
        }

        protected void delete1_Click(object sender, EventArgs e)
        {
            obj.delete(obj.PID[1] );
            Response.Redirect("~/viewContactus.aspx?id="+id);
        }

        protected void delete2_Click(object sender, EventArgs e)
        {
            obj.delete(obj.PID[2]);
            Response.Redirect("~/viewContactus.aspx?id=" + id);
        }

        protected void delete3_Click(object sender, EventArgs e)
        {
            obj.delete(obj.PID[3]);
            Response.Redirect("~/viewContactus.aspx?id=" + id);
        }

        protected void delete4_Click(object sender, EventArgs e)
        {
            obj.delete(obj.PID[4]);
            Response.Redirect("~/viewContactus.aspx?id=" + id);
        }

        protected void delete5_Click(object sender, EventArgs e)
        {
            obj.delete(obj.PID[5]);
            Response.Redirect("~/viewContactus.aspx?id=" + id);
        }
    }
}