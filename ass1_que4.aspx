<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ass1_que4.aspx.cs" Inherits="Assignment1.ass1_que4" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AutoPostBack Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; margin-top: 50px;">
            <h1>AutoPostBack Demo</h1>

            <!-- DropDownList with AutoPostBack enabled -->
            <asp:Label ID="Label1" runat="server" Text="Select a fruit:" Font-Size="Large"></asp:Label>
            <br /><br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Font-Size="Medium">
                <asp:ListItem Text="Select Fruit" Value="" />
                <asp:ListItem Text="Apple" Value="Apple" />
                <asp:ListItem Text="Banana" Value="Banana" />
                <asp:ListItem Text="Cherry" Value="Cherry" />
                <asp:ListItem Text="Date" Value="Date" />
            </asp:DropDownList>
            <br /><br />

            <!-- Label to display the selected item -->
            <asp:Label ID="LabelResult" runat="server" Font-Size="Large" ForeColor="Blue"></asp:Label>
        </div>
    </form>

    <script runat="server">
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Display the selected fruit in the result label
            LabelResult.Text = "You selected: " + DropDownList1.SelectedItem.Text;
        }
    </script>
</body>
</html>
