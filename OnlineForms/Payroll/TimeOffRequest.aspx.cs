using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineForms
{
    public partial class TimeOffRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnSubmit(object sender, EventArgs e)
        {
            string emailContent = "Time Off Request from employee group: " + 
                drpdnEmpGroup.SelectedValue +
                ". Employee: " + txtbxEmpName.Text + " for: " + cldStartDate.SelectedDate.ToShortDateString() +
                " " + txtbxStartTime.Text + " To: " + cldEndDate.SelectedDate.ToShortDateString() + " " + txtbxEndTime.Text +
                " Time Off Type: " + drpdnType.SelectedValue +
                " with Comment: " + txtbxComment.Text;

            MailMessage mail = new MailMessage(txtbxEmpEmail.Text, txtbxManagerEmail.Text + "; payroll@ruan.com");
            mail.Subject = "Time Off Request from " + txtbxEmpName.Text;
            mail.Body = emailContent;

            SmtpClient client = new SmtpClient("exchsvc3.corp.ruan.com");
            try
            {
                client.Send(mail);
                
                lbErrMsg.Text = "Success.";
            }
            catch (Exception ex)
            {
                string errMsg = ex.Message;
                if (ex.InnerException != null) errMsg += ex.InnerException.Message;
                if (ex.InnerException.InnerException != null) errMsg += ex.InnerException.InnerException.Message;
                lbErrMsg.Text = "Email fail. " + errMsg;

            }
        }
    }
}