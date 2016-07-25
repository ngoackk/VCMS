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


/// <summary>
/// Summary description for DBA
/// </summary>
public class DBA
{

    string constr = "";
    SqlConnection con;

    SqlCommand cmd ; //= new SqlCommand("users_details");
    DataTable returnTable = new DataTable();
    SqlDataAdapter da;


	public DBA()
	{
		//
		// TODO: Add constructor logic here
		//
	}



    public DataTable DBConnectionTaskList(string SpName, int UserID, int TaskType)
    {


        constr = ConfigurationManager.ConnectionStrings["VCMS_Cnn"].ConnectionString;
        con = new SqlConnection(constr);

        cmd = new SqlCommand(SpName);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@UserID", UserID);
        cmd.Parameters.AddWithValue("@TaskType", TaskType);
        cmd.Connection = con;

        con.Open();

        cmd.ExecuteScalar();
        da = new SqlDataAdapter(cmd);
        da.Fill(returnTable);




        con.Close();

        return returnTable;

    }


    //Kết dữ liệu dùng UserID
    public DataTable DBConnection(string SpName, int UserID)
    {
       

            constr = ConfigurationManager.ConnectionStrings["VCMS_Cnn"].ConnectionString;
            con = new SqlConnection(constr);

            cmd = new SqlCommand(SpName);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserID",UserID);
            cmd.Connection = con;

            con.Open();

            cmd.ExecuteScalar();
            da = new SqlDataAdapter(cmd);
            da.Fill(returnTable);

            
            

            con.Close();

            return returnTable;

        }



    //View UserList
    public DataTable getUsersList(string SpName)
    {


        constr = ConfigurationManager.ConnectionStrings["VCMS_Cnn"].ConnectionString;
        con = new SqlConnection(constr);

        cmd = new SqlCommand(SpName);
        cmd.CommandType = CommandType.StoredProcedure;
        
        cmd.Connection = con;

        con.Open();

        cmd.ExecuteScalar();
        da = new SqlDataAdapter(cmd);
        da.Fill(returnTable);




        con.Close();

        return returnTable;

    }
        
        
}