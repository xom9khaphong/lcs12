<%@ page title="Trình độ chính trị" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Trinhdochinhtri, App_Web_sjyzhvtb" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dxwgv" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="TitleContent">
    TRÌNH ĐỘ CHÍNH TRỊ
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <form id="form1" runat="server">
    <p>
        
        <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" 
            AutoGenerateColumns="False" Caption="TRÌNH ĐỘ CHÍNH TRỊ" Width="527px" 
            KeyFieldName="_id" onrowinserting="ASPxGridView1_RowInserting" 
            onrowdeleting="ASPxGridView1_RowDeleting" 
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
                <dxwgv:GridViewDataTextColumn Caption="Mã" FieldName="_id" VisibleIndex="1">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn Caption="Cấp bậc" FieldName="tenct" 
                    VisibleIndex="2">
                </dxwgv:GridViewDataTextColumn>
            </Columns>
        </dxwgv:ASPxGridView>
        
    </p>
    </form>
</asp:Content>

