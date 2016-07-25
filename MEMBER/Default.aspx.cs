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

public partial class MEMBER_Default : System.Web.UI.Page
{

    //string constr = "";
    //SqlConnection con;

    SqlCommand cmd = new SqlCommand("SP_USERS_LIST");
    DataTable tblUsers = new DataTable();
    //SqlDataAdapter da;

    DBA objUser = new DBA();


    protected void Page_Load(object sender, EventArgs e)
    {



        if (Session["logedUser"] == null)
        {

            Response.Redirect("httm://wwww.vcms.com/login.aspx");
        }

        else


        {
            GanDuLieu(grUsersList);


            }



        }



    public void GanDuLieu(GridView grView)
    {
        tblUsers = objUser.getUsersList("SP_USERS_LIST");


        if (tblUsers.Rows.Count >= 1)
        {

            grView.DataSource = tblUsers;
            grView.DataBind();






        }
        else
        {


        }
    }



    protected void Timer1_Tick(object sender, EventArgs e)
    {
        string time = DateTime.Now.ToLongTimeString();
        Label1.Text = "Bây giờ là: "+time;
    }
   
    protected void grUsersList_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void grUsersList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grUsersList.PageIndex = e.NewPageIndex;
        grUsersList.DataBind();
        
    }
}