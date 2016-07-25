<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="~/vcms.master" %>

<asp:Content runat="server" ID="ctDefault" ContentPlaceHolderID="CPH_MAIN">


  
    <div>

        <asp:Image ID="Image1" runat="server" Height="150px" ImageAlign="Middle" Width="150px" />
    </div>
    
  
    <div style="height:20px"></div>
    <div>
      
         <div class="">
           <asp:LinkButton ID="lnkUserDetails" runat="server" Font-Bold="false" Font-Names="Tahoma" ></asp:LinkButton>

    </div>
    </div>

   

    <div class="">
           <asp:LinkButton ID="lnkTaiChinh" runat="server" PostBackUrl="http://www.vcms.com/MEMBER/money.aspx" Font-Bold="false" Font-Names="Tahoma" >Thông tin tài chính</asp:LinkButton>

    </div>
    <div class="">
           <asp:LinkButton ID="lnkTaskMan" runat="server" Font-Bold="false" Font-Names="Tahoma" ></asp:LinkButton>

    </div>
    <div class="">
           <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="http://www.vcms.com/MEMBER/default.aspx" Font-Bold="false" Font-Names="Tahoma" >Danh sách người dùng</asp:LinkButton>

    </div>


    <div class="">
           <asp:LinkButton ID="lnkDangNhap" runat="server" Font-Bold="false" Font-Names="Tahoma" ></asp:LinkButton>

    </div>
    
    <div style="height:50px;"></div>

 

    
    <p>
    </p>


  
</asp:Content>