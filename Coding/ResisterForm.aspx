<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResisterForm.aspx.cs" Inherits="ResisterForm" %>

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
        .auto-style2 {
            margin-left: 78px;
        }
    </style>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server">
        <div class="row">
            <h2>Registartion Form</h2>

        <div class="input-group input-group-icon">
      
	      <asp:TextBox ID="TextBox1" runat="server" Placeholder="First Name"></asp:TextBox>
           <div class="input-icon">  
           <i class="fa fa-user"></i>
        </div>
        </div>

       <div class="input-group input-group-icon">
           
          <asp:TextBox ID="TextBox2" runat="server" Placeholder="Last Name" ></asp:TextBox>
          <div class="input-icon">  
           <i class="fa fa-user"></i>
        </div>
        </div>

            <div class="input-group input-group-icon">
                
                   
                 <asp:TextBox ID="TextBox3" runat="server" placeholder="User ID"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage=" *Must Requierd" ForeColor="Red"></asp:RequiredFieldValidator>
             <div class="input-icon"><i class="fa fa-envelope"></i></div>
             </div>     


            <div class="input-group input-group-icon">
                 
         <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" placeholder="Password" ></asp:TextBox></td>
           <div class="input-icon"><i class="fa fa-key"></i></div>
      </div>
    </div>


        <div class="row">

          <div class="col-half">
            <h4>Date of Birth</h4>
          <div class="input-group">
          <div class="col-third">
         <asp:TextBox ID="TextBox12" runat="server" Width="116px" placeholder="yy/mm/dd "></asp:TextBox> 
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="fill in proper format" ControlToValidate="TextBox12" ></asp:RequiredFieldValidator>
         <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox12"  ErrorMessage="* fill in proper format" ></asp:RegularExpressionValidator--%>
             </div>
        </div>
      </div>             
                      
                  
        <div class="col-half">
        <h4>Gender</h4>
        <div class="input-group">
                 
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="gen" Checked="true" />
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="gen"  />
           </div>
        </div>
      </div>
    

    <div class="row">      
                    <h4>Address</h4>
       <asp:TextBox ID="TextBox5" runat="server" placeholder=" Current Address"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>
     </div>

    <div class="row">

    <div class="col-half">
         <h4> pincode</h4>
          <div class="input-group">
          <div class="col-third">
<asp:TextBox ID="TextBox6" runat="server" placeholder=" Pincode" Width="143px" ></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="only 6 digits allowed" ControlToValidate="TextBox6" ValidationExpression="^\d{6}$"></asp:RegularExpressionValidator>
          </div>
                </div>
      </div>      

           <div class="col-half">
        <h4>Age</h4>
        <div class="input-group">
         <asp:TextBox ID="TextBox7" runat="server" placeholder="Age" CssClass="auto-style2" Width="60px" ></asp:TextBox> 
            </div>
        </div>
      </div>


          <div class="row">
          <div class="col-half">
              <h4>  Height</h4>
          <div class="input-group">
          <div class="col-third">
       <asp:TextBox ID="TextBox8" runat="server" placeholder="Height in feet" Width="201px"></asp:TextBox>
        </div>   </div>  </div>
                <div class="col-half">
              <h4>  Inch</h4>
          <div class="input-group">
          <div class="col-third">
              <asp:TextBox ID="TextBox13" runat="server" placeholder="Inch" Width="201px"></asp:TextBox>
              </div>   </div>  </div>


                <div class="col-half">
        <h4>Weight</h4>
        <div class="input-group">
           
      <asp:TextBox ID="TextBox9" runat="server" placeholder="Weight in Kg">  </asp:TextBox> </div>
        </div></div>
      
     
          <div class="row">
           <h4>Mobile Number</h4>
      <div class="input-group">
                   
       <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="only 10 digits allowed" ControlToValidate="TextBox10" ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
      </div>
 <div class="col-half">
     <div class="input-group">

                    <h4>Sequrity Question</h4>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="464px">
                        <asp:ListItem>your favourite Color ?</asp:ListItem>
                        <asp:ListItem>which is your favourite actor?</asp:ListItem>
                        <asp:ListItem> Your favourite fruit ?</asp:ListItem>
                    </asp:DropDownList>

                 </div>
                </div>
              </div>
            
             <h4>Answer</h4>
             <div class="input-group">
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox> 
                 </div>
          
        <div class="container-login100-form-btn">
             <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click"  CssClass="login100-form-btn"/> 
            </div>
                    
               
       </form>
        </div>
</body>
</html>
