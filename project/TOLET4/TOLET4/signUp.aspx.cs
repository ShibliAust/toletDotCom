using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TOLET4
{
    public partial class signUp : System.Web.UI.Page
    {
        userDAO obj = new userDAO();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Boolean ok = true;
            System.Diagnostics.Debug.WriteLine(ok);
            if (password.Text != confirmpass.Text) ok = false;

            if (obj.searchUser(email.Text))
            {
                ok = false;
                Response.Write("<script>alert('Email not Available');</script>");
            }

            if (ok)
            {
                obj.addUser(new userDTO(name.Text, password.Text, email.Text, contact.Text));
                Response.Redirect("~/coverPage.aspx");
            }


        }
    }
}