using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cp18EventRegistrationWeb
{
    public partial class UpdatePanelWithTrigger : System.Web.UI.Page
    {
        protected void Page_Load (object sender, EventArgs e)
        {

        }


        //默认状态下两个panel都会刷新，无论点击哪个的按钮
        //修改update panel的UpdateMode属性，各自刷新自己
        //为某一个panel添加Triggers，可以自定义刷新方式
        protected void OnButtonClick(object sender,EventArgs e)
        {
            DateTime now=DateTime.Now;
            Label1.Text = now.ToLongTimeString();
            Label2.Text = now.ToLongTimeString();
        }
    }
}