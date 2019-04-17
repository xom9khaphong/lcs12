<%@ page title="Bảng lương" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Bangluong, App_Web_sjyzhvtb" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dxwgv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    .dxpControl
{
	font: 9pt Tahoma;
	color: black;
	padding: 5px 2px 5px 2px;
}
.dxpSummary
{
	font: 9pt Tahoma;
	color: black;
	white-space: nowrap;
	text-align: center;
	vertical-align: middle;
	padding: 1px 4px 0px 4px;
}
.dxpDisabled
{
	color: #acacac;
	border-color: #808080;
	cursor: default;
}

.dxpDisabledButton
{
	font: 9pt Tahoma;
	color: black;
	text-decoration: none;
}
.dxpButton
{
	font: 9pt Tahoma;
	color: #394EA2;
	text-decoration: underline;
	white-space: nowrap;
	text-align: center;
	vertical-align: middle;
}
.dxpCurrentPageNumber
{
	font: 9pt Tahoma;
	color: black;
	font-weight: bold;
	text-decoration: none;
	padding: 1px 3px 0px 3px;
}
.dxpPageNumber
{
	font: 9pt Tahoma;
	color: #394EA2;
	text-decoration: underline;
	text-align: center;
	vertical-align: middle;
	padding: 1px 5px 0px 5px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" Runat="Server">
    BẢNG LƯƠNG
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <form id="form1" runat="server">
    <table cellpadding="4" cellspacing="4" class="style1">
        <tr>
            <td align="right" width="40%">
                Tháng</td>
            <td width="150px">
                <dxe:ASPxComboBox ID="ASPxComboBox1" runat="server" ValueType="System.String" 
                    Width="100px" >
                    <Items>
                        <dxe:ListEditItem Text="1" Value="1" />
                        <dxe:ListEditItem Text="2" Value="2" />
                        <dxe:ListEditItem Text="3" Value="3" />
                        <dxe:ListEditItem Text="4" Value="4" />
                        <dxe:ListEditItem Text="5" Value="5" />
                        <dxe:ListEditItem Text="6" Value="6" />
                        <dxe:ListEditItem Text="7" Value="7" />
                        <dxe:ListEditItem Text="8" Value="8" />
                        <dxe:ListEditItem Text="9" Value="9" />
                        <dxe:ListEditItem Text="10" Value="10" />
                        <dxe:ListEditItem Text="11" Value="11" />
                        <dxe:ListEditItem Text="12" Value="12" />
                    </Items>
                </dxe:ASPxComboBox>
            </td>
            <td>
                <dxe:ASPxButton ID="ASPxButton1" runat="server" onclick="ASPxButton1_Click" 
                    Text="Liệt kê">
                </dxe:ASPxButton>
            </td>
        </tr>
    </table>

    <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" 
        AutoGenerateColumns="False" Width="100%" >
        <SettingsBehavior ColumnResizeMode="Control" AutoExpandAllGroups="True" />
        <Columns>
            <dxwgv:GridViewDataTextColumn Caption="Phòng ban" VisibleIndex="0" 
                FieldName="tenpb" GroupIndex="0" SortIndex="0" SortOrder="Ascending">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="Họ tên" 
                VisibleIndex="1" FieldName="hoten">
                <HeaderStyle HorizontalAlign="Center" Wrap="True" />
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="Năm sinh" 
                VisibleIndex="2" FieldName="namsinh" Width="50px">
                <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                <CellStyle HorizontalAlign="Center" />
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="Chức vụ" 
                VisibleIndex="3" FieldName="tencv">
                <HeaderStyle HorizontalAlign="Center" Wrap="True" />
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="Mã ngạch" 
                VisibleIndex="4" FieldName="mangach" Width="50px">
                <HeaderStyle HorizontalAlign="Center" Wrap="True" />
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="Hệ số lương" 
                VisibleIndex="5" Width="50px" FieldName="hsluong">
                <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                <CellStyle HorizontalAlign="Center" />
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="Ngày tháng năm được xếp" 
                VisibleIndex="6" Width="100px" FieldName="ngaylam">
                <HeaderStyle HorizontalAlign="Center" Wrap="True" />
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="PC chức vụ" VisibleIndex="7" 
                Width="50px" FieldName="phucapcv">
                <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                <CellStyle HorizontalAlign="Center" >
                </CellStyle>
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="% vượt khung" VisibleIndex="8" 
                FieldName="vuotkhung" Width="50px">
                <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                <CellStyle HorizontalAlign="Center" />
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="% PC độc hại" VisibleIndex="9" 
                FieldName="pc_dochai" Width="50px">
                <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                <CellStyle HorizontalAlign="Center" />
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="% PC thâm niên nhà giáo" 
                VisibleIndex="10" Width="70px" FieldName="pc_thamnien">
                <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                <CellStyle HorizontalAlign="Center" />
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="Cộng hệ số phụ cấp" VisibleIndex="11" 
                FieldName="conghs" Width="70px">
                <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                <CellStyle HorizontalAlign="Center" />
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="Tiền theo ngạch" VisibleIndex="12" 
                FieldName="tientheongach" Width="60px">
                <PropertiesTextEdit DisplayFormatString="N0" />
                <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                <CellStyle HorizontalAlign="Right" />
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="Tiền phụ cấp chức vụ" VisibleIndex="13" 
                FieldName="tienpccv" Width="60px">
                <PropertiesTextEdit DisplayFormatString="N0" />
                <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                <CellStyle HorizontalAlign="Right" />
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="Tiền PC TN nhà giáo" VisibleIndex="14" 
                FieldName="tienpctn" Width="60px">
                <PropertiesTextEdit DisplayFormatString="N0" />
                <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                <CellStyle HorizontalAlign="Right" />
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="Tiền PC độc hại" VisibleIndex="15" 
                FieldName="tienpcdh" Width="60px">
                <PropertiesTextEdit DisplayFormatString="N0" />
                <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                <CellStyle HorizontalAlign="Right" />
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="Tiền vượt khung" VisibleIndex="16" 
                FieldName="tienvuotkhung" Width="60px">
                <PropertiesTextEdit DisplayFormatString="N0" />
                <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                <CellStyle HorizontalAlign="Right" />
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="Cộng" VisibleIndex="17" FieldName="cong" 
                Width="100px">
                <PropertiesTextEdit DisplayFormatString="N0">
                </PropertiesTextEdit>
                <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                <CellStyle HorizontalAlign="Right" />
            </dxwgv:GridViewDataTextColumn>
        </Columns>
        <Settings ShowGroupFooter="VisibleAlways" ShowGroupPanel="True" />
    </dxwgv:ASPxGridView>
    </form>
</asp:Content>

