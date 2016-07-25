<%@ Page Language="C#" AutoEventWireup="true" CodeFile="money.aspx.cs" Inherits="MEMBER_money" MasterPageFile="~/vcms.master" %>

<asp:Content ID="user_detail" ContentPlaceHolderID="CPH_MAIN" runat="server">

    
    
    <div style="text-align:center; width:100%;" >
    
        <asp:GridView ID="dgrMoney" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Caption="TÀI CHÍNH CÁ NHÂN" CellPadding="3" >
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        
    
    
    </div>



    <div class="space"></div>
    <div>
        <asp:Label ID="lbl1" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="#000099">Tổng số:</asp:Label>
        <asp:TextBox ID="txtTotal" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="#FF6600" ReadOnly="True"></asp:TextBox>
    </div>
    
</asp:Content>