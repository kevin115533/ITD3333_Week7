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
            <asp:Label ID="userErrLbl" runat="server" Text=""></asp:Label>
            <br />
            <label>Password:</label><asp:TextBox ID="pwTxtbx" runat="server"></asp:TextBox>
            <asp:Label ID="pwErrLbl" runat="server" Text=""></asp:Label>
            <br />
            <label>Password (Retype):</label><asp:TextBox ID="retypePwTxtbx" runat="server"></asp:TextBox>
            <asp:Label ID="retypePwErrLbl" runat="server" Text=""></asp:Label>
            <br />
            <label>Email:</label><asp:TextBox ID="emailTxtbx" runat="server"></asp:TextBox>
            <asp:Label ID="emailErrLbl" runat="server" Text=""></asp:Label>
            <br />
            <label>Age:</label><asp:TextBox ID="ageTxtbx" runat="server"></asp:TextBox>
            <asp:Label ID="ageErrLbl" runat="server" Text=""></asp:Label>
            <asp:RangeValidator ID="ageValidator" runat="server" ControlToValidate="ageTxtbx" MinimumValue="0" MaximumValue="165" ForeColor="Red" Type="Integer" ErrorMessage="Please enter an age from 0 to 165"></asp:RangeValidator>
            <br />
            <label>Referrer Code:</label><asp:TextBox ID="referTxtbx" runat="server"></asp:TextBox>
            <asp:Label ID="referrErrLbl" runat="server" Text=""></asp:Label>
            <br /><br />
            <asp:Button CssClass="aspBtn" ID="submitBtn" runat="server" Text="Submit" OnClick="submitBtn_Click" />
            <asp:Button CssClass="aspBtn" ID="cancelBtn" runat="server" Text="Cancel" /><br /><br />
            <br />
            <asp:Label ID="messageLbl" runat="server" EnableViewState="false" ></asp:Label>
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

