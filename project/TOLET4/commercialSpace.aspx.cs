using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TOLET4
{
    public partial class commercialSpace : System.Web.UI.Page
    {
        commercialDAO obj = new commercialDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            email.Text = Session["email"].ToString();
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
            String ddate = DateTime.Now.ToString("MM-dd-yyyy");
            int total = obj.nextPostId();
            String image_name = "unavailable";




            if (imgload.HasFile)
            {
                String SavePath = Server.MapPath("~/images/");
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                String Extention = Path.GetExtension(imgload.PostedFile.FileName);

                image_name = "comm" + total + "";

                imgload.SaveAs(SavePath + "\\" + image_name + Extention);

                image_name = "comm" + total + Extention;
                System.Diagnostics.Debug.WriteLine(image_name);
            }

            if (IsValidEmailAddress(email.Text))
            {
                obj.addPost(new commercialDTO(title.Text, category.Items[category.SelectedIndex].Text, division.Text, district.Text, address.Text,
                rent.Text, size.Text, description.Text, parking.Text, lift.Text, contact.Text, email.Text, image_name, ddate));


                Response.Redirect("~/commercialSpace.aspx");
            }
            else
            {
                Response.Write("<script>alert('INVALID EMAIL');</script>");
            }



        }
    }
}