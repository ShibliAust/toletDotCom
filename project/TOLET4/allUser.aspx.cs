using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TOLET4
{
    public partial class allUser : System.Web.UI.Page
    {
        public userDAO obj = new userDAO();
        public String print = "";
        public String[] jole = new String[20];
        public string id = "";
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


            System.Diagnostics.Debug.WriteLine(id);

            String lt = "5";
            if (id != null)
            {
                int x = Convert.ToInt32(id);
                x--;
                int xx = x * 5, yy = xx + 5;


                lt = xx + "," + yy + "";

            }
            obj.showall(lt);
            for( int i = 1; i <= 5; i++)
            {
                System.Diagnostics.Debug.WriteLine(obj.contact[i]);
            }
        }

        protected void delete1_Click(object sender, EventArgs e)
        {
            obj.delete(obj.email[1]);
            Response.Redirect("~/allUser.aspx?id="+id);
        }

        protected void delete2_Click(object sender, EventArgs e)
        {
            obj.delete(obj.email[2]);
            Response.Redirect("~/allUser.aspx?id=" + id);
        }

        protected void delete3_Click(object sender, EventArgs e)
        {
            obj.delete(obj.email[3]);
            Response.Redirect("~/allUser.aspx?id=" + id);
        }

        protected void delete4_Click(object sender, EventArgs e)
        {
            obj.delete(obj.email[4]);
            Response.Redirect("~/allUser.aspx?id=" + id);
        }

        protected void delete5_Click(object sender, EventArgs e)
        {
            obj.delete(obj.email[5]);
            Response.Redirect("~/allUser.aspx?id=" + id);
        }
    }
}