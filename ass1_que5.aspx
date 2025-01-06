<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AutoPostBackExample.aspx.cs" Inherits="Assignment1.ass1_que5" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AutoPostBack</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; margin-top: 50px;">
            <h1>
                <asp:Label ID="Label1" runat="server" Text="DAVDA ISHA"></asp:Label>
            </h1>
            <h1>Demonstration of AutoPostBack Property</h1>
            <asp:Label ID="LabelInstruction" runat="server" Text="Select an option: "></asp:Label>
            <asp:DropDownList ID="DropDownListOptions" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListOptions_SelectedIndexChanged" style="margin-bottom: 0px">
                <asp:ListItem Text="Select an option" Value="" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Rajkot" Value="Option 1"></asp:ListItem>
                <asp:ListItem Text="Ahemdabad" Value="Option 2"></asp:ListItem>
                <asp:ListItem Text="Surat" Value="Option 3"></asp:ListItem>
            </asp:DropDownList>
            <br /><br />
            <asp:Label ID="LabelResult" runat="server" Text="" ForeColor="Blue"></asp:Label>
        </div>
    </form>
</body>
</html>
