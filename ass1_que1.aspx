<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ass1_que1.aspx.cs" Inherits="Assignment1.ass1_que1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center; margin-top: 50px;">
            <h1>
                <asp:Label ID="Label2" runat="server" Text="DAVDA ISHA"></asp:Label>
            </h1>
            <h1>&nbsp;</h1>
            <h1>Welcome Page&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>
            <asp:Label ID="Label1" runat="server" Text="Enter your name:" Font-Size="Large"></asp:Label>
            <br /><br />
            <asp:TextBox ID="TextBoxName" runat="server" Font-Size="Medium"></asp:TextBox>
            <br />
            <br /><br />
            <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" Font-Size="Medium" OnClick="ButtonSubmit_Click" />
            <br />
            <asp:Label ID="LabelMessage" runat="server" Font-Size="Large" ForeColor="Blue"></asp:Label>
        </div>
    </form>
    <script runat="server">
        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            string name = TextBoxName.Text;

         if (!string.IsNullOrEmpty(name))
            {
                LabelMessage.Text = "Welcome, " + name + "!";
            }
            else
            {
                LabelMessage.Text = "Please enter your name.";
            }
        }
    </script>
</body>
</html>
