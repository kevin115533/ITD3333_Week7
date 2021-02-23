<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>User Name:</label><asp:TextBox ID="userNameTxtbx" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ControlToValidate="userNameTxtbx" ID="userNameValidator" ValidateEmptyText="False" ValidationExpression="([a-zA-Z])(([a-zA-Z0-9])\w+)" runat="server" ErrorMessage="Username cannot start with a number or contain any special characters"></asp:RegularExpressionValidator>
            <br />
            <label>Password:</label><asp:TextBox ID="pwTxtbx" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="pwTxtbx" ID="pwValidator" runat="server"  ErrorMessage="Please enter a password."></asp:RequiredFieldValidator>
            <br />
            <label>Password (Retype):</label><asp:TextBox ID="retypePwTxtbx" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToCompare="pwTxtbx" ControlToValidate="retypePwTxtbx"  runat="server" ValidateEmptyText="False"  ErrorMessage="Passwords must match!"></asp:RequiredFieldValidator>
            <br />
            <label>Email:</label><asp:TextBox ID="emailTxtbx" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ControlToValidate="emailTxtbx" ValidationExpression="(\w+)@(\w+)\.(com|edu|net)" ID="emailValidator" runat="server" ValidateEmptyText="False" ErrorMessage="Please enter a valid email address."></asp:RegularExpressionValidator>
            <br />
            <label>Age:</label><asp:TextBox ID="ageTxtbx" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="ageValidator" runat="server" ControlToValidate="ageTxtbx" MinimumValue="0" MaximumValue="165" ValidateEmptyText="False"   Type="Integer" ErrorMessage="Please enter an age from 0 to 165."></asp:RangeValidator>
            <br />
            <label>Referrer Code:</label><asp:TextBox ID="referTxtbx" runat="server"></asp:TextBox>
            <asp:CustomValidator ControlToValidate="referTxtbx" ID="referValidator" runat="server" OnServerValidate="vldCode" ValidateEmptyText="False"  ErrorMessage="Try a string that starts with 014"></asp:CustomValidator>
            <br />
            <label>Address: </label><asp:TextBox ID="addressTxtbx" runat="server" Width="309px"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="addressTxtbx" ID="addressValidator" runat="server" ValidateEmptyText="False" ErrorMessage="Please enter an address"></asp:RequiredFieldValidator>
            <br />
            <label>City: </label><asp:TextBox ID="cityTxtbx" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ControlToValidate="cityTxtbx" ID="cityValidator" runat="server" ValidationExpression="([a-zA-Z]\w+)" ValidateEmptyText="False" ErrorMessage="Please enter a valid city no. No special characters are allowed."></asp:RegularExpressionValidator>
            <br />
            <label>State: </label><asp:TextBox ID="stateTxtbx" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ControlToValidate="stateTxtbx" ID="stateValidator" runat="server" ValidationExpression="([a-zA-Z]\w+)" ValidateEmptyText="False" ErrorMessage="Please enter a valid city no. No special characters are allowed."></asp:RegularExpressionValidator>
            <br />
            <label>Zip Code: </label><asp:TextBox ID="zipTxtbx" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ControlToValidate="zipTxtbx" ID="zipValidator" runat="server" ValidationExpression="\d{5}" ValidateEmptyText="False" ErrorMessage="Please enter a valid zip code. (#####)">
            </asp:RegularExpressionValidator>
            <br />
            <label>Home Phone (###-###-####):</label><asp:TextBox ID="homeTxt" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ControlToValidate="homeTxt" ID="homeValidator" runat="server" ValidationExpression="(\d{3})-(\d{3})-(\d{4})" ValidateEmptyText="False" ErrorMessage="Please enter phone number in proper format"></asp:RegularExpressionValidator>
            <br />
            <label>Cell Phone (###-###-####):</label><asp:TextBox ID="celltxt" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ControlToValidate="celltxt" ID="cellValidator" runat="server" ValidationExpression="(\d{3})-(\d{3})-(\d{4})" ValidateEmptyText="False" ErrorMessage="Please enter phone number in proper format"></asp:RegularExpressionValidator>
            <br />
            <label>Birthdate (##/##/####):</label>
            <asp:TextBox ID="bdayTxtbx" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ControlToValidate="bdayTxtbx" ID="bdayValidator" runat="server" ValidationExpression="(\d{2})\/(\d{2})\/(\d{4})" ValidateEmptyText="False" ErrorMessage="Enter a valid birth in the valid format"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Button CssClass="aspBtn" ID="submitBtn" runat="server" Text="Submit" OnClick="submitBtn_Click" />
            <asp:Button CssClass="aspBtn" ID="cancelBtn" runat="server" Text="Cancel" OnClick="cancelBtn_Click" /><br /><br />
            <br />
        </div>
    </form>
</body>
</html>

<style>
    label{
    display: inline-block;
    float: left;
    clear: left;
    width: 200px;
    text-align: left;
    }
    .aspBtn{
        width: 150px;
        height: 26px;
    }

</style>

