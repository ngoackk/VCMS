using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class TASK_Default : System.Web.UI.Page
{
   DBA TaskOBJ = new DBA();

    DataTable tblTaskList;
    DataColumn tmpCol;

    protected void Page_Load(object sender, EventArgs e)
    {

       


        Session["TaskType"] = -1;



        GanDuLieu(dgrTaskList);


          
           

            lnkTaskUpdate.Text = "Cập nhật công việc";
            lnkTaskUpdate.PostBackUrl = "http://www.vcms.com/task/update_task.aspx";

         
            
        }

        

    





    protected void dgrTaskList_PageIndexChanged(object sender, GridViewPageEventArgs  e)
    {
        dgrTaskList.PageIndex = e.NewPageIndex;
       dgrTaskList.DataBind();
       // GanDuLieu(dgrTaskList);

    }
   


    public void GanDuLieu(GridView tmpGrid)
    {




        tblTaskList = TaskOBJ.DBConnectionTaskList("SP_TASK_VIEW", Convert.ToInt32(Session["logedUser"]), Convert.ToInt32(Session["TaskType"]));
        if (tblTaskList.Rows.Count > 0)
        {
            dgrTaskList.Caption = "Danh sách công việc";//tblTaskList.Rows[0]["Danh sách hình ảnh đăng tải"].ToString();
            tblTaskList.Columns.Add("Số TT", typeof(Int32));
            
        
            // Add thứ tự công việc vào lưới
            for (int i = 0; i < tblTaskList.Rows.Count; i++)
            {
                tblTaskList.Rows[i]["Số TT"] = i + 1;
                
            }

                tmpGrid.DataSource = tblTaskList;
                tmpGrid.DataBind();

            }

        else
        {

        }



        


    }


}

