using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Net.Mail;
using System.Text.RegularExpressions;

namespace SendMail.Controllers
{
    public class MailController : ApiController
    {
        public bool Post([FromBody]string value)
        {
            //Using this as custom regex
            if (String.IsNullOrWhiteSpace(value) || String.IsNullOrEmpty(value))
                return false;
            return Regex.IsMatch(value, @"^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$");

            ////Using this as default library
            //try
            //{
            //    MailAddress mailAddress = new MailAddress(value);
            //    return true;
            //}
            //catch (FormatException)
            //{
            //    return false;
            //}
        }
    }
}