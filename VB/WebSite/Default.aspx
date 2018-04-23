<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript">
        function EditorOnInit(s, e) {
            var errorImage = document.getElementById(s.name + '_EI');

            ASPxClientUtils.AttachEventToElement(errorImage, 'mousemove', function (evt) {
                popup.ShowAtPos(ASPxClientUtils.GetEventX(evt), ASPxClientUtils.GetEventY(evt));
                ToolTipLabel.SetText(errorImage.alt);
                errorImage.title = '';
            });
        };
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxTextBox runat="server" EnableClientSideAPI="True" Width="170px" ID="NameTextBox"
            ClientInstanceName="NameTb">
            <ClientSideEvents Init="EditorOnInit" />
            <ValidationSettings SetFocusOnError="True" ErrorDisplayMode="ImageWithTooltip">
                <RequiredField IsRequired="True" ErrorText="Name is required" />
            </ValidationSettings>
        </dx:ASPxTextBox>
        <br />
        <dx:ASPxTextBox runat="server" EnableClientSideAPI="True" Width="170px" ID="LastNameTB">
            <ClientSideEvents Init="EditorOnInit" />
            <ValidationSettings SetFocusOnError="True" ErrorDisplayMode="ImageWithTooltip">
                <RequiredField IsRequired="True" ErrorText="Last Name is required" />
            </ValidationSettings>
        </dx:ASPxTextBox>
        <br />
        <dx:ASPxComboBox ID="GenderComboBox" runat="server">
            <ClientSideEvents Init="EditorOnInit" />
            <ValidationSettings ErrorDisplayMode="ImageWithTooltip">
                <RequiredField ErrorText="Gender is required" IsRequired="true" />
            </ValidationSettings>
            <Items>
                <dx:ListEditItem Text="Male" Value="1" />
                <dx:ListEditItem Text="Famale" Value="2" />
            </Items>
        </dx:ASPxComboBox>
        <dx:ASPxButton ID="SubmitButton" runat="server" Text="Submit">
        </dx:ASPxButton>
        <dx:ASPxPopupControl ID="tooltipPopupControl" runat="server" ShowHeader="false" CloseAction="MouseOut"
            ClientInstanceName="popup" Width="0%">
            <ContentCollection>
                <dx:PopupControlContentControl ID="PopupControlContentControl1" runat="server" SupportsDisabledAttribute="True">
                    <dx:ASPxLabel ID="ToolTipLabel" runat="server" Text="" ClientInstanceName="ToolTipLabel"
                        Wrap="False">
                    </dx:ASPxLabel>
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>
    </form>
</body>
</html>