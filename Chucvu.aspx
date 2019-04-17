<%@ page title="Chức vụ" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Chucvu, App_Web_sjyzhvtb" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dxwgv" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="TitleContent">
    DANH MỤC CHỨC VỤ
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" 
            AutoGenerateColumns="False" Width="728px" Caption="DANH MỤC CHỨC VỤ" 
            KeyFieldName="_id" onrowdeleting="ASPxGridView1_RowDeleting" 
            onrowupdating="ASPxGridView1_RowUpdating" 
            onrowinserting="ASPxGridView1_RowInserting" >
            <SettingsBehavior ConfirmDelete="True" />
            <Styles>
                <EditFormColumnCaption Wrap="False">
                </EditFormColumnCaption>
            </Styles>
            <Columns>
                <dxwgv:GridViewCommandColumn VisibleIndex="0">
                    <EditButton Visible="True">
                    </EditButton>
                    <NewButton Visible="True">
                    </NewButton>
                    <DeleteButton Visible="True">
                    </DeleteButton>
                </dxwgv:GridViewCommandColumn>
                <dxwgv:GridViewDataTextColumn Caption="Mã chức vụ" FieldName="_id" 
                    VisibleIndex="1" Width="100px">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn Caption="Tên chức vụ" FieldName="tencv" 
                    VisibleIndex="2">
                    <EditFormSettings Caption="Chức vụ" Visible="True" />
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn Caption="Phụ cấp chức vụ" FieldName="phucapcv" 
                    VisibleIndex="3">
                </dxwgv:GridViewDataTextColumn>
            </Columns>
            <Settings ShowFooter="True" />
        </dxwgv:ASPxGridView>
    </p>
    </form>
</asp:Content>

