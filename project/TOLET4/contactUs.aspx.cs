using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TOLET4
{
    public partial class contactUs : System.Web.UI.Page
    {
        contactDAO obj = new contactDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            email.Text = Session["email"].ToString();
            var id = Request.QueryString["id"];
            System.Diagnostics.Debug.WriteLine(id);
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
        protected void btnContactUs_Click(object sender, EventArgs e)
        {
            if (IsValidEmailAddress(email.Text))
            {
                String ddate = DateTime.Now.ToString("MM-dd-yyyy");
                System.Diagnostics.Debug.WriteLine(ddate);

                obj.addPost(new contactDTO(name.Text, email.Text, category.Items[category.SelectedIndex].Text, massege.Text, ddate));
                Response.Redirect("~/contactUs.aspx");
            }
            else
            {
                Response.Write("<script>alert('INVALID EMAIL');</script>");
            }

            

        }
    }
}