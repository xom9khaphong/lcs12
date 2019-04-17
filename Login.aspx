<%@ page language="C#" autoeventwireup="true" inherits="Login, App_Web_i6s8pmzs" %>

<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dxrp" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dxp" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login page</title>
    <link rel="Stylesheet" type="text/css" href="includes/css.css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 76px;
        }
    </style>
</head>
<body>

<div class="panel bCorner bDefault bMargin">
	<div class="nameHR">CHƯƠNG TRÌNH QUẢN LÝ NHÂN SỰ - HRM</div>
</div>
    <form id="form1" runat="server">
    <div style="width: 400px; margin: 0 auto; margin-top: 100px;">
        <dxrp:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Width="109%" 
            HeaderText="Đăng nhập hệ thống">
            <PanelCollection>
<dxp:PanelContent runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style2">
                <dxe:ASPxImage ID="ASPxImage1" runat="server" ImageUrl="~/ui/user_male.png">
                </dxe:ASPxImage>
            </td>
            <td>
                <table cellpadding="5" cellspacing="5" class="style1">
                    <tr>
                        <td align="right">
                            Email</td>
                        <td>
                            <dxe:ASPxTextBox ID="txtUsername" runat="server" Width="170px">
                            </dxe:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Mật khẩu</td>
                        <td>
                            <dxe:ASPxTextBox ID="txtPassword" runat="server" Password="True" Width="170px">
                            </dxe:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            &nbsp;</td>
                        <td>
                            <dxe:ASPxButton ID="ASPxButton1" runat="server" OnClick="ASPxButton1_Click" 
                                Text="Đăng nhập">
                            </dxe:ASPxButton>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            &nbsp;</td>
                        <td>
                            <dxe:ASPxLabel ID="lbThongbao" runat="server" ForeColor="Red">
                            </dxe:ASPxLabel>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
                </dxp:PanelContent>
</PanelCollection>
        </dxrp:ASPxRoundPanel>
    </div>
    </form>
</body>
</html>
