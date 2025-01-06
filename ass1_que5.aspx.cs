using System;
using System.Web.UI;

namespace Assignment1
{
    public partial class ass1_que5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Ensure this is executed only on the first load, not on postback.
            if (!IsPostBack)
            {
                LabelResult.Text = ""; // Clear any previous text on initial load.
            }
        }

        protected void DropDownListOptions_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Get the selected value from the dropdown list.
            string selectedValue = DropDownListOptions.SelectedItem.Text;

            // Display the selected city in the LabelResult.
            if (!string.IsNullOrEmpty(selectedValue) && selectedValue != "Select an option")
            {
                LabelResult.Text = $"You selected: {selectedValue}";
            }
            else
            {
                LabelResult.Text = ""; // Clear the label if no valid option is selected.
            }
        }
    }
}
