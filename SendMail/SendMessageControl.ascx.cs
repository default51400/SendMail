using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SendMail.Controllers;

namespace SendMail
{
    public partial class SendMessageControl : System.Web.UI.UserControl
    {
        #region Fields

        #region Constants

        private const string EMAIL_VALUE = "EmailValue";
        private const string MESSAGE_VALUE = "MessageValue";

        #endregion Constants

        private HttpCookie _cookieMessage;
        private HttpCookie _cookieEmail;

        #endregion

        #region Methods

        protected void Page_Load(object sender, EventArgs e)
        {
            _cookieEmail = Request.Cookies[EMAIL_VALUE];
            _cookieMessage = Request.Cookies[MESSAGE_VALUE];
            if (_cookieEmail == null)
                _cookieEmail = new HttpCookie(EMAIL_VALUE);
            else
                TextEmail.Text = _cookieEmail.Value;

            if (_cookieMessage == null)
                _cookieMessage = new HttpCookie(MESSAGE_VALUE);
            else
                TextMessage.Text = _cookieMessage.Value;
        }

        protected void Send_Click(object sender, EventArgs e)
        {
            MailController mailController = new MailController();

            if (mailController.Post(TextEmail.Text))
            {
                _cookieEmail.Values.Clear();
                _cookieMessage.Values.Clear();
                Response.Redirect("Success.aspx");
            }
            else
            {
                IsValidMail.BackColor = System.Drawing.Color.Red;
                if (String.IsNullOrWhiteSpace(TextEmail.Text))
                {
                    IsValidMail.Visible = true;
                    IsValidMail.Text = "please input email";
                }
                else
                {
                    IsValidMail.Visible = true;
                    IsValidMail.Text = "email isn't valid (Example: google@gmail.com)";
                }
            }
        }

        protected void TextEmail_TextChanged(object sender, EventArgs e)
        {
            IsValidMail.Text = "";
            IsValidMail.Visible = false;
            _cookieMessage.Value = TextMessage.Text;
            _cookieEmail.Value = TextMessage.Text;
            Response.Cookies.Add(_cookieMessage);
        }

        #endregion
    }
}