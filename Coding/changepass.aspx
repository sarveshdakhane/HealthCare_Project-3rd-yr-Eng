<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepass.aspx.cs" Inherits="changepass" %>

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
            

            <h3>Change your Password</h3>
            <hr />
            <br />


            <table>
                <tr>
                     <td>userID</td> <td><asp:TextBox ID="TextBox1" runat="server" Width="181px" ></asp:TextBox> </td>
                 </tr>
                

                <tr>
                    <td>Current Passowrd</td>
                    <td><asp:TextBox ID="TextBox2" runat="server" Width="184px" TextMode="Password"></asp:TextBox></td>
                    </tr>

                        
                <tr>
                    <td>New Passowrd</td>
                    <td><asp:TextBox ID="TextBox3" runat="server" Width="184px" TextMode="Password"></asp:TextBox></td>
               </tr>
                      
                    <tr>
                    <td>Conform Password</td>
                    <td><asp:TextBox ID="TextBox4" runat="server" Width="184px" TextMode="Password"></asp:TextBox></td>
                    </tr>


                        


                <tr>
                    <td>
                        <div class="container-login100-form-btn">
                        <asp:Button ID="Button1" runat="server" Text="Recover" onclick="Change" CssClass="login100-form-btn"  />
                        </div>
                        </td>
                </tr>
                        
                        <asp:Label ID="Label1" runat="server" ForeColor="Red" ></asp:Label>
                        <asp:Label ID="Label2" runat="server" ForeColor="#00CC00" ></asp:Label>




             </table>
              </div>

            

            <br />

           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Customer.aspx">Home</asp:HyperLink>

    </form>
    </div>
   
</body>
</html>
