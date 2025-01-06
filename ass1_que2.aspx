<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ass1_que2.aspx.cs" Inherits="Assignment1.ass1_que2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Temperature Conversion</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; margin-top: 50px;">
            <h1>
                <asp:Label ID="Label3" runat="server" Text="DAVDA ISHA"></asp:Label>
            </h1>
            <h1>Temperature Conversion&nbsp;&nbsp; </h1>
            <asp:Label ID="Label1" runat="server" Text="Enter Temperature:" Font-Size="Large"></asp:Label>
            <br /><br />
            <asp:TextBox ID="TextBoxTemperature" runat="server" Font-Size="Medium"></asp:TextBox>
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text="Select Conversion:" Font-Size="Large"></asp:Label>
            <br /><br />
            <asp:RadioButtonList ID="RadioButtonListConversion" runat="server" Font-Size="Medium">
                <asp:ListItem Text="Celsius to Fahrenheit" Value="CtoF"></asp:ListItem>
                <asp:ListItem Text="Fahrenheit to Celsius" Value="FtoC"></asp:ListItem>
            </asp:RadioButtonList>
            <br /><br />
            <asp:Button ID="ButtonConvert" runat="server" Text="Convert" Font-Size="Medium" OnClick="ButtonConvert_Click" />
            <br /><br />
            <asp:Label ID="LabelResult" runat="server" Font-Size="Large" ForeColor="Blue"></asp:Label>
        </div>
    </form>
    <script runat="server">
        protected void ButtonConvert_Click(object sender, EventArgs e)
        {
            // Retrieve the input temperature and conversion type
            double temperature;
            if (double.TryParse(TextBoxTemperature.Text, out temperature))
            {
                string conversionType = RadioButtonListConversion.SelectedValue;
                double result = 0;

                if (conversionType == "CtoF")
                {
                    result = (temperature * 9 / 5) + 32; // Celsius to Fahrenheit formula
                    LabelResult.Text = $"Converted Temperature: {result:F2} °F";
                }
                else if (conversionType == "FtoC")
                {
                    result = (temperature - 32) * 5 / 9; // Fahrenheit to Celsius formula
                    LabelResult.Text = $"Converted Temperature: {result:F2} °C";
                }
                else
                {
                    LabelResult.Text = "Please select a conversion type.";
                }
            }
            else
            {
                LabelResult.Text = "Please enter a valid numeric temperature.";
            }
        }
    </script>
</body>
</html>
