using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TOLET4
{
    public partial class signIn : System.Web.UI.Page
    {
        public userDAO obj = new userDAO();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (obj.searchUser(email.Text, password.Text))
            {
                Response.Write("<script>alert('SignIn Successfully');</script>");
                Response.Redirect("~/mainPage.aspx");

            }
        }
    }
}