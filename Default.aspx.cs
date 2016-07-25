using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;



public partial class _Default : System.Web.UI.Page
{

    string constr = "";
    SqlConnection con;

    SqlCommand cmd = new SqlCommand("users_details");
    DataTable tblUsers = new DataTable();
    SqlDataAdapter da ;


    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["logedUser"] == null)
        {

            Response.Redirect("login.aspx");
        }

        else
        {
            lnkDangNhap.PostBackUrl = "http://www.vcms.com/logout.aspx";
            lnkDangNhap.Text = "Đăng xuất";
            



            constr = ConfigurationManager.ConnectionStrings["VCMS_Cnn"].ConnectionString;
            con = new SqlConnection(constr);


            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserID", Session["lgUser"]);
            cmd.Connection = con;

            con.Open();

            cmd.ExecuteScalar();
            da = new SqlDataAdapter(cmd);
            da.Fill(tblUsers);

            
            Image1.ImageUrl = tblUsers.Rows[0]["uimage"].ToString();

        

            lnkUserDetails.Text = tblUsers.Rows[0]["Họ và tên"].ToString();
            lnkUserDetails.PostBackUrl = "http://www.vcms.com/member/user_detail.aspx?ctl=" + Session["lgUser"];


            //Nếu đăng nhập thành công thì có danh mục tương ứng
            lnkTaskMan.Text = "Danh sách công việc";
            lnkTaskMan.PostBackUrl = "http://www.vcms.com/task/default.aspx";

            con.Close();

            

        }
        
    }
}