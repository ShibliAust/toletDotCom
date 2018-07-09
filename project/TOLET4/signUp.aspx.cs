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
            if (email.Text != "")
            {
                if (IsValidEmailAddress(email.Text))
                {
                    Boolean ok = true;
                    System.Diagnostics.Debug.WriteLine(ok);
                    if (password.Text != confirmpass.Text) ok = false;

                    if (obj.searchUser(email.Text))
                    {
                        ok = false;
                        Response.Write("<script>alert('Email is already in use!');</script>");
                    }
                    else
                    {
                        if (ok)
                        {
                            System.Diagnostics.Debug.WriteLine("contact jaitese "+contact.Text);
                            obj.addUser(new userDTO(name.Text, password.Text, email.Text, contact.Text));
                            Response.Redirect("~/signIn.aspx");
                        }
                        else
                        {
                            Response.Write("<script>alert('Passwords do not match!');</script>");
                        }
                    }
                }
                else
                {
                    Response.Write("<script>alert('INVALID EMAIL');</script>");
                }
            }
            


        }
    }
}