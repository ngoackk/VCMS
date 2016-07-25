using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MEMBER_loginStatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["logedUser"] == null)

        {

            lblLoginStatus.Text = "Đăng nhập";
        }

        else
        {

            lblLoginStatus.Text = "Đăng xuất";

        }
    }
}