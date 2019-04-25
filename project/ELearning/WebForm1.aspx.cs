using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Twilio;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;

namespace ELearning
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            const string accountSid = "AC1eb08c6f5419018f0d858442a88dd229";
            const string authToken = "97a6238b492ead699b3a6d8a88cebb49";
            TwilioClient.Init(accountSid, authToken);
            var message = MessageResource.Create(body: "Registration completed successfully",from: new Twilio.Types.PhoneNumber("+16037694884"),to: new Twilio.Types.PhoneNumber("+919747628288"));
            Console.WriteLine(message.Sid);
        }
    }
}