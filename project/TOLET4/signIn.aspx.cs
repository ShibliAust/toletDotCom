using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace TOLET4
{
    public partial class signIn : System.Web.UI.Page
    {
        public userDAO obj = new userDAO();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public bool IsValidEmailAddress(string email)
        {
            try
            {
                var emailChecked = new System.Net.Mail.MailAddress(email);
                return true;
            }
            catch
            {
                return false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (email.Text != "" && password.Text != "")
            {
                if (IsValidEmailAddress(email.Text))
                {
                    if (email.Text == "admin@gmail.com" && password.Text == "a1b2c3")
                    {
                        Session["typ"] = "admin";                      
                        Session["email"] = email.Text;
                        Response.Redirect("~/mainPage.aspx");
                    }
                    else if (obj.searchUser(email.Text, password.Text))
                    {
                        Session["typ"] = "user";
                        Session["email"] = email.Text;
                        Response.Write("<script>alert('SignIn Successfully');</script>");
                        Response.Redirect("~/mainPage.aspx");

                    }
                    else
                    {
                        Response.Write("<script>alert('Wrong Email or Password!');</script>");
                    }
                }
                else
                {
                   Response.Write("<script>alert('INVALID EMAIL');</script>");
                }
            }
            
        }

        protected void email_TextChanged(object sender, EventArgs e)
        {

        }
    }
}