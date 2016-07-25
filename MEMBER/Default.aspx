<%@ Page Title="" Language="C#" MasterPageFile="~/vcms.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="MEMBER_Default" %>

<script runat="server">

    

 
</script>



<asp:Content ID="ctUsersList" ContentPlaceHolderID="CPH_MAIN" Runat="Server">

    
    
    <%//------Vùng quản lý mã và xử lý AJAX----------    %>
    
    <div id="divTime">

        <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>


          <%//------Khu vực ảnh hưởng của mã AJAX----------    %>


        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
      <ContentTemplate>
         
           <div>
              <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
         </asp:Timer>
         
               </div>
          <div>
            <asp:Label ID="Label1" runat="server" 
                 style="width:250px; height:auto; 
                vertical-align:middle;" BackColor="#ff6600" 
                ForeColor="White" Font-Bold="true" 
                Font-Size="10pt" Font-Names="Arial" 
                                Text="Thời gian" >         

            </asp:Label>

          </div>


          <div style="height:20px;"></div>

          
        
          
      </ContentTemplate>
   </asp:UpdatePanel>
           

    </div>

    <div style="height:10px;"></div>



    <div id="divUsersList">
    <asp:GridView ID="grUsersList" runat="server" 
        CellPadding="4" 
        GridLines="Vertical"
         AutoGenerateColumns="False"
        AllowPaging="True"
        DataKeyNames="Mã người dùng" 
        
        OnPageIndexChanging="grUsersList_PageIndexChanging" 
        
        Caption="DANH SÁCH THÀNH VIÊN" CaptionAlign="Top" 
        Font-Bold="False" Font-Names="Tahoma" ForeColor="#333333" 
        HorizontalAlign="Center" PageSize="6" ShowHeaderWhenEmpty="True" 
        
        Width = "600px" Height ="600px"
        
        
        >
        
        
        <EditRowStyle BackColor="#999999" />
        
        
        
        
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" BorderStyle="Ridge" BorderWidth="1px" Font-Bold="True" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" BorderStyle="Ridge" BorderWidth="1px" />
        <PagerStyle BackColor="#5D7B9D" ForeColor="White" HorizontalAlign="Center" BorderStyle="Ridge" BorderWidth="1px"  />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

        <Columns>

            <asp:ImageField DataImageUrlField="UImage"    HeaderText="Ảnh">
                <ControlStyle Height="30px" Width="30px"></ControlStyle>

            </asp:ImageField>

            <asp:BoundField DataField="Họ và tên"  HeaderText="Họ và tên">
            
                <ItemStyle HorizontalAlign="Left"></ItemStyle>
            </asp:BoundField>
            
            <asp:BoundField DataField="Mã người dùng" HeaderText="Mã nhân viên"/>


        </Columns>

       

    </asp:GridView>
        </div>

</asp:Content>

