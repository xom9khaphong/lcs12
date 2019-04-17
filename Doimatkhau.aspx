<%@ page title="Đổi mật khẩu" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Doimatkhau, App_Web_sjyzhvtb" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dxrp" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dxp" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dxwgv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" Runat="Server">
    ĐỔI MẬT KHẨU
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
        <table cellpadding="5" cellspacing="5" class="style1" width="100%">
            <tr>
                <td align="right" width="40%">
                    Mật khẩu cũ:</td>
                <td>
                    <dxe:ASPxTextBox ID="txtMatkhau" runat="server" Password="True">
                    </dxe:ASPxTextBox>
                </td>
            </tr>
            <tr>
                <td align="right" width="40%">
                    Nhập mật khẩu mới:</td>
                <td>
                    <dxe:ASPxTextBox ID="txtMatkhauMoi" runat="server" Password="True">
                    </dxe:ASPxTextBox>
                </td>
            </tr>
            <tr>
                <td align="right" width="40%">
                    Lặp lại mật khẩu mới:</td>
                <td style="margin-left: 400px">
                    <dxe:ASPxTextBox ID="txtReMatkhauMoi" runat="server" Password="True">
                    </dxe:ASPxTextBox>
                </td>
            </tr>
            <tr>
                <td align="right" width="40%">
                    &nbsp;</td>
                <td style="margin-left: 400px">
                    <dxe:ASPxButton ID="ASPxButton1" runat="server" 
                        CssFilePath="~/App_Themes/Soft Orange/{0}/styles.css" CssPostfix="Soft_Orange" 
                        Cursor="pointer" ImagePosition="Right" OnClick="ASPxButton1_Click" 
                        Text="Đồng ý">
                    </dxe:ASPxButton>
                </td>
            </tr>
            <tr>
                <td align="right" width="40%">
                    &nbsp;</td>
                <td style="margin-left: 400px">
                    <dxe:ASPxLabel ID="ASPxLabel1" runat="server" ForeColor="#FF3300">
                    </dxe:ASPxLabel>
                </td>
            </tr>
        </table>
    </asp:Panel>
    
    </form>
</asp:Content>

