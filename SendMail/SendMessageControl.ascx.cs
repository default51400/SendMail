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
        HttpCookie _cookieMessage;
        HttpCookie _cookieEmail;
        #endregion

        #region Methods
        protected void Page_Load(object sender, EventArgs e)
        {
            _cookieEmail = Request.Cookies["EmailValue"];
            _cookieMessage = Request.Cookies["MessageValue"];
            if (_cookieEmail == null)
                _cookieEmail = new HttpCookie("EmailValue");
            else
                TextEmail.Text = _cookieEmail.Value;

            if (_cookieMessage == null)
                _cookieMessage = new HttpCookie("MessageValue");
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
                if (String.IsNullOrEmpty(TextEmail.Text))
                    IsValidMail.Text = "please input email";
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