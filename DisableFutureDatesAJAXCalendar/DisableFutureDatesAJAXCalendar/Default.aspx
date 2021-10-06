<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <link href="CSS.css" rel="stylesheet" type="text/css" />
    <script src="Extension.min.js" type="text/javascript"></script>

    <asp:TextBox ID="txtDate" runat="server" CssClass="disable_future_dates" />
    <asp:ImageButton runat="server" ID="imgPopup" ImageUrl="~/Calendar.png" />
    <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtDate"
        PopupButtonID="imgPopup" />
    </form>
</body>
</html>
