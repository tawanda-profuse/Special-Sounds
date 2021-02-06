using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Drawing;

namespace Movie_Rental
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_send_Click(object sender, EventArgs e)
        {
            try
            {
                var from = "youremail@gmail.com"; //youremail@gmail.com
                var to = "youremail@gmail.com"; //youremail@gmail.com
                const string Password = "YourPassword"; //YourPassword
                string mail_subject = txt_subject.Text.ToString();
                string mail_message = "Sent by: " + txt_name + "\n";
                mail_message += "Email Address: " + txt_email.Text + "\n";
                mail_message += "Phone Number: " + txt_phone.Text + "\n";
                mail_message += "Subject: " + txt_subject.Text + "\n";
                mail_message += "Message: " + txt_message.Text + "\n";

                var smtp = new SmtpClient();
                {
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587; //Standard ports: 25, 587, 465
                    smtp.EnableSsl = true;
                    smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                    smtp.Credentials = new NetworkCredential(from, Password);
                    smtp.Timeout = 20000;
                }

                smtp.Send(from, to, mail_subject, mail_message);

                Confirm();
                confirm.ForeColor = Color.Green;

                txt_name.Text = "";
                txt_email.Text = "";
                txt_phone.Text = "";
                txt_subject.Text = "";
                txt_message.Text = "";
            }
            catch (Exception)
            {
                confirm.Text = "We are experiencing some technical problems, Please try again later";
                confirm.ForeColor = Color.Red;
            }
        }

        private void Confirm()
        {
            string ToEmail = txt_email.Text.Trim();
            string UserName = txt_name.Text;
            string subject2 = txt_subject.Text;

            MailMessage mailMessage = new MailMessage("emailaddress@gmail.com", ToEmail);

            StringBuilder sbEmailBody = new StringBuilder();
            sbEmailBody.Append("Dear" + UserName);
            sbEmailBody.Append("<br/><br/>");
            sbEmailBody.Append("Thank you for contacting us, we will get back to you");
            sbEmailBody.Append("<br/><br/>");
            sbEmailBody.Append("We recieved your email regarding" + subject2 + "<br/>");
            sbEmailBody.Append("We will get back to you as soon as possible.");
            sbEmailBody.Append("<br/><br/><br/>");
            sbEmailBody.Append("Yours Sincerely, ");
            sbEmailBody.Append("Special Sounds");

            mailMessage.IsBodyHtml = true;

            mailMessage.Body = sbEmailBody.ToString();
            mailMessage.Subject = "Re: Thank you for your email";
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.Credentials = new System.Net.NetworkCredential()
            {
                UserName = "youremail@gmail.com",
                Password = "YourPassword"
            };

            smtpClient.EnableSsl = true;
            smtpClient.Send(mailMessage);
        }
    }
}