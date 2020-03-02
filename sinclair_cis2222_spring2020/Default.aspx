<%@ Page Language="C#" Inherits="sinclair_cis2222_spring2020.Default" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Jeremy Shepherd Lab 01</title>
    <link rel="stylesheet" href="Content/bootstrap.flatly.min.css" />
    <link rel="stylesheet" href="lib/styles.css" />
</head>
<body>
    <header>
        <div class="container">
            <h1>Jeremy L. Shepherd</h1>
            <h2>CIS2222 Spring Semester 2020 Projects</h2>
        </div>
    </header>
      
    <!--LAB #02    -->
    <div class="container">
       <hr/>
    </div>
        
    <div ID="Lab02" runat="server" class="container">
        <h3>Interest Rate Calculator (Lab #02)</h3>
        <hr />
        <form class="form-group" id="form2" runat="server">
            <fieldset>
                <legend>Interest Calculator</legend>
                <div class="form-group row">
                    <asp:Label ID="LoanAmoutLabel" class="col-sm-2 col-form-label" runat="server" Text="Loan Amount" AssociatedControlID="LoanAmountInput" AccessKey="N"></asp:Label>
                    <div class="col-sm-5">
                        <asp:TextBox ID="LoanAmountInput" class="form-control" runat="server" Columns="15" MaxLength="15"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <asp:Label ID="InterestRateLabel" class="col-sm-2 col-form-label" Text="Interest Rate" runat="server" AssociatedControlID="InterestRateInput" />
                    <div class="col-sm-5">
                        <asp:RadioButtonList ID="InterestRateInput" class="form-check-input" runat="server">
                            <asp:ListItem Value=".05">5%</asp:ListItem>
                            <asp:ListItem Value=".06">6%</asp:ListItem>
                            <asp:ListItem Value=".07" Selected="true">7%</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="form-group row">
                    <asp:Label ID="LoanTermLabel" class="col-sm-2 col-form-label" Text="Number of Years" runat="server" AssociatedControlID="TermInput" />
                    <div class="col-sm-5">
                        <asp:DropDownList ID="TermInput" class="form-check-input" runat="server">
                            <asp:ListItem Value="10">10</asp:ListItem>
                            <asp:ListItem Value="15">15</asp:ListItem>
                            <asp:ListItem Selected="true" Value="20">20</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <asp:Button ID="CalcSubmit" class="btn btn-primary btn-lg" Text="Calculate Interest" runat="server" OnClick="CalcButton_Click" />
                <asp:Button ID="CalcClear" class="btn btn-danger btn-lg" Text="Reset" runat="server" OnClick="ResetButton_Click" /><br />
                <asp:Label ID="MortgageLabel" Text="" runat="server" Visible="false" />
            </fieldset>
        </form>
    </div>    
        
    <!--LAB #01    -->
    <div class="container"><hr/></div>
        
    <div ID="Lab01" runat="server" class="container">
        <h3>Coding club registration Form (Lab #01/#03)</h3>
        <hr />
        <form class="form-group" id="form1" runat="server">
            <div class="form-group row">
                <asp:Label ID="UserNameLabel" class="col-sm-2 col-form-label" runat="server" Text="Your Name:" AssociatedControlID="UserNameTextBox" AccessKey="N"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="UserNameTextBox" class="form-control" runat="server" Columns="40" MaxLength="40" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqName" ErrorMessage="Name Required" ControlToValidate="UserNameTextBox" runat="server" />
                </div>
            </div>
            <div class="form-group row">
                <asp:Label ID="UserEmailLabel" class="col-sm-2 col-form-label" Text="Your Email:" runat="server" AssociatedControlID="UserEmailTextBox" />
                <div class="col-sm-10">
                    <asp:TextBox ID="UserEmailTextBox" class="form-control" runat="server" Columns="40" MaxLength="40"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqEmail" ErrorMessage="Email Required" ControlToValidate="UserEmailTextBox" runat="server" />
                    <asp:RegularExpressionValidator ID="regExEmail" runat="server" ControlToValidate="UserEmailTextBox" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                </div>
            </div>
            <div class="form-group row">
                <asp:Label ID="UserPhoneLabel" class="col-sm-2 col-form-label" Text="Your Phone:" runat="server" AssociatedControlID="UserPhoneTextBox" />
                <div class="col-sm-10">
                    <asp:TextBox ID="UserPhoneTextBox" class="form-control" runat="server" Columns="40" MaxLength="40"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqPhone" ErrorMessage="Phone Required" ControlToValidate="UserPhoneTextBox" runat="server" />
                    <asp:RegularExpressionValidator ID="regExPhone" runat="server" ControlToValidate="UserPhoneTextBox" ErrorMessage="Invalid Phone Number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" />
                </div>
            </div>
            <asp:Button ID="UserSubmit" class="btn btn-primary btn-lg" Text="Submit Form" runat="server" OnClick="SubmitButton_Click" />
            <asp:Button ID="UserClear" class="btn btn-danger btn-lg" Text="Clear Form" runat="server" OnClick="ClearButton_Click" /><br />
            <asp:Label ID="MessageLabel" Text="" runat="server" Visible="false" />
        </form>
    </div>
</body>
</html>
