<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="asp2_empty.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/new.xml" Width="250px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        multiview controller<br />
        <br />
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                hellow this is from view 1<br />
                <asp:Button ID="next_btn" runat="server" Text="next" OnClick="next_btn_Click" />
                <br />
            </asp:View>
            <asp:View ID ="View2" runat="server">
                hello from view 2<br />
                <asp:Button ID="Button2" runat="server" Text="Prev" OnClick="Button2_Click" />
                <asp:Button ID="next_view2_btn" runat="server" Text="Next" OnClick="next_view2_btn_Click" />
                <br />
            </asp:View>
            <asp:View ID ="View3" runat ="server">
                welcome to view 3<br />
                <br />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Prev" />
            </asp:View>
        </asp:MultiView>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            AUTO POST BACK
        </p>
        <p>
            <asp:Label ID="auto_name" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="TextBox_auto" runat="server" AutoPostBack="True" Width="278px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lbl_sub" runat="server" Text="Subject"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>JAVA</asp:ListItem>
                <asp:ListItem>.NET</asp:ListItem>
            </asp:DropDownList>
        </p>
        <asp:Label ID="Lbl_auto_result" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
