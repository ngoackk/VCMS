using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

using System.Data.SqlClient;

public partial class MEMBER_user_detail : System.Web.UI.Page
{
    DBA moneyOBJ = new DBA();

    DataTable tblUsers;

    object sumOBJ;


    
    protected void Page_Load(object sender, EventArgs e)
    {
        tblUsers = moneyOBJ.DBConnection("USERS_DETAILS", Convert.ToInt32(Session["logedUser"]));
        if (tblUsers.Rows.Count > 0)
        {
            dgrUserDetail.Caption = tblUsers.Rows[0]["Họ và tên"].ToString();

            dgrUserDetail.DataSource = tblUsers;



            dgrUserDetail.DataBind();
        }

        else
        { 
        
        }

    }
}