<%@ Page Language="C#" AutoEventWireup="true" CodeFile="update_task.aspx.cs" Inherits="TASK_update_task" MasterPageFile="~/vcms.master" %>


<asp:Content ID="ct_update_task" ContentPlaceHolderID="CPH_MAIN" runat="server" >

    <div id="divTaskUpdate" style="height:800px; width:800px; background-color:#0094ff;">



       <%-- <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TaskID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="TaskID" HeaderText="TaskID" InsertVisible="False" ReadOnly="True" SortExpression="TaskID" />
                <asp:BoundField DataField="TaskName" HeaderText="TaskName" SortExpression="TaskName" />
                <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate" />
                <asp:BoundField DataField="EditDate" HeaderText="EditDate" SortExpression="EditDate" />
                <asp:BoundField DataField="TaskDescription" HeaderText="TaskDescription" SortExpression="TaskDescription" />
                <asp:BoundField DataField="DeadLine" HeaderText="DeadLine" SortExpression="DeadLine" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
                <asp:BoundField DataField="ManagerID" HeaderText="ManagerID" SortExpression="ManagerID" />
                <asp:BoundField DataField="HelperID" HeaderText="HelperID" SortExpression="HelperID" />
                <asp:BoundField DataField="CompleteDate" HeaderText="CompleteDate" SortExpression="CompleteDate" />
                <asp:BoundField DataField="Priority" HeaderText="Priority" SortExpression="Priority" />
                <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>--%>



    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vcms_cnn %>" SelectCommand="SELECT * FROM [tbl_tasks]"></asp:SqlDataSource>

</asp:Content>