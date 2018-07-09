using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TOLET4
{
    public partial class residentialHouse : System.Web.UI.Page
    {
        residentialDAO obj = new residentialDAO();

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
            /*
            string fileName = Path.GetFileName(imgload.PostedFile.FileName);
            imgload.PostedFile.SaveAs(Server.MapPath("~/images/") + fileName);
            */

            
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

                image_name = "res" + total + "";

                imgload.SaveAs(SavePath + "\\" + image_name + Extention);

                image_name = "res" + total + Extention ;
                System.Diagnostics.Debug.WriteLine(image_name);

                
                

            }


            if (IsValidEmailAddress(email.Text))
            {
                System.Diagnostics.Debug.WriteLine(ddate);
                obj.addPost(new residentialDTO(title.Text, category.Items[category.SelectedIndex].Text, division.Text, district.Text, address.Text,
                    rent.Text, size.Text, description.Text, bedroom.Text, bathroom.Text, parking.Text, lift.Text, contact.Text, email.Text, image_name, ddate));



                Response.Redirect("~/residentialHouse.aspx");
            }
            else
            {
                Response.Write("<script>alert('INVALID EMAIL');</script>");
            }





        }
        
    
    


    }
}