using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1
{
    public partial class ass1_que3 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownListOperation.Items.Add(new ListItem("Select Operation", ""));
                DropDownListOperation.Items.Add(new ListItem("Addition", "Add"));
                DropDownListOperation.Items.Add(new ListItem("Subtraction", "Subtract"));
                DropDownListOperation.Items.Add(new ListItem("Multiplication", "Multiply"));
                DropDownListOperation.Items.Add(new ListItem("Division", "Divide"));
            }
        }

        protected void ButtonCalculate_Click(object sender, EventArgs e)
        {
            double number1, number2;
            if (double.TryParse(TextBoxNum1.Text, out number1) && double.TryParse(TextBoxNum2.Text, out number2))
            {
                string operation = DropDownListOperation.SelectedValue;
                double result;

                switch (operation)
                {
                    case "Add":
                        result = number1 + number2;
                        LabelResult.Text = $"Result: {result}";
                        break;

                    case "Subtract":
                        result = number1 - number2;
                        LabelResult.Text = $"Result: {result}";
                        break;

                    case "Multiply":
                        result = number1 * number2;
                        LabelResult.Text = $"Result: {result}";
                        break;

                    case "Divide":
                        if (number2 != 0)
                        {
                            result = number1 / number2;
                            LabelResult.Text = $"Result: {result}";
                        }
                        else
                        {
                            LabelResult.Text = "Error: Division by zero is not allowed.";
                        }
                        break;

                    default:
                        LabelResult.Text = "Please select a valid operation.";
                        break;
                }
            }
            else
            {
                LabelResult.Text = "Error: Please enter valid numeric values.";
            }
        }
    }
}
