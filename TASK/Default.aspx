<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="TASK_Default" MasterPageFile="~/vcms.master" %>

<asp:Content ID="ctTaskList" ContentPlaceHolderID="CPH_MAIN" runat="server">


    


    






    <div id="Hiển thị List công việc">


        <table id="tblViewTask" border="1" >


           

        <tr>
            

            <td>
        <asp:GridView ID="dgrTaskList" runat="server"
             BackColor="White" BorderColor="#CC9966" BorderStyle="None" 
            BorderWidth="1px" CellPadding="5" AllowPaging="True" AllowSorting="false" 
            CellSpacing="1" HorizontalAlign="Center" 
            OnPageIndexChanging="dgrTaskList_PageIndexChanged" PageSize="8"
            >
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        
            <RowStyle BackColor="White" ForeColor="#330099"  />

        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
            

           
           

   
    </asp:GridView>

   


          </td>
          </tr>

          </table>
 
        </div>



    <div id="divLinBreak" class="GridViewItemsLeft"></div>

    
    <div id="LinkToTaskUpdate">
        <asp:LinkButton ID="lnkTaskUpdate" runat="server"></asp:LinkButton>

    </div>

</asp:Content>