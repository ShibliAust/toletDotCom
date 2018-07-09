using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TOLET4
{
    public partial class pendingPost : System.Web.UI.Page
    {
        public residentialDAO obj = new residentialDAO();
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
            if (id == null) id = "1";

            if (id != null)
            {
                System.Diagnostics.Debug.WriteLine(id);
                int pp = Convert.ToInt32(id);
                
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
            obj.pendingPost(lt);
        }

        protected void app1_Click(object sender, EventArgs e)
        {
            obj.update(obj.tb[1], obj.pid[1]);
            Response.Redirect("~/pendingPost.aspx?id=" + id);
        }

        protected void app2_Click(object sender, EventArgs e)
        {
            obj.update(obj.tb[2], obj.pid[2]);
            Response.Redirect("~/pendingPost.aspx?id=" + id);
        }

        protected void app3_Click(object sender, EventArgs e)
        {
            obj.update(obj.tb[3], obj.pid[3]);
            Response.Redirect("~/pendingPost.aspx?id=" + id);
        }

        protected void app4_Click(object sender, EventArgs e)
        {
            obj.update(obj.tb[4], obj.pid[4]);
            Response.Redirect("~/pendingPost.aspx?id=" + id);
        }

        protected void app5_Click(object sender, EventArgs e)
        {
            obj.update(obj.tb[5], obj.pid[5]);
            Response.Redirect("~/pendingPost.aspx?id=" + id);
        }

        protected void delete1_Click(object sender, EventArgs e)
        {
            obj.deletePost(obj.tb[1], obj.pid[1]);
            Response.Redirect("~/pendingPost.aspx?id="+id);
        }

        protected void delete2_Click(object sender, EventArgs e)
        {
            obj.deletePost(obj.tb[2], obj.pid[2]);
            Response.Redirect("~/pendingPost.aspx?id=" + id);
        }

        protected void delete3_Click(object sender, EventArgs e)
        {
            obj.deletePost(obj.tb[3], obj.pid[3]);
            Response.Redirect("~/pendingPost.aspx?id=" + id);
        }

        protected void delete4_Click(object sender, EventArgs e)
        {
            obj.deletePost(obj.tb[4], obj.pid[4]);
            Response.Redirect("~/pendingPost.aspx?id=" + id);
        }

        protected void delete5_Click(object sender, EventArgs e)
        {
            obj.deletePost(obj.tb[5], obj.pid[5]);
            Response.Redirect("~/pendingPost.aspx?id=" + id);
        }
    }
}