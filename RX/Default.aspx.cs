using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RX_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Master.Page.ClientScript.IsStartupScriptRegistered("addDivContent"))
        {
            Master.Page.ClientScript.RegisterStartupScript
                (this.GetType(), "addDivContent", "test('divTest');", true);
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        

        
        
        
        }
}