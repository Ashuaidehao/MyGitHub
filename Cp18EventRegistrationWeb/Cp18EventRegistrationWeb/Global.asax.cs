using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Cp18EventRegistrationWeb
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            //程序开始时调用，初始化一个“myTest”的ApplicationState——可以被任意用户读取
            Application["myTest"] = 0;
            Application["userCount"] = 0;
        }

        protected void Session_Start(object sender,EventArgs e)
        {
            //每个Session开始时调用，初始化一个“myTest”的SessionState——只能被本Session用户读取
            Session["myTest"] = 0;

            //读写全局变量注意锁定，否则会出现线程问题！
            Application.Lock();
            Application["userCount"] = (int) Application["userCount"] + 1;
            Application.UnLock();
        }
    }
}