using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SL_JEWELLERY
{
    public partial class Contactus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("sljewellery23@gmail.com", "23111995");

            smtpClient.Credentials = credentials;

            MailMessage msg = new MailMessage("sljewellery23@gmail.com", "sljewellery23@gmail.com");
            msg.Subject = "Name: " + TextName.Text + "Subject: " + TextSubject.Text;
            msg.Body = TextYourMessage.Text;
            

            try
            {
                smtpClient.Send(msg);
                LitMessage.Text = "<p>SUCCESS! Message sent. </p>";
            }
            catch(Exception exp)
            {
                LitMessage.Text = "<p>Send failed: " + exp.Message + ":" + exp.InnerException + "</p>";
            }
        }
    }
 }