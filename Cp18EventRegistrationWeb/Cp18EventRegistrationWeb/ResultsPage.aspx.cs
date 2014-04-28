using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cp18EventRegistrationWeb
{
    public partial class ResultsPage : System.Web.UI.Page
    {
        protected void Page_Load (object sender, EventArgs e)
        {
            try
            {
                if(!PreviousPage.IsValid)
                {
                    lbResult.Text = "未验证输入";
                    return;
                }
                RegistrationInfo ri=PreviousPage.RegistrationInfo;

                //获取前一页面的控件值
                //DropDownList drp=(DropDownList) PreviousPage.FindControl("drpEvent");
                //string selectedEvent=drp.SelectedValue;
                //string firstName=((TextBox) PreviousPage.FindControl("txtFirstname")).Text;
                //string lastName=((TextBox) PreviousPage.FindControl("txtLastname")).Text;
                //string email=((TextBox) PreviousPage.FindControl("txtEmail")).Text;
                lbResult.Text = string.Format("{0} {1} selected event {2}", ri.FirstName, ri.LastName, ri.SelectedEvent);
            }
            catch
            {
                lbResult.Text = "原页面缺少制定数据";
            }
        }
    }
}