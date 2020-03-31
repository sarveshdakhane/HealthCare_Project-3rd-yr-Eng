<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="logincss1.css"/>
    <link rel="stylesheet" type="text/css" href="logincss2.css"/>
    <link rel="stylesheet" type="text/css" href="logincss3.css"/>
    <link rel="stylesheet" type="text/css" href="logincss4.css"/>



    <style type="text/css">
        .auto-style7 {
            width: 117px;
            height: 104px;
        }
    </style>



</head>
<body >
    <div class="limitar">
    <div class="container-login100">
    <div class="wrap-login100">
        <div class="login100-pic js-tilt" data-tilt="">
				 <img src="LoginTem/heartlogo.jpg" />
				 </div>
   
    
    <form id="form1" runat="server" class="login100-form validate-form">
     
        
            <span class="login100-form-title">
                <h1> Health care</h1>
                <hr />
				<h5>Login Here</h5>		
					</span>
        
        
      
            
                <div class="wrap-input100 validate-input">

                <asp:TextBox ID="TextBox1" runat="server"  CssClass="input100" Placeholder=" User Id"> </asp:TextBox> 
                        <span class="focus-input100"></span>
						<span class="symbol-input100">
						<i class="fa fa-envelope" aria-hidden="true"></i>
			    </span>
                   
                </div >

               <div>
                 
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="input100" placeholder="Password"></asp:TextBox>
                    <span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
                 </div>
               
                <div class="container-login100-form-btn">
                <asp:Button ID="Button1" runat="server" Text="Login"  OnClick="checkif" CssClass="login100-form-btn" />
                </div>


                <br />
                         <asp:Label ID="Label1" runat="server" ForeColor="Red"   ></asp:Label>
                 <br />

          
        <div class="text-center p-t-12">
            
            <asp:HyperLink ID="HyperLink1" runat="server" BorderColor="White" NavigateUrl="Recoverpass.aspx" CssClass="txt1"  >
                        
                <span class="txt1">
				Forget Password
			    </span>
           </asp:HyperLink>
               
            
            <asp:HyperLink ID="HyperLink2" runat="server" BorderStyle="None" NavigateUrl="ResisterForm.aspx" CssClass="txt2">
                Resisteration Form
            </asp:HyperLink>
       
           </div>

    </form>
        </div>
        </div>
         </div>
    <!--===============================================================================================-->	
	<script src=" LoginTemp/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="LoginTemp/vendor/bootstrap/js/popper.js"></script>
	<script src="LoginTemp/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="LoginTemp/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="LoginTemp/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="LoginTemp/js/main.js"></script>

         </body>
</html>
