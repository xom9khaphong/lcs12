<%@ page title="Nhân viên" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Nhanvien, App_Web_sjyzhvtb" %>

<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dxrp" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dxp" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>

<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxUploadControl" tagprefix="dxuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
.dxeButtonEdit
{
    background-color: white;
    border: solid 1px #9F9F9F;
    width: 170px;
}

.dxeEditArea 
{
	font-family: Tahoma;
	font-size: 9pt;
	border: 1px solid #A0A0A0;
}
.dxeButtonEditButton,
.dxeSpinIncButton, .dxeSpinDecButton, .dxeSpinLargeIncButton, .dxeSpinLargeDecButton
{
    padding: 0px 2px 0px 3px;
	
    background-repeat: repeat-x;
    background-position: top;    
    background-color: #e6e6e6;
}
.dxeButtonEditButton, .dxeCalendarButton,
.dxeSpinIncButton, .dxeSpinDecButton,
.dxeSpinLargeIncButton, .dxeSpinLargeDecButton
{	
	vertical-align: middle;
	border: solid 1px #7f7f7f;
	cursor: pointer;
	cursor: hand;
} 
        .dxbButton_Soft_Orange
{	
	color: #FFFFFF;
	font-weight:normal;	
    font-size: 9pt;
    font-family: Tahoma;				    
    vertical-align: middle;	 		
    border: solid 1px #cb4b31;	
    background: #EF643C url('App_Themes/Soft%20Orange/Editors/edtButtonBack.gif') repeat-x 50% top;
    padding: 1px 1px 1px 1px;
	cursor: pointer;
	cursor: hand;
}
        .style1
        {
            width: 100%;
        }
        .style2
        {
        	width: 25%;
        }
        .style3
        {
        }
        .style4
        {
            width: 155px;
        }
        .style5
        {
            width: 237px; 
        }
        .style6
        {
            width: 100px;
        }
        .style7
        {
            width: 230px;
        }
        .style8
        {
            width: 152px;
        }
    </style>
    
    <script type="text/javascript">
    // <![CDATA[
        function Uploader_OnUploadStart() {
            btnUpload.SetEnabled(false);
        }
        function Uploader_OnFileUploadComplete(args) {
            var imgSrc = aspxPreviewImgSrc;
            if (args.isValid) {
                var date = new Date();
                imgSrc = "UploadImages/" + args.callbackData + "?dx=" + date.getTime();
            }
            getPreviewImageElement().src = imgSrc;
        }
        function Uploader_OnFilesUploadComplete(args) {
            UpdateUploadButton();
        }
        function UpdateUploadButton() {
            btnUpload.SetEnabled(uploader.GetText(0) != "");
        }
        function getPreviewImageElement() {
            return document.getElementById("previewImage");
        }
    // ]]> 
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" Runat="Server">
    THÊM NHÂN VIÊN 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <form id="form1" runat="server">
    <br />
    <dxrp:ASPxRoundPanel ID="ASPxRoundPanel3" runat="server" 
        Width="100%" HeaderText="Lỗi dữ liệu" Font-Names="arial" Font-Size="14px" 
        ForeColor="Red" Visible="False">
        <HeaderStyle BackColor="#FF9900" ForeColor="White" Font-Bold="True" />
        <PanelCollection>
<dxp:PanelContent runat="server">* Vui lòng kiểm tra lại các dữ liệu đã nhập, những 
    vùng được tô màu cam.<br />
    * Nếu không có vùng nào bị tô màu vàng, kiểm tra lại Mã nhân viên (sử dụng chức 
    năng tìm kiếm để tìm Mã nhân viên này).</dxp:PanelContent>
</PanelCollection>
        <HeaderImage Height="16px" Url="~/ui/exclamation_octagon_fram.png" 
            Width="16px" />
    </dxrp:ASPxRoundPanel>
    
    <dxrp:ASPxRoundPanel ID="ASPxRoundPanel4" runat="server" 
        Width="100%" HeaderText="Cập nhật thành công" Font-Names="arial" Font-Size="14px" 
        ForeColor="#009900" Visible="False">
        <HeaderStyle BackColor="#339933" ForeColor="White" Font-Bold="True" />
        <PanelCollection>
<dxp:PanelContent ID="PanelContent1" runat="server">* Dữ liệu đã được lưu thành 
    công!</dxp:PanelContent>
</PanelCollection>
        <HeaderImage Height="16px" Url="~/ui/exclamation_octagon_fram.png" 
            Width="16px" />
    </dxrp:ASPxRoundPanel>
    
&nbsp;<dxrp:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Width="100%" 
    HeaderText="Thông tin cá nhân">
        <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
        <PanelCollection>
<dxp:PanelContent runat="server">
    <table cellpadding="4" cellspacing="4" class="style1" id="frmMainContent">
        <tr>
            <td align="right" class="style2">
                Mã nhân viên</td>
            <td class="style7">
                <dxe:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="223px" 
                    ClientInstanceName="ASPxTextBox1">
                </dxe:ASPxTextBox>
            </td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Họ lót</td>
            <td class="style7">
                <dxe:ASPxTextBox ID="ASPxTextBox2" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td align="right" class="style4">
                Tên</td>
            <td align="left">
                <dxe:ASPxTextBox ID="ASPxTextBox5" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Giới tính</td>
            <td class="style7">
                <dxe:ASPxComboBox ID="cbGioitinh" runat="server" DropDownStyle="DropDown" 
                    ValueType="System.String" Width="223px" TextField="tengt" ValueField="_id">
                    <Columns>
                        <dxe:ListBoxColumn Caption="ID" FieldName="_id" Name="_idGT" Visible="False" />
                        <dxe:ListBoxColumn Caption="Chọn 1 loại" FieldName="tengt" Name="tengt" />
                    </Columns>
                </dxe:ASPxComboBox>
            </td>
            <td align="right" class="style4">
                Ngày sinh</td>
            <td>
                <dxe:ASPxDateEdit ID="ASPxDateEdit3" runat="server" EditFormat="Custom" 
                    EditFormatString="dd/MM/yyyy" Width="223px">
                    <CalendarProperties ClearButtonText="Xóa" TodayButtonText="Hôm nay" ShowTodayButton="False">
                    </CalendarProperties>
                </dxe:ASPxDateEdit>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Nơi sinh</td>
            <td class="style7">
                <dxe:ASPxTextBox ID="ASPxTextBox4" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Quê quán</td>
            <td class="style3" colspan="3">
                <dxe:ASPxTextBox ID="ASPxTextBox8" runat="server" Width="640px">
                </dxe:ASPxTextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                HKTT</td>
            <td class="style3" colspan="3">
                <dxe:ASPxTextBox ID="ASPxTextBox9" runat="server" Width="640px">
                </dxe:ASPxTextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Số CMND</td>
            <td class="style7">
                <dxe:ASPxTextBox ID="ASPxTextBox10" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td align="right" class="style4">
                Cấp ngày</td>
            <td>
                <dxe:ASPxDateEdit ID="ASPxDateEdit1" runat="server" Width="223px" 
                    EditFormat="Custom" EditFormatString="dd/MM/yyyy">
                    <CalendarProperties ClearButtonText="Xóa" TodayButtonText="Hôm nay">
                    </CalendarProperties>
                </dxe:ASPxDateEdit>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td align="right" class="style4">
                Nơi cấp</td>
            <td>
                <dxe:ASPxTextBox ID="ASPxTextBox6" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Quốc tịch</td>
            <td class="style7">
                <dxe:ASPxTextBox ID="ASPxTextBox11" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Dân tộc</td>
            <td class="style7">
                <dxe:ASPxTextBox ID="ASPxTextBox7" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Tôn giáo</td>
            <td class="style7">
                <dxe:ASPxTextBox ID="ASPxTextBox12" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Tình trạng hôn nhân</td>
            <td class="style7">
                <dxe:ASPxCheckBox ID="ASPxCheckBox1" runat="server" Text="Đã kết hôn">
                </dxe:ASPxCheckBox>
            </td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Điện thoại</td>
            <td class="style7">
                <dxe:ASPxTextBox ID="ASPxTextBox13" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Di động</td>
            <td class="style7">
                <dxe:ASPxTextBox ID="ASPxTextBox14" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Email</td>
            <td class="style7">
                <dxe:ASPxTextBox ID="ASPxTextBox15" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Trình độ học vấn</td>
            <td class="style7">
                <dxe:ASPxComboBox ID="cbHocvan" runat="server" 
                    EnableIncrementalFiltering="True" TextField="tentd" ValueField="_id" 
                    ValueType="System.String" Width="223px">
                    <Columns>
                        <dxe:ListBoxColumn Caption="ID" FieldName="_id" Name="_idTT" Visible="False" />
                        <dxe:ListBoxColumn Caption="Chọn 1 loại" FieldName="tentd" Name="tentd" />
                    </Columns>
                </dxe:ASPxComboBox>
            </td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Trình độ chính trị</td>
            <td class="style7">
                <dxe:ASPxComboBox ID="cbChinhtri" runat="server" 
                    EnableIncrementalFiltering="True" TextField="tenct" ValueField="_id" 
                    ValueType="System.String" Width="223px">
                    <Columns>
                        <dxe:ListBoxColumn Caption="ID" FieldName="_id" Name="_idCT" Visible="False" />
                        <dxe:ListBoxColumn Caption="Chọn 1 loại" FieldName="tenct" Name="tenct" />
                    </Columns>
                </dxe:ASPxComboBox>
            </td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Chuyên môn</td>
            <td class="style7">
                <dxe:ASPxTextBox ID="ASPxTextBox21" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Nơi đào tạo</td>
            <td class="style7">
                <dxe:ASPxTextBox ID="ASPxTextBox23" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Hình thức đào tạo</td>
            <td class="style7">
                <dxe:ASPxTextBox ID="ASPxTextBox24" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Năm tốt nghiệp</td>
            <td class="style7">
                <dxe:ASPxTextBox ID="ASPxTextBox25" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Ngoại ngữ</td>
            <td class="style7">
                <dxe:ASPxComboBox ID="cbNgoaingu" runat="server" 
                    EnableIncrementalFiltering="True" TextField="tennn" ValueField="_id" 
                    ValueType="System.String" Width="223px">
                    <Columns>
                        <dxe:ListBoxColumn Caption="ID" FieldName="_id" Name="_idNN" Visible="False" />
                        <dxe:ListBoxColumn Caption="Chọn 1 loại" FieldName="tennn" Name="tennn" />
                    </Columns>
                </dxe:ASPxComboBox>
            </td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Tin học</td>
            <td class="style7">
                <dxe:ASPxComboBox ID="cbTinhoc" runat="server" 
                    EnableIncrementalFiltering="True" TextField="tenth" ValueField="_id" 
                    ValueType="System.String" Width="223px">
                    <Columns>
                        <dxe:ListBoxColumn Caption="ID" FieldName="_id" Name="_idTT" Visible="False" />
                        <dxe:ListBoxColumn Caption="Chọn 1 loại" FieldName="tenth" Name="tenth" />
                    </Columns>
                </dxe:ASPxComboBox>
            </td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Quản lý nhà nước</td>
            <td class="style7">
                <dxe:ASPxComboBox ID="cbQLNN" runat="server" 
                    EnableIncrementalFiltering="True" TextField="tenql" ValueField="_id" 
                    ValueType="System.String" Width="223px">
                    <Columns>
                        <dxe:ListBoxColumn Caption="ID" FieldName="_id" Name="_idTT" Visible="False" />
                        <dxe:ListBoxColumn Caption="Chọn 1 loại" FieldName="tenql" Name="tenql" />
                    </Columns>
                </dxe:ASPxComboBox>
            </td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Ngày vào Đảng CSVN</td>
            <td class="style7">
                <dxe:ASPxDateEdit ID="ASPxDateEdit6" runat="server" EditFormat="Custom" 
                    EditFormatString="dd/MM/yyyy" Width="223px">
                    <CalendarProperties ClearButtonText="Xóa" TodayButtonText="Hôm nay">
                    </CalendarProperties>
                </dxe:ASPxDateEdit>
            </td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Ngày Đảng chính thức</td>
            <td class="style7">
                <dxe:ASPxDateEdit ID="ASPxDateEdit7" runat="server" EditFormat="Custom" 
                    EditFormatString="dd/MM/yyyy" Width="223px">
                    <CalendarProperties ClearButtonText="Xóa" TodayButtonText="Hôm nay">
                    </CalendarProperties>
                </dxe:ASPxDateEdit>
            </td>
            <td align="right" class="style4">
                Chúc vụ Đảng hiện tại</td>
            <td>
                <dxe:ASPxTextBox ID="ASPxTextBox30" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                &nbsp;</td>
            <td class="style7">
                <dxe:ASPxCheckBox ID="ASPxCheckBox3" runat="server" 
                    Text="Là Đoàn viên TNCS HCM">
                </dxe:ASPxCheckBox>
            </td>
            <td align="right" class="style4">
                Chức vụ Đoàn hiện tại</td>
            <td>
                <dxe:ASPxTextBox ID="ASPxTextBox31" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Chức vụ chính quyền cao nhất</td>
            <td class="style7">
                <dxe:ASPxTextBox ID="ASPxTextBox29" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Hình ảnh</td>
            <td class="style7">            
                <dxuc:ASPxUploadControl ID="ASPxUploadControl1" runat="server"
                    ClientInstanceName="uploader" ShowProgressPanel="True"
                    NullText="Click here to browse files..." Size="35" ShowUploadButton="True" 
                    OnFileUploadComplete="ASPxUploadControl1_FileUploadComplete">
                    <ValidationSettings MaxFileSize="2097152" FileDoesNotExistErrorText="File không tồn tại" MaxFileSizeErrorText="Dung lượng file quá lớn, tối đa 2Mb" NotAllowedContentTypeErrorText="Định dạng file không cho phép (chỉ chấp nhận PNG, JPG, GIF)" AllowedContentTypes="image/jpeg,image/pjpeg, image/png,image/x-png, image/gif">
                    </ValidationSettings>
                    <ClientSideEvents 
                    FileUploadStart="function(s, e) {
	                    //if (ASPxTextBox1.GetText() == '') {	                        
	                        //e.cancel = true;
	                        //alert('Nhập Mã nhân viên trước khi upload hình');
	                    //}else{
	                        //uploader.setToolTip = ASPxTextBox1.GetText();
	                    //}
                    }" 
                    fileuploadcomplete="function(s, e) {
                        var getPreviewImageElement = document.getElementById('previewImage');
	                    var imgSrc = getPreviewImageElement.src;
                        if (e.isValid) {
                            var date = new Date();
                            imgSrc = 'Uploads/' + e.callbackData + '?dx=' + date.getTime();                            
                        }                        
                        getPreviewImageElement.src = imgSrc;
                    }" />
                    <UploadButton>
                        <Image Url="~/ui/page_white_get.png" />
                    </UploadButton>
                </dxuc:ASPxUploadControl>             
            </td>
            <td align="center" class="style4">
                <img src="<%Response.Write(HttpContext.Current.Session["imgSrc"]);%>" id="previewImage" alt="" width="120px" height="160px"/>
                <br />
                File tối đa: 2Mb</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Ghi chú</td>
            <td class="style3" colspan="3">
                <dxe:ASPxTextBox ID="ASPxTextBox16" runat="server" Width="640px">
                </dxe:ASPxTextBox>
            </td>
        </tr>
    </table>
    
            </dxp:PanelContent>
</PanelCollection>
    </dxrp:ASPxRoundPanel>
<br />

    <dxrp:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" Width="100%" 
        HeaderText="Thông tin nhân sự">
        <HeaderStyle HorizontalAlign="Center" />
        <PanelCollection>
<dxp:PanelContent runat="server">
    <table cellpadding="4" cellspacing="4" class="style1">
        <tr>
            <td align="right" class="style2">
                Phòng ban</td>
            <td class="style5">
                <dxe:ASPxComboBox ID="cbPhongban" runat="server" TextField="tenpb" 
                    ValueField="_id" ValueType="System.String" Width="223px">
                    <Columns>
                        <dxe:ListBoxColumn Caption="#" FieldName="_id" Name="_id" Visible="False" />
                        <dxe:ListBoxColumn Caption="  " FieldName="tenpb" Name="tenpb" />
                    </Columns>
                </dxe:ASPxComboBox>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td align="right" class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Chức vụ</td>
            <td class="style5">
                <dxe:ASPxComboBox ID="cbChucvu" runat="server" 
                    EnableIncrementalFiltering="True" TextField="tencv" ValueField="_id" 
                    ValueType="System.String" Width="223px">
                    <Columns>
                        <dxe:ListBoxColumn Caption="ID" FieldName="_id" Name="_idCV" Visible="False" />
                        <dxe:ListBoxColumn Caption="Chọn 1 loại" FieldName="tencv" Name="tencv" />
                    </Columns>
                </dxe:ASPxComboBox>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td align="right" class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Ngày vào làm</td>
            <td class="style5">
                <dxe:ASPxDateEdit ID="ASPxDateEdit2" runat="server" EditFormat="Custom" 
                    EditFormatString="dd/MM/yyyy" Width="223px">
                    <CalendarProperties ClearButtonText="Xóa" TodayButtonText="Hôm nay">
                    </CalendarProperties>
                </dxe:ASPxDateEdit>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td align="right" class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Loại nhân viên</td>
            <td class="style5">
                <dxe:ASPxComboBox ID="cbTinhtrang" runat="server" 
                    EnableIncrementalFiltering="True" TextField="tentt" ValueField="_id" 
                    ValueType="System.String" Width="223px">
                    <Columns>
                        <dxe:ListBoxColumn Caption="ID" FieldName="_id" Name="_idTT" Visible="False" />
                        <dxe:ListBoxColumn Caption="Chọn 1 loại" FieldName="tentt" Name="tentt" />
                    </Columns>
                </dxe:ASPxComboBox>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td align="right" class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Số hiệu công chức</td>
            <td class="style5">
                <dxe:ASPxTextBox ID="ASPxTextBox28" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td align="right" class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Ngạch công chức</td>
            <td class="style5">
                <dxe:ASPxTextBox ID="ASPxTextBox27" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td align="right" class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Bậc lương</td>
            <td class="style5">
                <dxe:ASPxTextBox ID="ASPxTextBox26" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td class="style6">
                Ví dụ: 1</td>
            <td align="right" class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Hệ số lương</td>
            <td class="style5">
                <dxe:ASPxTextBox ID="ASPxTextBox17" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td class="style6">
                Ví dụ: 3.4</td>
            <td align="right" class="style8">
                Hưởng từ ngày</td>
            <td>
                <dxe:ASPxDateEdit ID="ASPxDateEdit4" runat="server" EditFormat="Custom" 
                    EditFormatString="dd/MM/yyyy" Width="223px">
                    <CalendarProperties ClearButtonText="Xóa" TodayButtonText="Hôm nay">
                    </CalendarProperties>
                </dxe:ASPxDateEdit>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                % vượt khung</td>
            <td class="style5">
                <dxe:ASPxTextBox ID="ASPxTextBox18" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td class="style6">
                Ví dụ: 1.2</td>
            <td align="right" class="style8">
                Mốc nâng lương lần sau</td>
            <td>
                <dxe:ASPxDateEdit ID="ASPxDateEdit5" runat="server" EditFormat="Custom" 
                    EditFormatString="dd/MM/yyyy" Width="223px">
                    <CalendarProperties ClearButtonText="Xóa" TodayButtonText="Hôm nay">
                    </CalendarProperties>
                </dxe:ASPxDateEdit>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                % phụ cấp độc hại</td>
            <td class="style5">
                <dxe:ASPxTextBox ID="ASPxTextBox19" runat="server" Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td class="style6">
                Ví dụ: 0.1</td>
            <td align="right" class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                % phụ cấp thâm niên</td>
            <td class="style5">
                <dxe:ASPxTextBox ID="ASPxTextBox20" runat="server" Width="223px" 
                    Font-Bold="True">
                </dxe:ASPxTextBox>
            </td>
            <td class="style6">
                Ví dụ: 15</td>
            <td align="right" class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
                <td class="style6">
                &nbsp;</td>
                <td align="right" class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Mật khẩu truy cập hệ thống</td>
            <td class="style5">
                <dxe:ASPxTextBox ID="ASPxTextBox22" runat="server" Font-Bold="True" 
                    Width="223px">
                </dxe:ASPxTextBox>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td align="right" class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                &nbsp;</td>
            <td class="style5">
                <dxe:ASPxCheckBox ID="ASPxCheckBox2" runat="server" 
                    Text="Là quản trị viên (Admin)">
                </dxe:ASPxCheckBox>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td align="right" class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td align="right" class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                &nbsp;</td>
            <td class="style5">
                <dxe:ASPxButton ID="ASPxButton1" runat="server" 
                    CssFilePath="~/App_Themes/Soft Orange/{0}/styles.css" CssPostfix="Soft_Orange" 
                    Font-Bold="True" Font-Size="Medium" OnClick="ASPxButton1_Click" Text="Lưu">
                    <Image Url="~/ui/save_labled.png" />
                </dxe:ASPxButton>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td align="right" class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
            </dxp:PanelContent>
</PanelCollection>
    </dxrp:ASPxRoundPanel>
    </form>


</asp:Content>

