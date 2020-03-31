<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personalinfo.aspx.cs" Inherits="personalinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


     <link rel="stylesheet" type="text/css" href="ResisterTem/rescss1.css"/>
    <link rel="stylesheet" type="text/css" href="ResisterTem/rescss2.css"/>
    
    <link rel="stylesheet" type="text/css" href="logincss2.css"/>
    <link rel="stylesheet" type="text/css" href="logincss3.css"/>
    <link rel="stylesheet" type="text/css" href="logincss4.css"/>
    <style type="text/css">
        .auto-style1 {
            font-family: Montserrat-Bold;
            font-size: 15px;
            line-height: 1.5;
            color: #fff;
            text-transform: uppercase;
            border-radius: 25px;
            background: #57b846;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0 25px;
            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            -moz-transition: all 0.4s;
            transition: all 0.4s;
        }
    </style>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server">
        
        <div>
            <br />
            <h2>Personal Data </h2>
            <hr />
            <br />
         
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label><br />
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label><br />
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label><br />
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label><br />
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>


            <br />
            <br />
            <hr />
            <br />


            <div class="row">
            

            <h3>Update Your Data</h3>

            <br />
            <hr />
            <br />


        
                     Address 
                <asp:TextBox ID="TextBox1" runat="server" Width="179px" ></asp:TextBox> 
                
                

             
                    Pincode
                    <asp:TextBox ID="TextBox2" runat="server" Width="179px" ></asp:TextBox>
                    

                        
               
                    Height&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" Width="179px" ></asp:TextBox>
                    
                     
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    
                     
                    Inch&nbsp;
                         <asp:TextBox ID="TextBox5" runat="server" Width="179px"></asp:TextBox>
                    
                      
                   
                   &nbsp;Weight&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" Width="179px"></asp:TextBox>




                    
                    &nbsp; Age&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="TextBox6" runat="server" Width="178px" ></asp:TextBox>
                    

                        
                
                        <div class="container-login100-form-btn">
                        <asp:Button ID="Button1" runat="server" Text="Update" onclick="Change" CssClass="auto-style1" Width="123px" Height="36px"  />
                        </div>
            
                        
                       <asp:Label ID="Label8" runat="server"  ForeColor="#00CC00"></asp:Label>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <%-- <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Customer.aspx">Home</asp:HyperLink>--%>



<br />

</div>
            </div>
</form>

        </div>
</body>

    
</html>
