<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="RX_Default" MasterPageFile="~/vcms.master" %>

<asp:Content ID="ctRX" runat ="server" ContentPlaceHolderID="CPH_MAIN">

   
    <div id="divTyGia" class="divTyGia">

         

    <table style="width:auto; margin:0 auto;" border="0" >
        
        



        <tr>
            <td></td>
            <td style="margin:0 auto; width:100%; text-align:center; align-items:center; align-content:center;">
               
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vcms_cnn %>" 
                    SelectCommand="SP_LAISUAT_TK" 
                   SelectCommandType="StoredProcedure"
                    ProviderName="<%$ ConnectionStrings:vcms_cnn.ProviderName %>"
                     >
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="LS_ID" PropertyName="SelectedValue" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="RETURN_VALUE" Type="Int32" Direction="ReturnValue" />
                    <asp:Parameter Name="LS_ID" Type="Int32" />
                    <asp:Parameter Name="LoaiKyHan" Type="Int32" />
                    <asp:Parameter Name="Muc1" Type="Decimal" />
                    <asp:Parameter Name="Muc2" Type="Decimal" />
                    <asp:Parameter Name="Muc3" Type="Decimal" />
                    <asp:Parameter Name="LaiTraTruoc" Type="Decimal" />
                    <asp:Parameter Name="LaiHangThang" Type="Decimal" />
                    <asp:Parameter Name="LoaiTien" Type="Int32" />
                    <asp:Parameter Name="HinhThuc" Type="Int32" />
                </UpdateParameters>
                </asp:SqlDataSource>


                
                <asp:GridView ID="grLaiSuat" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                     CellPadding="5"  DataSourceID="SqlDataSource1" 
                    Caption="LÃI XUẤT TIẾT KIỆM VNĐ " PageSize="20" 
                    style="text-align: center; align-items:center; align-content:center;" CellSpacing="2" Width="700px" Font-Bold="true" ForeColor="White">
                    <Columns>
                        
                        <asp:BoundField DataField="Loại Kỳ Hạn" HeaderText="Loại Kỳ Hạn" ReadOnly="True" SortExpression="Loại Kỳ Hạn" >
                        </asp:BoundField>
                        <asp:BoundField DataField="&lt; 0.2 tỷ" HeaderText="&lt; 0.2 tỷ" SortExpression="&lt; 0.2 tỷ" >
                        </asp:BoundField>
                        <asp:BoundField DataField=" 0.2 tỷ đến 2 tỷ" HeaderText=" 0.2 tỷ đến 2 tỷ" SortExpression=" 0.2 tỷ đến 2 tỷ" >
                        </asp:BoundField>
                        <asp:BoundField DataField="&gt; 2 tỷ" HeaderText="&gt; 2 tỷ" SortExpression="&gt; 2 tỷ" >
                        </asp:BoundField>
                        <asp:BoundField DataField="Lãi trả trước" HeaderText="Lãi trả trước" SortExpression="Lãi trả trước" >
                        </asp:BoundField>
                        <asp:BoundField DataField="Lãi hàng tháng" HeaderText="Lãi hàng tháng" SortExpression="Lãi hàng tháng" >
                        
                        </asp:BoundField>
                        
                    </Columns>
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

                    
            </td>

            <td></td>

        </tr>


    </table>

    </div>
   

    
</asp:Content>