<%@ page title="Ngoại ngữ" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Ngoaingu, App_Web_sjyzhvtb" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dxwgv" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="TitleContent">
    TRÌNH ĐỘ NGOẠI NGỮ
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <form id="form1" runat="server">
    <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" 
        AutoGenerateColumns="False" Caption="TRÌNH ĐỘ NGOẠI NGỮ" Width="454px" 
        KeyFieldName="_id" PreviewFieldName="tennn" 
        onrowdeleting="ASPxGridView1_RowDeleting" 
        onrowinserting="ASPxGridView1_RowInserting" 
        onrowupdating="ASPxGridView1_RowUpdating">
        <SettingsBehavior ConfirmDelete="True" />
        <Styles>
                <EditFormColumnCaption Wrap="False">
                </EditFormColumnCaption>
            </Styles>
        <Columns>
            <dxwgv:GridViewCommandColumn VisibleIndex="0" Width="100px">
                <EditButton Visible="True">
                </EditButton>
                <NewButton Visible="True">
                </NewButton>
                <DeleteButton Visible="True">
                </DeleteButton>
            </dxwgv:GridViewCommandColumn>
            <dxwgv:GridViewDataTextColumn Caption="Mã" FieldName="_id" VisibleIndex="1" 
                Width="100px">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn Caption="Trình độ" FieldName="tennn" 
                VisibleIndex="2">
            </dxwgv:GridViewDataTextColumn>
        </Columns>
    </dxwgv:ASPxGridView>
    </form>
    </p>
</asp:Content>

