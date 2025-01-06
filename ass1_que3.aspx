<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ass1_que3.aspx.cs" Inherits="Assignment1.ass1_que3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Algebraic Operations</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; margin-top: 50px;">
            <h1>
                <asp:Label ID="Label4" runat="server" Text="DAVDA ISHA"></asp:Label>
            </h1>
            <h1>Algebraic Operations</h1>
            
            <asp:Label ID="Label1" runat="server" Text="Enter First Number:" Font-Size="Large"></asp:Label>
            <br /><br />
            <asp:TextBox ID="TextBoxNum1" runat="server" Font-Size="Medium"></asp:TextBox>
            <br /><br />
            
            <asp:Label ID="Label2" runat="server" Text="Enter Second Number:" Font-Size="Large"></asp:Label>
            <br /><br />
            <asp:TextBox ID="TextBoxNum2" runat="server" Font-Size="Medium"></asp:TextBox>
            <br /><br />
            
            <asp:Label ID="Label3" runat="server" Text="Select Operation:" Font-Size="Large"></asp:Label>
            <br /><br />
            <asp:DropDownList ID="DropDownListOperation" runat="server" Font-Size="Medium">
                <asp:ListItem Text="Select Operation" Value="" />
                <asp:ListItem Text="Addition" Value="Add" />
                <asp:ListItem Text="Subtraction" Value="Subtract" />
                <asp:ListItem Text="Multiplication" Value="Multiply" />
                <asp:ListItem Text="Division" Value="Divide" />
            </asp:DropDownList>
            <br /><br />
            
            <asp:Button ID="ButtonCalculate" runat="server" Text="Calculate" Font-Size="Medium" OnClick="ButtonCalculate_Click" />
            <br /><br />
            
            <asp:Label ID="LabelResult" runat="server" Font-Size="Large" ForeColor="Blue"></asp:Label>
        </div>
    </form>
    
    <script runat="server">
        protected void ButtonCalculate_Click(object sender, EventArgs e)
        {
            // Retrieve the numbers from the textboxes
            double num1, num2;
            bool isNum1Valid = double.TryParse(TextBoxNum1.Text, out num1);
            bool isNum2Valid = double.TryParse(TextBoxNum2.Text, out num2);

            if (isNum1Valid && isNum2Valid)
            {
                string operation = DropDownListOperation.SelectedValue;
                double result = 0;

                switch (operation)
                {
                    case "Add":
                        result = num1 + num2;
                        LabelResult.Text = $"Result: {result}";
                        break;
                    case "Subtract":
                        result = num1 - num2;
                        LabelResult.Text = $"Result: {result}";
                        break;
                    case "Multiply":
                        result = num1 * num2;
                        LabelResult.Text = $"Result: {result}";
                        break;
                    case "Divide":
                        if (num2 != 0)
                        {
                            result = num1 / num2;
                            LabelResult.Text = $"Result: {result}";
                        }
                        else
                        {
                            LabelResult.Text = "Error: Cannot divide by zero!";
                        }
                        break;
                    default:
                        LabelResult.Text = "Please select a valid operation.";
                        break;
                }
            }
            else
            {
                LabelResult.Text = "Please enter valid numeric values.";
            }
        }
    </script>
</body>
</html>
