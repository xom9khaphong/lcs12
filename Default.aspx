<%@ page language="C#" autoeventwireup="true" masterpagefile="~/MasterPage.master" inherits="_Default, App_Web_sjyzhvtb" title="Quản lý nhân sự" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dxwgv" %>

<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dxpc" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    HUMAN RESOURCE MANAGEMENT SOLUTION
</asp:Content>

<asp:Content ID="HeaderContainer" runat="server" ContentPlaceHolderID="HeadContent">

    <script type="text/javascript" src="includes/bootstrap.min.js"></script>
    <script type="text/javascript" src="includes/jquery.droptabs.min.js"></script>
    
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 102px;
            font-size: 12px;
	        font-weight: bold;
        }
        .style3
        {
            width: 223px;
        }
        .style4
        {
            width: 131px;
        }
        .style5
        {
            width: 250px;
        }
        .style6
        {
            width: 106px;
        }
        .style7
        {
            width: 280px;
        }
        .style8
        {            font-weight: bold;
        }
        .style9
        {
            width: 136px;
        }
        .style10
        {
            width: 155px;
        }
    </style>
    
    <script type="text/javascript">
    function OnShowButtonClick() {
        $('#frmThemkhenthuong').toggle(500);
        $('#frmThemKyluat').toggle(500);
    }
    function OnShowButtonClick1() {
        $('#frmThemqhgd').toggle(500);
    }
</script>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <form id="form1" runat="server">	
	<div class="leftpanel bCorner bDefault bMargin">
		<div class="title bCorner">Danh sách nhân sự</div>
		<div class="searchBox bDefault bMargin">
			<div class="labelsearch">Phòng ban</div>
			<div class="fieldsearch">
				<dxe:ASPxComboBox ID="cbPhongban" runat="server" Width="180px" 
                    TextField="tenpb" ValueField="_id" ValueType="System.String">
                    <Columns>
                        <dxe:ListBoxColumn Caption="#" FieldName="_id" Name="_id" Visible="False" />
                        <dxe:ListBoxColumn Caption="  " FieldName="tenpb" Name="tenpb" />
                    </Columns>
                </dxe:ASPxComboBox>
			</div>
			<div class="labelsearch">Họ &amp; Tên</div>
			<div class="fieldsearch">
                <dxe:ASPxTextBox ID="txtTen" runat="server" Width="180px">
                </dxe:ASPxTextBox>
            </div>
			<div class="labelsearch">&nbsp;</div>
			<div class="fieldsearch">                
                <dxe:ASPxButton runat="server" ImagePosition="Right" Text="T&#236;m kiếm" 
                    Cursor="pointer" CssPostfix="Soft_Orange" 
                    CssFilePath="~/App_Themes/Soft Orange/{0}/styles.css" ID="ASPxButton1" 
                    style="float: right" OnClick="ASPxButton1_Click">
                    <Image Url="~/ui/search_go.png"></Image>
                </dxe:ASPxButton>
            </div>
			<div class="clear"></div>
		</div>
		<dxwgv:ASPxGridView ID="ASPxGridView1" ClientInstanceName="ASPxGridView1" 
            runat="server" AutoGenerateColumns="False" 
            Width="100%" KeyFieldName="manv" onrowcommand="ASPxGridView1_RowCommand" >
            <SettingsBehavior AllowFocusedRow="True" />
            <SettingsPager PageSize="50">
            </SettingsPager>
            <ClientSideEvents FocusedRowChanged="function(s, e) {
                //ASPxGridView1.PerformCallback(s.GetFocusedRowIndex());
                }" />
            <Columns>
                <dxwgv:GridViewDataTextColumn Caption="Mã NV" FieldName="manv" Name="manv" 
                    VisibleIndex="0" Width="90px">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn Caption="Họ tên NV" FieldName="hoten" 
                    Name="hoten" VisibleIndex="1">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="manv" VisibleIndex="3" Caption="Chọn" 
                    Width="50px">
                    <DataItemTemplate>
                        <dxe:ASPxButton ID="btn" runat="server" Text="Xem"></dxe:ASPxButton>
                    </DataItemTemplate>
                </dxwgv:GridViewDataTextColumn>
            </Columns>
        </dxwgv:ASPxGridView>
	</div>
	
	<div class="rightpanel bMargin">
		<ul class="droptabs">
		    <li class="active always-visible"><a href="#panel1" data-toggle="tab">Thông tin cá nhân</a></li>
		    <li><a href="#panel2" data-toggle="tab">Hợp đồng</a></li>
		    <li><a href="#panel3" data-toggle="tab">Lương</a></li>
		    <li><a href="#panel4" data-toggle="tab">Khen thưởng</a></li>
		    <li><a href="#panel5" data-toggle="tab">Kỷ luật</a></li>		    
		    <li><a href="#panel6" data-toggle="tab">Nghỉ phép</a></li>
		    <li><a href="#panel7" data-toggle="tab">Thông tin khác</a></li>
		    <li class="always-dropdown"><a href="#panel8" data-toggle="tab">Quan hệ gia đình</a></li>
		    <li class="always-dropdown"><a href="#panel9" data-toggle="tab">Quá trình công tác</a></li>
			<li class="always-dropdown"><a href="#panel10" data-toggle="tab">Ngoại ngữ</a></li>
			<li class="always-dropdown"><a href="#panel11" data-toggle="tab">Thuyên chuyển</a></li>
		    <li class="dropdown pull-right">
		        <a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown"> <b class="caret"></b></a>
		        <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
		        	
		        </ul>
		 	</li>
		</ul>
		<div class="clear"></div>
        <div class="tabcontent">
            <div class="tabpane active" id="panel1">
            	<table cellpadding="4" cellspacing="4" class="style1">
                    <tr>
                        <td class="style2">
                            Mã nhân viên</td>
                        <td class="style3">
                            <dxe:ASPxTextBox ID="txtMaNV" runat="server" Width="170px">
                            </dxe:ASPxTextBox>
                        </td>
                        <td rowspan="5" class="style10">
                            <dxe:ASPxImage ID="ASPxImage1" runat="server" Height="144px" 
                                ImageUrl="~/ui/picture.jpg" Width="120px">
                            </dxe:ASPxImage>
                        </td>
                        <td rowspan="5" align="left" valign="bottom">
                            <dxe:ASPxLabel ID="ASPxLabel2" runat="server" Font-Bold="True" 
                                ForeColor="#FF3300">
                            </dxe:ASPxLabel>
                            <br /><br />
                            <dxe:ASPxButton ID="ASPxButton10" runat="server" 
                                CssFilePath="~/App_Themes/Soft Orange/{0}/styles.css" CssPostfix="Soft_Orange" 
                                onclick="ASPxButton10_Click" Text="Lưu thay đổi" Enabled="False">
                            </dxe:ASPxButton>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Họ & Tên lót</td>
                        <td class="style3">
                            <dxe:ASPxTextBox ID="txtHoLot" runat="server" Width="170px">
                            </dxe:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Tên</td>
                        <td class="style3">
                            <dxe:ASPxTextBox ID="txtTenNV" runat="server" Width="170px">
                            </dxe:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Phòng ban</td>
                        <td class="style3">
                    <dxe:ASPxComboBox ID="cbPhongban0" runat="server" EnableIncrementalFiltering="True" 
                        ValueType="System.String" 
                        ValueField="_id" TextField="tenpb" Width="170px">
                        <Columns>
                            <dxe:ListBoxColumn Caption="ID" FieldName="_id" Name="_idPB" Visible="false" />
                            <dxe:ListBoxColumn Caption="Chọn 1 loại" FieldName="tenpb" Name="tenpb" />
                        </Columns>
                    </dxe:ASPxComboBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Chức vụ</td>
                        <td class="style3">
                    <dxe:ASPxComboBox ID="cbChucvu" runat="server" EnableIncrementalFiltering="True" 
                        ValueType="System.String" Width="170px" ValueField="_id" TextField="tencv">
                        <Columns>
                            <dxe:ListBoxColumn Caption="ID" FieldName="_id" Name="_idCV" Visible="false" />
                            <dxe:ListBoxColumn Caption="Chọn 1 loại" FieldName="tencv" Name="tencv" />
                        </Columns>
                    </dxe:ASPxComboBox>
                        </td>
                    </tr>
                </table>
                
				<table border="0" cellspacing="4" cellpadding="4" 
                    class="bDefault bCorner chitiet">

					<tr>
						<td class="style4">Ngày sinh</td>
						<td class="style5">
						    <dxe:ASPxDateEdit ID="ASPxDateEdit6" runat="server" Width="150px" 
                                EditFormat="Custom" EditFormatString="dd/MM/yyyy">
                                <CalendarProperties ClearButtonText="Xóa" TodayButtonText="Hôm nay">
                                </CalendarProperties>
                            </dxe:ASPxDateEdit>
                        </td></td>
						<td class="style6">Giới tính</td>
						<td>
							<dxe:ASPxRadioButton ID="rdNam" runat="server" Layout="Flow" Text="Nam">
                            </dxe:ASPxRadioButton>
                            <dxe:ASPxRadioButton ID="rdNu" runat="server" Layout="Flow" Text="Nữ">
                            </dxe:ASPxRadioButton>
                        </td>
					</tr>
					<tr>
						<td class="style4">Địa chỉ</td>
						<td colspan="3">
							<dxe:ASPxTextBox ID="ASPxTextBox2" runat="server" Width="530px" 
                                BackColor="#E2F1F9">
                                <Border BorderColor="#63A0CE" BorderStyle="Solid" BorderWidth="1px" />
                            </dxe:ASPxTextBox>
                        </td>
					</tr>
					<tr>
						<td class="style4">ĐTDĐ</td>
						<td class="style5">
                            <dxe:ASPxTextBox ID="ASPxTextBox3" runat="server" Height="15px" Width="150px" 
                                BackColor="#E2F1F9">
                                <Border BorderColor="#63A0CE" BorderStyle="Solid" BorderWidth="1px" />
                            </dxe:ASPxTextBox>
                        </td>
						<td class="style6">ĐT Công ty</td>
						<td>
                            <dxe:ASPxTextBox ID="ASPxTextBox9" runat="server" Height="15px" Width="150px" 
                                BackColor="#E2F1F9">
                                <Border BorderColor="#63A0CE" BorderStyle="Solid" BorderWidth="1px" />
                            </dxe:ASPxTextBox>
                        </td>
					</tr>
					<tr>
						<td class="style4">ĐT nhà</td>
						<td class="style5">
                            <dxe:ASPxTextBox ID="ASPxTextBox4" runat="server" Height="15px" Width="150px" 
                                BackColor="#E2F1F9">
                                <Border BorderColor="#63A0CE" BorderStyle="Solid" BorderWidth="1px" />
                            </dxe:ASPxTextBox>
                        </td>
						<td class="style6">CMND</td>
						<td>
                            <dxe:ASPxTextBox ID="ASPxTextBox10" runat="server" Height="15px" Width="150px" 
                                BackColor="#E2F1F9">
                                <Border BorderColor="#63A0CE" BorderStyle="Solid" BorderWidth="1px" />
                            </dxe:ASPxTextBox>
                        </td>
					</tr>
					<tr>
						<td class="style4">Ngày vào làm</td>
						<td class="style5">
						    <dxe:ASPxDateEdit ID="ASPxDateEdit7" runat="server" Width="150px" 
                                EditFormat="Custom" EditFormatString="dd/MM/yyyy">
                                <CalendarProperties ClearButtonText="Xóa" TodayButtonText="Hôm nay">
                                </CalendarProperties>
                            </dxe:ASPxDateEdit>
                        </td>
						<td class="style6">Quốc tịch</td>
						<td>
                            <dxe:ASPxTextBox ID="ASPxTextBox11" runat="server" Height="15px" Width="150px" 
                                BackColor="#E2F1F9">
                                <Border BorderColor="#63A0CE" BorderStyle="Solid" BorderWidth="1px" />
                            </dxe:ASPxTextBox>
                        </td>
					</tr>
					<tr>
						<td class="style4">Email</td>
						<td colspan="3">
                            <dxe:ASPxTextBox ID="ASPxTextBox6" runat="server" Height="15px" Width="530px" 
                                BackColor="#E2F1F9">
                                <Border BorderColor="#63A0CE" BorderStyle="Solid" BorderWidth="1px" />
                            </dxe:ASPxTextBox>
                        </td>
					</tr>
					<tr>
						<td class="style4">Tình trạng hôn nhân</td>
						<td colspan="3">
                            <dxe:ASPxCheckBox ID="ASPxCheckBox1" runat="server" Height="20px" 
                                Text="Đã kết hôn">
                            </dxe:ASPxCheckBox>
                        </td>
					</tr>
					<tr>
						<td class="style4">Loại nhân sự</td>
						<td colspan="3">
                    <dxe:ASPxComboBox ID="cbTinhtrangNhansu" runat="server" EnableIncrementalFiltering="True" 
                        ValueType="System.String" Width="150px" ValueField="_id" TextField="tentt">
                        <Columns>
                            <dxe:ListBoxColumn Caption="ID" FieldName="_id" Name="_idCV" Visible="false" />
                            <dxe:ListBoxColumn Caption="Chọn 1 loại" FieldName="tentt" Name="tentt" />
                        </Columns>
                    </dxe:ASPxComboBox>
                        </td>
					</tr>
				</table>
            </div>
            <div class="tabpane" id="panel2">
            		<table cellpadding="4" cellspacing="4" class="style1">
                        <tr>
                            <td align="right" class="style7">
                                Ngày vào làm:</td>
                            <td>
                                <dxe:ASPxLabel ID="ASPxLabel1" runat="server" Text="ASPxLabel">
                                </dxe:ASPxLabel>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style7">
                                Mã hợp đồng:</td>
                            <td>
                                <dxe:ASPxTextBox ID="ASPxTextBox12" runat="server" Width="200px">
                                </dxe:ASPxTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style7">
                                Từ ngày:</td>
                            <td>
                                <dxe:ASPxDateEdit ID="ASPxDateEdit1" runat="server" Width="200px" 
                                    EditFormat="Custom" EditFormatString="dd/MM/yyyy">
                                    <CalendarProperties ClearButtonText="Xóa" TodayButtonText="Hôm nay">
                                    </CalendarProperties>
                                </dxe:ASPxDateEdit>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style7">
                                Đến ngày:</td>
                            <td>
                                <dxe:ASPxDateEdit ID="ASPxDateEdit2" runat="server" Width="200px" 
                                    EditFormat="Custom" EditFormatString="dd/MM/yyyy">
                                    <CalendarProperties ClearButtonText="Xóa" TodayButtonText="Hôm nay">
                                    </CalendarProperties>
                                </dxe:ASPxDateEdit>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style7">
                                Hình thức:</td>
                            <td>
                                <dxe:ASPxComboBox ID="cbTinhtrang" runat="server" EnableIncrementalFiltering="True" 
                                    ValueType="System.String" Width="200px" ValueField="_id" TextField="tentt">
                                    <Columns>
                                        <dxe:ListBoxColumn Caption="ID" FieldName="_id" Name="_idTT" Visible="false" />
                                        <dxe:ListBoxColumn Caption="Chọn 1 loại" FieldName="tentt" Name="tentt" />
                                    </Columns>
                                </dxe:ASPxComboBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style7">
                                Ghi chú:</td>
                            <td>
                                <dxe:ASPxTextBox ID="ASPxTextBox13" runat="server" Width="200px">
                                </dxe:ASPxTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style7">
                                &nbsp;</td>
                            <td>
                                <dxe:ASPxButton ID="ASPxButton2" runat="server" 
                                    CssFilePath="~/App_Themes/Soft Orange/{0}/styles.css" CssPostfix="Soft_Orange" 
                                    Text="Cập nhật">
                                </dxe:ASPxButton>
                            </td>
                        </tr>
                    </table>
            </div>
            <div class="tabpane" id="panel3">
                <br />
                <b>CẬP NHẬT HỆ SỐ LƯƠNG<br />
                </b>
                <br />
                <table cellpadding="5" cellspacing="5" class="style1">
                    <tr>
                        <td align="right" width="30%">
                            Hệ số lương:</td>
                        <td align="left">
                            <dxe:ASPxTextBox ID="ASPxTextBox14" runat="server" Width="70px">
                            </dxe:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">% vượt khung:</td>
                        <td align="left">
                            <dxe:ASPxTextBox ID="ASPxTextBox15" runat="server" Width="70px">
                            </dxe:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">% PC độc hại:</td>
                        <td align="left">
                            <dxe:ASPxTextBox ID="ASPxTextBox16" runat="server" Width="70px">
                            </dxe:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">% PC thâm niên nhà giáo:</td>
                        <td align="left">
                            <dxe:ASPxTextBox ID="ASPxTextBox17" runat="server" Width="70px">
                            </dxe:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td align="left">
                            <dxe:ASPxButton ID="ASPxButton3" runat="server" 
                                    CssFilePath="~/App_Themes/Soft Orange/{0}/styles.css" CssPostfix="Soft_Orange" 
                                    Text="Cập nhật" onclick="ASPxButton3_Click">
                                </dxe:ASPxButton>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="tabpane" id="panel4">
                <dxwgv:ASPxGridView ID="ASPxGridView2" runat="server" 
                    AutoGenerateColumns="False" Width="728px" Caption="DANH SÁCH KHEN THƯỞNG" 
                    KeyFieldName="_id" onrowdeleting="ASPxGridView2_RowDeleting" 
                    onrowupdating="ASPxGridView2_RowUpdating">
                    <SettingsBehavior ConfirmDelete="True" />
                    <Styles EditFormCell-Wrap="False" EditFormColumnCaption-Wrap="False">
                        <EditFormCell Wrap="False"></EditFormCell>
                        <EditFormColumnCaption Wrap="False">
                        </EditFormColumnCaption>
                    </Styles>
                    <Columns>
                        <dxwgv:GridViewCommandColumn VisibleIndex="0" Width="100px" Name="#">
                            <EditButton Visible="True">
                            </EditButton>
                            <DeleteButton Visible="True">
                            </DeleteButton>
                            <HeaderStyle HorizontalAlign="Center" />
                        </dxwgv:GridViewCommandColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Ngày quyết định" FieldName="ngay" 
                            VisibleIndex="1" Width="100px">
                            <PropertiesTextEdit DisplayFormatString="dd/MM/yyyy">
                            </PropertiesTextEdit>
                            <HeaderStyle HorizontalAlign="Center" />
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Nội dung khen thưởng" FieldName="noidung" 
                            VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dxwgv:GridViewDataTextColumn>
                    </Columns>
                    <Settings ShowFooter="True" />
                </dxwgv:ASPxGridView>
                <br />
                <dxe:ASPxButton ID="ASPxButton4" runat="server" 
                    Text="Thêm Khen thưởng" AutoPostBack="false"  onPreRender="Paragraph_PreRender">
                    <ClientSideEvents Click="OnShowButtonClick" />
                </dxe:ASPxButton>
                <br />
                <table cellpadding="4" cellspacing="4" class="bDefault bCorner chitiet hidden" id="frmThemkhenthuong">
                    <tr>
                        <td class="style8" colspan="2" align="center">
                            THÊM KHEN THƯỞNG</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Ngày quyết định</td>
                        <td>
                            <dxe:ASPxDateEdit ID="ASPxDateEdit3" runat="server" Width="200px" 
                                    EditFormat="Custom" EditFormatString="dd/MM/yyyy">
                                    <CalendarProperties ClearButtonText="Xóa" TodayButtonText="Hôm nay">
                                    </CalendarProperties>
                                </dxe:ASPxDateEdit>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Nội dung</td>
                        <td>
                            <dxe:ASPxTextBox ID="ASPxTextBox18" runat="server" Width="570px">
                            </dxe:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            &nbsp;</td>
                        <td>
                <dxe:ASPxButton ID="ASPxButton5" runat="server" 
                    CssFilePath="~/App_Themes/Soft Orange/{0}/styles.css" 
                    CssPostfix="Soft_Orange"
                    Text="Lưu" onclick="ASPxButton5_Click">
                </dxe:ASPxButton>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="tabpane" id="panel5">
                <dxwgv:ASPxGridView ID="ASPxGridView3" runat="server" 
                    AutoGenerateColumns="False" Width="728px" Caption="DANH SÁCH KỶ LUẬT" 
                    KeyFieldName="_id" onrowdeleting="ASPxGridView3_RowDeleting" 
                    onrowupdating="ASPxGridView3_RowUpdating">
                    <SettingsBehavior ConfirmDelete="True" />
                    <Styles EditFormCell-Wrap="False" EditFormColumnCaption-Wrap="False">
                        <EditFormCell Wrap="False"></EditFormCell>
                        <EditFormColumnCaption Wrap="False">
                        </EditFormColumnCaption>
                    </Styles>
                    <Columns>
                        <dxwgv:GridViewCommandColumn VisibleIndex="0" Width="100px" Name="#">
                            <EditButton Visible="True">
                            </EditButton>
                            <DeleteButton Visible="True">
                            </DeleteButton>
                            <HeaderStyle HorizontalAlign="Center" />
                        </dxwgv:GridViewCommandColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Ngày quyết định" FieldName="ngay" 
                            VisibleIndex="1" Width="100px">
                            <PropertiesTextEdit DisplayFormatString="dd/MM/yyyy">
                            </PropertiesTextEdit>
                            <HeaderStyle HorizontalAlign="Center" />
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Nội dung kỷ luật" FieldName="noidung" 
                            VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dxwgv:GridViewDataTextColumn>
                    </Columns>
                    <Settings ShowFooter="True" />
                </dxwgv:ASPxGridView>
                <br />
                <dxe:ASPxButton ID="ASPxButton6" runat="server" 
                    Text="Thêm Kỷ luật" AutoPostBack="false"  onPreRender="Paragraph_PreRender">
                    <ClientSideEvents Click="OnShowButtonClick" />
                </dxe:ASPxButton>
                <br />
                <table cellpadding="4" cellspacing="4" class="bDefault bCorner chitiet hidden" id="frmThemKyluat">
                    <tr>
                        <td class="style8" colspan="2" align="center">
                            THÊM KỶ LUẬT</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Ngày quyết định</td>
                        <td>
                            <dxe:ASPxDateEdit ID="ASPxDateEdit4" runat="server" Width="200px" 
                                    EditFormat="Custom" EditFormatString="dd/MM/yyyy">
                                    <CalendarProperties ClearButtonText="Xóa" TodayButtonText="Hôm nay">
                                    </CalendarProperties>
                                </dxe:ASPxDateEdit>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Nội dung</td>
                        <td>
                            <dxe:ASPxTextBox ID="ASPxTextBox19" runat="server" Width="570px">
                            </dxe:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            &nbsp;</td>
                        <td>
                <dxe:ASPxButton ID="ASPxButton7" runat="server" 
                    CssFilePath="~/App_Themes/Soft Orange/{0}/styles.css" 
                    CssPostfix="Soft_Orange"
                    Text="Lưu" onclick="ASPxButton6_Click">
                </dxe:ASPxButton>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="tabpane" id="panel6">6</div>
            <div class="tabpane" id="panel7">7</div>
            <div class="tabpane" id="panel8">
                <dxwgv:ASPxGridView ID="ASPxGridView4" runat="server" 
                    AutoGenerateColumns="False" Width="100%" Caption="DANH SÁCH QUAN HỆ GIA ĐÌNH" 
                    KeyFieldName="_id" SettingsEditing-EditFormColumnCount="1" 
                    onrowdeleting="ASPxGridView4_RowDeleting" 
                    onrowupdating="ASPxGridView4_RowUpdating" >
                    <SettingsBehavior ConfirmDelete="True" />
                    <Styles EditFormCell-Wrap="False" EditFormColumnCaption-Wrap="False">
                        <EditFormCell Wrap="False"></EditFormCell>
                        <EditFormColumnCaption Wrap="False">
                        </EditFormColumnCaption>
                    </Styles>
                    <Columns>
                        <dxwgv:GridViewCommandColumn VisibleIndex="0" Width="60px" Name="#">                            
                            <EditButton Visible="True">
                            </EditButton>
                            <DeleteButton Visible="True">
                            </DeleteButton>
                            <HeaderStyle HorizontalAlign="Center" />
                        </dxwgv:GridViewCommandColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Quan hệ" FieldName="quanhe" 
                            VisibleIndex="1" Width="50px">                            
                            <HeaderStyle HorizontalAlign="Center" />
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Họ tên" FieldName="hoten" 
                            VisibleIndex="2" Width="150px">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Ngày sinh" FieldName="ngaysinh" 
                            VisibleIndex="3" Width="90px">
                            <PropertiesTextEdit DisplayFormatString="dd/MM/yyyy">
                            </PropertiesTextEdit>
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Địa chỉ" FieldName="diachi" 
                            VisibleIndex="4">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Nghề nghiệp" FieldName="nghenghiep" 
                            VisibleIndex="5" Width="150px">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="_id" FieldName="_id" 
                            VisibleIndex="-1" Visible="False">                            
                        </dxwgv:GridViewDataTextColumn>
                    </Columns>
                    <Settings ShowFooter="True" />
                </dxwgv:ASPxGridView>
                <br />
                <dxe:ASPxButton ID="ASPxButton8" runat="server" 
                    Text="Thêm mối quan hệ" AutoPostBack="false">
                    <ClientSideEvents Click="OnShowButtonClick1" />
                </dxe:ASPxButton>
                <br />
                <table cellpadding="4" cellspacing="4" class="bDefault bCorner chitiet hidden" id="frmThemqhgd">
                    <tr>
                        <td class="style8" colspan="2" align="center">
                            THÊM MỐI QUAN HỆ GIA ĐÌNH</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Mối quan hệ</td>
                        <td>
                            <dxe:ASPxTextBox ID="ASPxTextBox21" runat="server" Width="200px">
                            </dxe:ASPxTextBox>
                            <i>(Cha, mẹ, anh, chị, em, cô, dì, chú, bác,...)</i></td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Họ tên</td>
                        <td>
                            <dxe:ASPxTextBox ID="ASPxTextBox22" runat="server" Width="200px">
                            </dxe:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Ngày sinh</td>
                        <td>
                            <dxe:ASPxDateEdit ID="ASPxDateEdit5" runat="server" Width="200px" 
                                    EditFormat="Custom" EditFormatString="dd/MM/yyyy">
                                    <CalendarProperties ClearButtonText="Xóa" TodayButtonText="Hôm nay">
                                    </CalendarProperties>
                                </dxe:ASPxDateEdit>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Địa chỉ</td>
                        <td>
                            <dxe:ASPxTextBox ID="ASPxTextBox20" runat="server" Width="570px">
                            </dxe:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Nghề nghiệp</td>
                        <td>
                            <dxe:ASPxTextBox ID="ASPxTextBox23" runat="server" Width="200px">
                            </dxe:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            &nbsp;</td>
                        <td>
                <dxe:ASPxButton ID="ASPxButton9" runat="server" 
                    CssFilePath="~/App_Themes/Soft Orange/{0}/styles.css" 
                    CssPostfix="Soft_Orange"
                    Text="Lưu" onclick="ASPxButton9_Click">
                </dxe:ASPxButton>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="tabpane" id="panel9">
                <dxwgv:ASPxGridView ID="ASPxGridView5" runat="server" 
                    AutoGenerateColumns="False" Width="100%" Caption="QUÁ TRÌNH CÔNG TÁC" 
                    KeyFieldName="_id" SettingsEditing-EditFormColumnCount="1" 
                    onrowinserting="ASPxGridView5_RowInserting" 
                    onrowdeleting="ASPxGridView5_RowDeleting" 
                    onrowupdating="ASPxGridView5_RowUpdating" >
                    <SettingsBehavior ConfirmDelete="True" />
                    <Styles EditFormCell-Wrap="False" EditFormColumnCaption-Wrap="False">
                        <EditFormCell Wrap="False"></EditFormCell>
                        <EditFormColumnCaption Wrap="False">
                        </EditFormColumnCaption>
                    </Styles>
                   
                    <Columns>
                        <dxwgv:GridViewCommandColumn VisibleIndex="0" Width="60px" Name="#">     
                            <NewButton Visible="true">
                            </NewButton>                       
                            <EditButton Visible="True">
                            </EditButton>
                            <DeleteButton Visible="True">
                            </DeleteButton>
                            <HeaderStyle HorizontalAlign="Center" />
                        </dxwgv:GridViewCommandColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Từ ngày" FieldName="tungay" 
                            VisibleIndex="1" Width="90px">                            
                            <HeaderStyle HorizontalAlign="Center" />
                            <PropertiesTextEdit DisplayFormatString="dd/MM/yyyy">
                            </PropertiesTextEdit>
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Đến ngày" FieldName="denngay" 
                            VisibleIndex="2" Width="90px">
                            <HeaderStyle HorizontalAlign="Center" />
                            <PropertiesTextEdit DisplayFormatString="dd/MM/yyyy">
                            </PropertiesTextEdit>
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Tại cty" FieldName="taicty" 
                            VisibleIndex="3" >                            
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Chức danh" FieldName="chucdanh" 
                            VisibleIndex="4"  Width="90px">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Nhiệm vụ chính" FieldName="nhiemvuchinh" 
                            VisibleIndex="5" Width="150px">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Lương cuối cùng" FieldName="luongcuoicung" 
                            VisibleIndex="6" Width="50px">
                            <PropertiesTextEdit DisplayFormatString="n0" />
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Lý do chuyển" FieldName="lydochuyen" 
                            VisibleIndex="7" Width="150px">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="_id" FieldName="_id" 
                            VisibleIndex="-1" Visible="False">                            
                        </dxwgv:GridViewDataTextColumn>
                    </Columns>
                    <Settings ShowFooter="True" />
                </dxwgv:ASPxGridView>
            </div>
            <div class="tabpane" id="panel10">10</div>
            <div class="tabpane" id="panel11">
                <dxwgv:ASPxGridView ID="ASPxGridView6" runat="server" 
                    AutoGenerateColumns="False" Width="100%" Caption="LỊCH SỬ THUYÊN CHUYỂN NHÂN SỰ" 
                    KeyFieldName="_id" onrowinserting="ASPxGridView6_RowInserting" 
                    onrowupdating="ASPxGridView6_RowUpdating" 
                    onrowdeleting="ASPxGridView6_RowDeleting">
                    <SettingsBehavior ConfirmDelete="True" />
                    <Styles EditFormCell-Wrap="False" EditFormColumnCaption-Wrap="False">
                        <EditFormCell Wrap="False"></EditFormCell>
                        <EditFormColumnCaption Wrap="False">
                        </EditFormColumnCaption>
                    </Styles>
                   
                    <Columns>
                        <dxwgv:GridViewCommandColumn VisibleIndex="0" Width="60px" Name="#">     
                            <NewButton Visible="true">
                            </NewButton>                       
                            <EditButton Visible="True">
                            </EditButton>
                            <DeleteButton Visible="True">
                            </DeleteButton>
                            <HeaderStyle HorizontalAlign="Center" />
                        </dxwgv:GridViewCommandColumn>
                        <dxwgv:GridViewDataComboBoxColumn Name="PhongBan" FieldName="_idphongban" Caption="Phòng ban mới" VisibleIndex="1" Width="150px">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dxwgv:GridViewDataComboBoxColumn>
                        <dxwgv:GridViewDataComboBoxColumn Name="ChucVu" FieldName="_chucvu" Caption="Chức vụ mới" VisibleIndex="2" Width="150px">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dxwgv:GridViewDataComboBoxColumn>
                        <dxwgv:GridViewDataDateColumn Caption="Ngày chuyển" FieldName="ngaychuyen" VisibleIndex="3" PropertiesDateEdit-DisplayFormatString="dd/MM/yyyy" PropertiesDateEdit-EditFormat="Custom" PropertiesDateEdit-EditFormatString="dd/MM/yyyy" Width="60px">
                            <HeaderStyle HorizontalAlign="Center" />                           
                        </dxwgv:GridViewDataDateColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Số quyết định" FieldName="soquyetdinh" 
                            VisibleIndex="4"  Width="130px" > 
                            <HeaderStyle HorizontalAlign="Center" />                            
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Lý do chuyển" FieldName="lydo" 
                            VisibleIndex="5">
                            <HeaderStyle HorizontalAlign="Center" /> 
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="_id" FieldName="_id" 
                            VisibleIndex="6" Visible="false">                            
                        </dxwgv:GridViewDataTextColumn>
                    </Columns>
                    <Settings ShowFooter="True" />
                </dxwgv:ASPxGridView>
            </div>
            
        </div>
	
		
		<script type="text/javascript">
		$(".droptabs").droptabs();
		</script>
	</div>
	<div class="clear"></div>    
    
    </form>
    
</asp:Content>
    