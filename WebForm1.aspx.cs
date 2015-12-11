using System;
using System.Collections.Generic;
using System.IO;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        private bool _refreshState;
        private bool _isRefresh;

        protected override void LoadViewState(object savedState)
        {
            object[] AllStates = (object[])savedState;
            base.LoadViewState(AllStates[0]);
            _refreshState = bool.Parse(AllStates[1].ToString());
            _isRefresh = _refreshState == bool.Parse(Session["__ISREFRESH"].ToString());
        }

        protected override object SaveViewState()
        {
            Session["__ISREFRESH"] = _refreshState;
            object[] AllStates = new object[2];
            AllStates[0] = base.SaveViewState();
            AllStates[1] = !(_refreshState);
            return AllStates;
        }

        private void SendMail()
        {
            try
            {
               if (!_isRefresh)
            {

                //READ EMAIL TEMPLATE
                string emailMsg = "";
                string textFilePath = "";

                textFilePath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "EmailTemplates/EmailTmplate_SME.txt");
                if (!File.Exists(textFilePath)) return;

                emailMsg = File.ReadAllText(textFilePath);

                //emailMsg = emailMsg.Replace("#PM", tbDeliveryHead.Text);
                //emailMsg = emailMsg.Replace("#PROJECT_NAME", tbProjectName.Text);
                //emailMsg = emailMsg.Replace("#VERTICAL_INCHARGE", liVerticlHead.Text);
                //emailMsg = emailMsg.Replace("#DELIVERY_HEAD", tbDeliveryHead.Text);
                //emailMsg = emailMsg.Replace("#START_DATE", txtSubject.Text);
                emailMsg = emailMsg.Replace("#IDENTIFIER", txtSubject.Text);


                    //if (Session["update"].ToString() == ViewState["update"].ToString())
                    //{
                    //MailMessage message = new MailMessage(txtFrom.Text, txtTo.Text, txtSubject.Text, txtBody.Text);
                    //MailMessage message = new MailMessage("contact@svcoirexports.com", txtTo.Text, txtSubject.Text, txtBody.Text);
                    MailMessage message = new MailMessage("lnarsimha.maringanti@gvkbio.com",txtTo.Text, txtSubject.Text, emailMsg);
                    message.Body = emailMsg;
                    message.IsBodyHtml = true;
                    //SmtpClient emailClient = new SmtpClient(txtSMTPServer.Text);
                    SmtpClient emailClient = new SmtpClient("mail.gvkbio.com");
                    emailClient.Send(message);
                    litStatus.Text = "Message Sent";
                    txtBody.Text = emailMsg;
                    txtFrom.Text = "";
                    txtSMTPServer.Text = "";
                    txtSubject.Text = "";

                    emailMsg = emailMsg.Replace("#ESOURCE", "Acknowledgement");
                    MailMessage messageAck = new MailMessage("lnarsimha.maringanti@gvkbio.com", "raju.sarvasiddi@gvkbio.com", "Acknowledgement from Admin", emailMsg);            
                    messageAck.Body = emailMsg;
                    messageAck.IsBodyHtml = true;
                    SmtpClient emailClientAck = new SmtpClient("mail.gvkbio.com");
                    emailClientAck.Send(messageAck);
                    

                    //}
                }
            }

            catch (Exception ex)
            {
                Response.Write("Exception occured: " + ex.Message.ToString());
                litStatus.Text = ex.ToString();
                txtBody.Text = "";
                txtFrom.Text = "";
                txtSMTPServer.Text = "";
                txtSubject.Text = "";
            }
            finally
            {
               // Response.Redirect("WebForm2.aspx?url=WebForm1.aspx");
            }

        }  

        protected void btnSubmit_Click1(object sender, EventArgs e)
        { 
                SendMail(); 
        }
    }
}