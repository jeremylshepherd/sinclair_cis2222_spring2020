using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sinclair_cis2222_spring2020
{

    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Lab 02 Button Functions
        protected void CalcButton_Click(object sender, EventArgs e)
        {
            double calculatedInterest,
            loanAmount = Convert.ToDouble(LoanAmountInput.Text),
            interestRate = Convert.ToDouble(InterestRateInput.SelectedValue),
            numberOfYears = Convert.ToDouble(TermInput.SelectedValue);

            calculatedInterest = loanAmount * interestRate * numberOfYears;
            MortgageLabel.Visible = true;
            MortgageLabel.Text = string.Format("Total interest for a loan of {0:C} at {1:0%} interest for {2} years is {3:C}.", loanAmount, interestRate, numberOfYears, calculatedInterest);
        }

        protected void ResetButton_Click(object sender, EventArgs e)
        {
            LoanAmountInput.Text = "";
            InterestRateInput.SelectedValue = ".07";
            TermInput.SelectedValue = "20";
            MortgageLabel.Visible = false;
            MortgageLabel.Text = "";
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (UserNameTextBox.Text.Length > 0 || UserEmailTextBox.Text.Length > 0 || UserPhoneTextBox.Text.Length > 0)
            {
                MessageLabel.Text = string.Format("The Information entered:<br/>Name: {0}<br />Email: {1}<br />Phone Number: {2}.", UserNameTextBox.Text, UserEmailTextBox.Text, UserPhoneTextBox.Text);
                MessageLabel.CssClass = "col-form-label-lg text-success";
            }
            else
            {
                MessageLabel.Text = "At least one field is required!";
                MessageLabel.CssClass = "col-form-label-lg text-danger";
            }
            MessageLabel.Visible = true;
        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            UserNameTextBox.Text = "";
            UserEmailTextBox.Text = "";
            UserPhoneTextBox.Text = "";
            MessageLabel.Text = "";
            MessageLabel.Visible = false;
        }
    }
}