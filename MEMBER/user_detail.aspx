<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_detail.aspx.cs" Inherits="MEMBER_user_detail" MasterPageFile="~/vcms.master" %>

<asp:Content ID="user_detail" ContentPlaceHolderID="CPH_MAIN" runat="server">
    <div>



        <asp:GridView ID="dgrUserDetail" runat="server" Caption="" CellPadding="4" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>



    </div>
    
</asp:Content>