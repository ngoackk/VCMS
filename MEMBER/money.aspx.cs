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

public partial class MEMBER_money : System.Web.UI.Page
{

    DBA moneyOBJ = new DBA();

    DataTable tblMoney;

    object sumOBJ;
    protected void Page_Load(object sender, EventArgs e)
    {

        tblMoney = moneyOBJ.DBConnection("SP_LIST_MONEY", Convert.ToInt32(Session["logedUser"]));


        if (tblMoney.Rows.Count > 0)
        {


            sumOBJ = tblMoney.Compute("sum(Tiền)", "");



            dgrMoney.DataSource = tblMoney;


            dgrMoney.DataBind();


            txtTotal.Text = Convert.ToDecimal(sumOBJ.ToString()).ToString("#,##0.00");
        }

        else
        { 
            
        }
    }
}