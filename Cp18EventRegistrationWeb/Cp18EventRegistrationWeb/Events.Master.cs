using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cp18EventRegistrationWeb
{
    public partial class Events : System.Web.UI.MasterPage
    {
        protected void Page_Load (object sender, EventArgs e)
        {

        }


        void Page_PreInit(object sender,EventArgs e)
        {
            if(Request.UserAgent.Contains("MSIE"))
            {
                this.MasterPageFile = "~/IE.master";
            }
            else
            {
                this.MasterPageFile = "~/Default.master";
            }
        }
    }
}