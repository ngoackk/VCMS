<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" MasterPageFile="~/vcms.master" %>

<asp:Content  runat="server" ID="ctLogin" ContentPlaceHolderID="CPH_MAIN">
    <div>
       
        <table border="0" style="width:450px;" >

            <tr>

                <td style="align-items:center;">
                    <div style="text-align: center;">
                        <asp:Login ID="Login1" runat="server" OnAuthenticate="btnSubmit_Click" DestinationPageUrl="~/member/user_detail.aspx" BorderStyle="Ridge" FailureText="Đăng nhập không thành công. Vui lòng thực hiện lại." LoginButtonText="Đăng nhập" PasswordLabelText="Mật khẩu:" PasswordRequiredErrorMessage="Yêu cầu nhập mật khẩu." RememberMeSet="False" RememberMeText="Ghi nhớ cho lần sau." TitleText="Đăng nhập hệ thống" UserNameLabelText="Tên:" UserNameRequiredErrorMessage="Yêu cầu nhập tên đăng nhập." BorderPadding="2" BorderWidth="2px"></asp:Login>
                    </div>
                </td>
            </tr>

        </table>
      
    </div>
    
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vcms_cnn %>" SelectCommand="SELECT * FROM [tbl_users]"></asp:SqlDataSource>
    
</asp:Content>