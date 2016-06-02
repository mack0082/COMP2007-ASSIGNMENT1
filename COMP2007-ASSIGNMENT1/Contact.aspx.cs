using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;

namespace COMP2007_ASSIGNMENT1
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { }
        /**
        * This Code Sent data to email
        * when user hit submit
        **/
        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            try
            {
                MailMessage Msg = new MailMessage();
                //Sender e-mail address.
                Msg.From = new MailAddress(email.Text);
                //Recipient e-mail address.
                Msg.To.Add("sender@gmail.com");
                //Meaages Subject
                Msg.Subject = "Contact Us ";
                StringBuilder sb = new StringBuilder();
                sb.Append("Name :" + fname.Text + "\r\n");
                sb.Append("Contact:" + phone.Text + "\r\n");
                sb.Append("Email:" + email.Text + "\r\n");
                sb.Append("Message:" + message.Text + "\r\n");

                Msg.Body = sb.ToString();
                // SMTP server IP.
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 25;
                smtp.Credentials = new System.Net.NetworkCredential("sender@gmail.com", "password");
                smtp.EnableSsl = true;
                smtp.Send(Msg);
                //Mail Message
                Response.Write("<Script>alert('Thanks for contact us,our team will be contact you as soon as possible')</Script>");
                // Clear the textbox values
                fname.Text = "";
                phone.Text = "";
                email.Text = "";
                message.Text = "";
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }
        }
    }
}
    
