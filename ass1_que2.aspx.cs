using System;
using System.Web.UI;

namespace Assignment1
{
    public partial class ass1_que2 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic if needed
        }

        protected void ButtonConvert_Click(object sender, EventArgs e)
        {
            double inputTemperature;
            bool isValidInput = double.TryParse(TextBoxTemperature.Text, out inputTemperature);

            if (!isValidInput)
            {
                LabelResult.Text = "Please enter a valid numeric temperature.";
                return;
            }

            // Check conversion type
            string conversionType = RadioButtonListConversion.SelectedValue;
            double convertedTemperature;

            if (conversionType == "CtoF")
            {
                convertedTemperature = (inputTemperature * 9 / 5) + 32;
                LabelResult.Text = $"Result: {inputTemperature}°C = {convertedTemperature:F2}°F";
            }
            else if (conversionType == "FtoC")
            {
                convertedTemperature = (inputTemperature - 32) * 5 / 9;
                LabelResult.Text = $"Result: {inputTemperature}°F = {convertedTemperature:F2}°C";
            }
        }
    }
}
