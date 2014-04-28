using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cp18EventRegistrationWeb
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load (object sender, EventArgs e)
        {

        }

        public RegistrationInfo RegistrationInfo
        {
            get
            {
                return new RegistrationInfo
                {
                    FirstName = txtFirstname.Text,
                    LastName = txtLastname.Text,
                    Email = txtEmail.Text,
                    SelectedEvent=drpEvent.SelectedValue
                };
            }
        }

        protected void btn_Submit_Click (object sender, EventArgs e)
        {
            string selectedEvent=drpEvent.SelectedValue;
            string firstName=txtFirstname.Text;
            string lastName=txtLastname.Text;
            string email=txtEmail.Text;
            lbResult.Text = string.Format("{0} {1} selected the event {2}", firstName, lastName, selectedEvent);
        }
    }
}