using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

using System.Data.SqlClient;
using System.Web.Security;

public partial class login : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {


        int userId = 0;

        Session["logedUser"] = null;

        string constr = ConfigurationManager.ConnectionStrings["VCMS_Cnn"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("Validate_User"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Username", Login1.UserName);
                cmd.Parameters.AddWithValue("@Password", Login1.Password);
                cmd.Connection = con;
                con.Open();


               

                userId = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();

                //Lưu mã người dùng cho hệ thống 
                Session["logedUser"] = userId;

                





            }
            switch (userId)
            {
                case -1:
                    Login1.FailureText = "Tên hoặc mật khẩu không đúng.";
                    break;
                case -2:
                    Login1.FailureText = "Tài khoản chưa kích hoạt";
                    break;
                default:

                    Session["lgUser"] = userId;
                  FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);

                 

                    break;
            }


        }

    }
}