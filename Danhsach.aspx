<%@ page title="Danh sách nhân sự" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Danhsach, App_Web_sjyzhvtb" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dxwgv" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>

<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dxrp" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dxp" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v9.1.Export, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView.Export" tagprefix="dxwgv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" Runat="Server">
    DANH SÁCH NHÂN SỰ THEO PHÒNG BAN
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <form id="form1" runat="server">
    <dxrp:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Width="100%" 
        HeaderText="1. Lựa chọn thông tin cần hiển thị">
        <PanelCollection>
        <dxp:PanelContent runat="server">
            <table cellpadding="3" cellspacing="3" class="style1">
                <tr>
                    <td>
                        <dxe:ASPxCheckBox ID="manv" runat="server" Text="Mã NV">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="holot" runat="server" Text="Họ lót">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="ten" runat="server" Text="Tên">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="tengt" runat="server" Text="Giới tính">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="ngaysinh" runat="server" Text="Ngày sinh">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="noisinh" runat="server" Text="Nơi sinh">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="quequan" runat="server" Text="Quê quán">
                        </dxe:ASPxCheckBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <dxe:ASPxCheckBox ID="thuongtru" runat="server" Text="Địa chỉ thường trú">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="cmnd" runat="server" Text="Số CMND">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="ngaycap" runat="server" Text="Ngày cấp">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="noicap" runat="server" Text="Nơi cấp">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="quoctich" runat="server" Text="Quốc tịch">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="dantoc" runat="server" Text="Dân tộc">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="tongiao" runat="server" Text="Tôn giáo">
                        </dxe:ASPxCheckBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <dxe:ASPxCheckBox ID="honnhan" runat="server" 
                            Text="Tình trạng hôn nhân">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="dienthoai" runat="server" Text="Điện thoại">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="email" runat="server" Text="Email">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="chuyenmon" runat="server" Text="Chuyên môn">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="tentd" runat="server" Text="Trình độ học vấn">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="tenct" runat="server" Text="Trình độ chính trị">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <dxe:ASPxCheckBox ID="tennn" runat="server" Text="Ngoại ngữ">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="tenth" runat="server" Text="Tin học">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="tenql" runat="server" Text="Quản lý nhà nước">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="ngayvaolam" runat="server" Text="Ngày vào làm">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="tentt" runat="server" Text="Loại nhân sự">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="tencv" runat="server" Text="Tên chức vụ">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="tenpb" runat="server" Text="Tên phòng ban">
                        </dxe:ASPxCheckBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <dxe:ASPxCheckBox ID="hsluong" runat="server" Text="HS lương">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="vuotkhung" runat="server" Text="Vượt khung">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="pc_dochai" runat="server" Text="PC độc hại">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        <dxe:ASPxCheckBox ID="pc_thamnien" runat="server" Text="PC thâm niên">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <dxe:ASPxButton ID="ASPxButton1" runat="server" 
                            CssFilePath="~/App_Themes/Soft Orange/{0}/styles.css" CssPostfix="Soft_Orange" 
                            Cursor="pointer" ImagePosition="Right" OnClick="ASPxButton1_Click" 
                            Text="Liệt kê">
                            <Image Url="~/ui/application_side_boxes.png" />
                        </dxe:ASPxButton>
                    </td>
                    <td>
                        <dxe:ASPxButton ID="ASPxButton3" runat="server" ImagePosition="Right" 
                            Text="Xuất PDF" OnClick="ASPxButton3_Click">
                            <Image Url="~/ui/mime_pdf.png" />
                        </dxe:ASPxButton>
                    </td>
                    <td>
                        <dxe:ASPxButton ID="ASPxButton2" runat="server" ImagePosition="Right" 
                            OnClick="ASPxButton2_Click" Text="Xuất Excel">
                            <Image Url="~/ui/page_excel.png" />
                        </dxe:ASPxButton>
                    </td>
                </tr>
            </table>
            </dxp:PanelContent>
        </PanelCollection>
    </dxrp:ASPxRoundPanel>
    <dxwgv:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server">
    </dxwgv:ASPxGridViewExporter>
    <br />
    <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" 
        AutoGenerateColumns="False" Width="100%" >
        <SettingsBehavior ColumnResizeMode="Control" AutoExpandAllGroups="True" />        
        <SettingsText GroupPanel="2. Nhấn giữ và kéo thả tiêu đề cột vào đây để nhóm theo cột đó. Nhấn giữ và di chuyển tiêu đề cột để sắp xếp thứ tự hiển thị" />
        <Settings ShowGroupFooter="VisibleAlways" ShowGroupPanel="True" />
    </dxwgv:ASPxGridView>
    </form>
    
</asp:Content>

