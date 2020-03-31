<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Recoverpass.aspx.cs" Inherits="Recoverpass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="ResisterTem/rescss1.css"/>
    <link rel="stylesheet" type="text/css" href="ResisterTem/rescss2.css"/>
    
    <link rel="stylesheet" type="text/css" href="logincss2.css"/>
    <link rel="stylesheet" type="text/css" href="logincss3.css"/>
    <link rel="stylesheet" type="text/css" href="logincss4.css"/>
</head>
<body>
 
<div class="container">
    <form id="form1" runat="server">
        <div class="row">
            

            <h3>Password Recovery Page</h3>
            <hr />
            <br />


            <table>
                <tr>
                     <td>user id</td> <td><asp:TextBox ID="TextBox1" runat="server" Width="181px" ></asp:TextBox> </td>
                 </tr>
                <tr>
                    <td>sequrity quetion</td>
                <td><asp:DropDownList ID="DropDownList1" runat="server" Width="230px">
                        <asp:ListItem>your Favorite Color ?</asp:ListItem>
                        <asp:ListItem>which is your favorite actor?</asp:ListItem>
                   
                        </asp:DropDownList></td>
                </tr>

                <tr>
                    <td>answer</td>
                    <td><asp:TextBox ID="TextBox2" runat="server" Width="184px"></asp:TextBox></td>

                        


                <tr>
                    <td>
                        <div class="container-login100-form-btn">
                        <asp:Button ID="Button1" runat="server" Text="Recover" onclick="findid" CssClass="login100-form-btn"  />
                        </div>
                </tr>




             </table>

            <asp:Label ID="Label1" runat="server" ForeColor="Green"></asp:Label>
             <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>


            <br />

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="loginpage.aspx"  >Home</asp:HyperLink>

    </form>
    </div>
</body>
</html>
