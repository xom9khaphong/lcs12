<%@ page language="C#" autoeventwireup="true" inherits="Chitiet, App_Web_i6s8pmzs" %>

<%@ Register assembly="DevExpress.XtraReports.v9.1.Web, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraReports.Web" tagprefix="dxxr" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>In Chi tiết</title>
    <style type="text/css">
        .fitpage 
        {
        	width: 800px;
        }
        .style1
        {
            width: 398px;
        }
        .style2
        {
            font-size: medium;
        }
        .style3
        {
            font-size: x-large;
        }
        .style4
        {
            font-size: x-large;
            font-weight: bold;
        }
        .style6
        {
        }
        .style7
        {
            font-weight: bold;
        }
        .style8
        {
        }
        .style9
        {
            width: 192px;
        }
        .style10
        {
            width: 143px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">

    <table class="fitpage" >
        <tr>
            <td align="center" class="style1" >
                <span class="style2">BỘ GIÁO DỤC &amp; ĐÀO TẠO</span><br class="style2" />
                <span class="style2">TRƯỜNG CAO ĐẲNG CỘNG ĐỒNG VĨNH LONG</span></td>
            <td class="style3">
                &nbsp;</td>
            <td align="right">
                Số:................</td>
        </tr>
    </table>

    
    <br />

    
    <table class="fitpage" >
        <tr>
            <td align="center" class="style4" >
                BÁO CÁO CHI TIẾT NHÂN SỰ</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <table cellpadding="5" cellspacing="5" class="fitpage" border="0">
        <tr>
            <td class="style7" colspan="4">
                THÔNG TIN CƠ BẢN</td>
        </tr>
        <tr>
            <td class="style9">
                Họ &amp; chữ lót:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel2" runat="server" Text="ASPxLabel" Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
            <td class="style6" colspan="2" rowspan="5">
                <img src="<%Response.Write(HttpContext.Current.Session["imgDetail"]);%>" id="previewImage" alt="" height="160px"/>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Tên:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel13" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Ngày sinh:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel3" runat="server" Text="ASPxLabel" Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Giới tính:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel12" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Điện thoại liên hệ:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel5" runat="server" Text="ASPxLabel" Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Số CMND:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel10" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
            <td class="style10">
                Mã nhân viên:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel1" runat="server" Text="ASPxLabel" Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Quê quán:</td>
            <td colspan="3">
                <dxe:ASPxLabel ID="ASPxLabel4" runat="server" Text="ASPxLabel" Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                HKTT:</td>
            <td colspan="3">
                <dxe:ASPxLabel ID="ASPxLabel11" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Quốc tịch:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel6" runat="server" Text="ASPxLabel" Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
            <td class="style10">
                Dân tộc:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel9" runat="server" Text="ASPxLabel" Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Tôn giáo:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel7" runat="server" Text="ASPxLabel" Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                Tình trạng hôn nhân:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel8" runat="server" Text="ASPxLabel" Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" colspan="4">
                THÔNG TIN KHÁC</td>
        </tr>
        <tr>
            <td class="style9">
                Trình độ học vấn:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel14" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
            <td class="style10">
                Trình độ chính trị:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel25" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Chuyên môn:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel15" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
            <td class="style10">
                Hình thức đào tạo:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel24" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Nơi đào tạo:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel16" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
            <td class="style10">
                Năm tốt nghiệp:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel23" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Ngoại ngữ:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel17" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
            <td class="style10">
                Tin học:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel22" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Trình độ quản lý nhà nước:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel18" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                Ngày vào Đảng chính thức:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel19" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
            <td class="style10">
                Chức vụ Đảng hiện tại:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel21" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Chức vụ chính quyền cao nhất:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel20" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8" colspan="4">
                <br />
                <b>THÔNG TIN NHÂN SỰ</b></td>
        </tr>
        <tr>
            <td class="style9">
                Phòng ban:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel26" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
            <td class="style10">
                Chức vụ:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel37" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Ngày vào làm:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel27" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
            <td class="style10">
                Loại nhân viên:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel36" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Số hiệu công chức:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel28" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                Ngạch công chức:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel29" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                Bậc lương:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel30" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                HS Lương:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel31" runat="server" Text="ASPxLabel" 
                    Font-Bold="True" Width="100px">
                </dxe:ASPxLabel>
            </td>
            <td class="style10">
                Hưởng từ ngày:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel35" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                % Vượt khung:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel32" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                % Phục cấp độc hại:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel33" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                % Phụ cấp thâm niên:</td>
            <td>
                <dxe:ASPxLabel ID="ASPxLabel34" runat="server" Text="ASPxLabel" 
                    Font-Bold="True">
                </dxe:ASPxLabel>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9" align="center">
                <b>Người lập báo cáo</b><br />
                (Ký tên)</td>
            <td>
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
    <br />
    
    </form>
</body>
</html>
