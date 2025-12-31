<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="validation.aspx.cs" Inherits="asp2_empty.validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <p>
        <br />
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1"><strong>VALIDATION DEMO&nbsp;</strong></span></p>
    <p>
        &nbsp;</p>
    <p>
        <strong>1)required field validation</strong></p>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="lbl_name" runat="server" Text="NAME"></asp:Label>
            <asp:TextBox ID="TxtBox_name" runat="server" style="margin-left: 93px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtBox_name" ErrorMessage="NAME IS REQUIRED" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </p>
        <p>
            <strong>2)range validator</strong></p>
        <p>
            <asp:Label ID="lbl_age" runat="server" Text="AGE"></asp:Label>
            <asp:TextBox ID="TxtBox_age" runat="server" style="margin-left: 112px"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TxtBox_age" ErrorMessage="AGE GREATER THAN 18 AND LESS THAN 40 IS REQ" ForeColor="Red" MaximumValue="40" MinimumValue="18" SetFocusOnError="True" Type="Integer">*</asp:RangeValidator>
            <strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtBox_age" ErrorMessage="ENTER AGE" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </strong>
        </p>
        <p>
            <strong>3)REGULAR EXPRESSION VALIDATOR</strong></p>
        <div>
            <asp:Label ID="lbl_email" runat="server" Text="EMAIL"></asp:Label>
            <asp:TextBox ID="TxtBox_email" runat="server" style="margin-left: 93px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtBox_email" ErrorMessage="EMAIL SHOULD BE IN PROPER FORMAT" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            <br />
            <br />
            <strong>4)COMPARE VALIDATOR</strong></div>
        <p>
            <asp:Label ID="lbl_password" runat="server" Text="PASSWORD"></asp:Label>
            <asp:TextBox ID="TxtBox_pass" runat="server" style="margin-left: 49px"></asp:TextBox>
            <strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtBox_pass" ErrorMessage="ENTER PASSWORD" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </strong>
        </p>
        <asp:Label ID="lbl_con_password" runat="server" Text="CONFIRM PASSWORD"></asp:Label>
        <asp:TextBox ID="TxtBox_cpass" runat="server" style="margin-left: 86px"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtBox_pass" ControlToValidate="TxtBox_cpass" ErrorMessage="PASSWORD DOESNT MATCH" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <br />
        <strong>
        <br />
        5)CUSTOM VALIDATOR</strong><br />
        <p>
            <asp:Label ID="lbl_num" runat="server" Text="NUMBER"></asp:Label>
            <asp:TextBox ID="TxtBox_num" runat="server" style="margin-left: 72px"></asp:TextBox>
&nbsp;number is even</p>
        <p>
            &nbsp;</p>
        <p>
            <strong>--VALIDATION SUMMARY</strong></p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True" />
    </form>
</body>
</html>
