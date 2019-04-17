<%@ page title="Tìm kiếm" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Timkiem, App_Web_sjyzhvtb" %>

<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dxrp" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dxp" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dxwgv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="TitleContent">
    TÌM KIẾM NHÂN SỰ
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table cellpadding="5" cellspacing="5" class="style1">
            <tr>
                <td align="right">
                    Mã NV</td>
                <td>
                    <dxe:ASPxTextBox ID="txtMaNV" runat="server" Width="200px">
                    </dxe:ASPxTextBox>
                </td>
                <td align="right">
                    Họ tên</td>
                <td>
                    <dxe:ASPxTextBox ID="txtHoten" runat="server" Width="200px">
                    </dxe:ASPxTextBox>
                </td>
                <td align="Right">
                    Phòng ban</td>
                <td>
                    <dxe:ASPxComboBox ID="cbPhongban" runat="server" EnableIncrementalFiltering="True" 
                        ValueType="System.String" 
                        ValueField="_id" TextField="tenpb" Width="200px">
                        <Columns>
                            <dxe:ListBoxColumn Caption="ID" FieldName="_id" Name="_idPB" Visible="false" />
                            <dxe:ListBoxColumn Caption="Chọn 1 loại" FieldName="tenpb" Name="tenpb" />
                        </Columns>
                    </dxe:ASPxComboBox>
                </td>
                <td align="right">
                    Chức vụ</td>
                <td>
                    <dxe:ASPxComboBox ID="cbChucvu" runat="server" EnableIncrementalFiltering="True" 
                        ValueType="System.String" Width="200px" ValueField="_id" TextField="tencv">
                        <Columns>
                            <dxe:ListBoxColumn Caption="ID" FieldName="_id" Name="_idCV" Visible="false" />
                            <dxe:ListBoxColumn Caption="Chọn 1 loại" FieldName="tencv" Name="tencv" />
                        </Columns>
                    </dxe:ASPxComboBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    Giới tính</td>
                <td>
                    <dxe:ASPxComboBox ID="cbGioitinh" runat="server" 
                        ValueType="System.String" Width="200px" DropDownStyle="DropDown" 
                        TextField="tengt" ValueField="_id">
                        <Columns>
                            <dxe:ListBoxColumn Caption="ID" FieldName="_id" Name="_idGT" Visible="false" />
                            <dxe:ListBoxColumn Caption="Chọn 1 loại" FieldName="tengt" Name="tengt" />
                        </Columns>
                    </dxe:ASPxComboBox>
                </td>
                <td align="right">
                    Trình độ chuyên môn</td>
                <td>
                    
                    <dxe:ASPxTextBox ID="txtChuyenmon" runat="server" Width="200px">
                    </dxe:ASPxTextBox>
                    
                </td>
                <td align="Right">
                    Trình độ chính trị</td>
                <td>
                    <dxe:ASPxComboBox ID="cbChinhtri" runat="server" EnableIncrementalFiltering="True" 
                        ValueType="System.String" Width="200px" ValueField="_id" TextField="tenct">
                        <Columns>
                            <dxe:ListBoxColumn Caption="ID" FieldName="_id" Name="_idCT" Visible="false" />
                            <dxe:ListBoxColumn Caption="Chọn 1 loại" FieldName="tenct" Name="tenct" />
                        </Columns>
                    </dxe:ASPxComboBox>
                </td>
                <td align="right">
                    Ngoại ngữ</td>
                <td>
                    <dxe:ASPxComboBox ID="cbNgoaingu" runat="server" EnableIncrementalFiltering="True" 
                        ValueType="System.String" Width="200px" ValueField="_id" TextField="tennn">
                        <Columns>
                            <dxe:ListBoxColumn Caption="ID" FieldName="_id" Name="_idNN" Visible="false" />
                            <dxe:ListBoxColumn Caption="Chọn 1 loại" FieldName="tennn" Name="tennn"/>
                        </Columns>
                    </dxe:ASPxComboBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    Loại nhân viên</td>
                <td>
                    <dxe:ASPxComboBox ID="cbTinhtrang" runat="server" EnableIncrementalFiltering="True" 
                        ValueType="System.String" Width="200px" ValueField="_id" TextField="tentt">
                        <Columns>
                            <dxe:ListBoxColumn Caption="ID" FieldName="_id" Name="_idTT" Visible="false" />
                            <dxe:ListBoxColumn Caption="Chọn 1 loại" FieldName="tentt" Name="tentt" />
                        </Columns>
                    </dxe:ASPxComboBox>
                </td>
                <td align="right">
                    Thâm niên</td>
                <td>
                    <table border="0" cellpadding="3" cellspacing="3" width="190px">
                        <tr>
                            <td>
                                <dxe:ASPxComboBox ID="cbSosanh" runat="server" EnableIncrementalFiltering="True" 
                                    ValueType="System.String" Width="50px" SelectedIndex="0">
                                    <Items>
                                        <dxe:ListEditItem Text="=" Value="=" />
                                        <dxe:ListEditItem Text="&gt;" Value="&gt;" />
                                        <dxe:ListEditItem Text="&lt;" Value="&lt;" />
                                    </Items>
                                </dxe:ASPxComboBox>                    
                            </td>
                            <td>
                                <dxe:ASPxTextBox ID="txtThamnien" runat="server" Width="100px">
                                </dxe:ASPxTextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="Right">
                    Trình độ học vấn</td>
                <td align="left">
                    <dxe:ASPxComboBox ID="cbHocvan" runat="server" 
                        EnableIncrementalFiltering="True" TextField="tentd" ValueField="_id" 
                        ValueType="System.String" Width="200px">
                        <Columns>
                            <dxe:ListBoxColumn Caption="ID" FieldName="_id" Name="_idHV" Visible="false" />
                            <dxe:ListBoxColumn Caption="Chọn 1 loại" FieldName="tentd" Name="tentd" />
                        </Columns>
                    </dxe:ASPxComboBox>
                </td>
                <td align="right">
                    &nbsp;</td>
                <td>
                    <dxe:ASPxCheckBox ID="ASPxCheckBox1" runat="server" Text="Đảng viên">
                    </dxe:ASPxCheckBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    Quê quán</td>
                <td>
                    <dxe:ASPxTextBox ID="txtQuequan" runat="server" Width="200px">
                    </dxe:ASPxTextBox>
                </td>
                <td align="right">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="Right">
                    &nbsp;</td>
                <td align="right">
                    &nbsp;</td>
                <td align="right">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>

    

    <dxp:ASPxPanel ID="ASPxPanel1" runat="server" Width="90%" >
        <Paddings Padding="10px" />
        <PanelCollection>
            <dxp:PanelContent runat="server">
                <dxe:ASPxButton ID="ASPxButton2" runat="server" Text="Xuất chi tiết nhân viên" 
                    style="float: left" CssFilePath="~/App_Themes/Aqua/{0}/styles.css" 
                    CssPostfix="Aqua" OnClick="ASPxButton2_Click">
                    </dxe:ASPxButton>
                    
                <dxe:ASPxButton ID="ASPxButton3" runat="server" Text="Xuất danh sách file Excel" 
                    style="float: left; margin-left: 20px;" CssFilePath="~/App_Themes/Aqua/{0}/styles.css" 
                    CssPostfix="Aqua" OnClick="ASPxButton3_Click">
                    </dxe:ASPxButton>
                
                <dxe:ASPxLabel ID="lbThongbao" runat="server" style=" margin-left: 20px;" 
                    Font-Bold="True" ForeColor="Red">
                </dxe:ASPxLabel>
                
                <dxe:ASPxButton ID="ASPxButton1" runat="server" style="float: right"
                    CssFilePath="~/App_Themes/Soft Orange/{0}/styles.css" CssPostfix="Soft_Orange" 
                    Cursor="pointer" Text="Tìm kiếm" ImagePosition="Right" 
                    OnClick="ASPxButton1_Click">
                    <Image Url="~/ui/search_go.png" />
                </dxe:ASPxButton>
                <div class="clear"></div>
            </dxp:PanelContent>
        </PanelCollection>
    </dxp:ASPxPanel>
    
    <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" 
        AutoGenerateColumns="False" Width="100%" KeyFieldName="manv" 
        onfocusedrowchanged="ASPxGridView1_FocusedRowChanged" 
        onrowdeleting="ASPxGridView1_RowDeleting">
        <SettingsBehavior AllowFocusedRow="True" 
            ProcessFocusedRowChangedOnServer="True" ConfirmDelete="True" />
        <SettingsText CommandDelete="Xóa" 
            ConfirmDelete="Bạn chắc chắn xóa nhân sự này" />
        <Columns>
            <dxwgv:GridViewCommandColumn VisibleIndex="0" Width="50px" Name="#" HeaderStyle-HorizontalAlign="Center">
                <DeleteButton Visible="True">
                </DeleteButton>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
            </dxwgv:GridViewCommandColumn>
            <dxwgv:GridViewDataTextColumn Caption="Mã NV" FieldName="manv" VisibleIndex="1">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="Họ tên" FieldName="hoten" 
                VisibleIndex="2">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="Ngày sinh" FieldName="ngaysinh" 
                VisibleIndex="3">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="Giới tính" FieldName="tengt" 
                VisibleIndex="4">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="Địa chỉ" FieldName="diachi" 
                VisibleIndex="5">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="Phòng ban" FieldName="tenpb" 
                VisibleIndex="6">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="Chức vụ" FieldName="tencv" 
                VisibleIndex="7">
            </dxwgv:GridViewDataTextColumn>
        </Columns>
    </dxwgv:ASPxGridView>
    <br />
    </form>


</asp:Content>

