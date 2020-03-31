<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HealthCalculator.aspx.cs" Inherits="HealthCalculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="CalcuTemp/calucss1.css"/>
     <link rel="stylesheet" type="text/css" href="CalcuTemp/calucss2.css"/>
    <link rel="stylesheet" type="text/css" href="CalcuTemp/calucss3.css"/>
    <link rel="stylesheet" type="text/css" href="logincss2.css"/>
    <link rel="stylesheet" type="text/css" href="logincss3.css"/>
    <link rel="stylesheet" type="text/css" href="logincss4.css"/>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            margin-left: 34px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">

     <div class="container">
         
         <div class="price">
              <h1>Ideal Weight Calculator(Based on the Miller formula) </h1>
         </div>
         
     <div class="card__container">
     <div class="card">

   
                 <div class="row cardholder">

                <div class="info">

                 <asp:TextBox ID="TextBox1" runat="server" Width="309px" placeholder="Current Heigh in feet" Font-Bold="true" Font-Names="Arial" Font-Size="Large"></asp:TextBox>
                </div>
                </div>
         
                   <div class="row number">
                    <div class="info">
                    <asp:TextBox ID="TextBox2" runat="server" Width="393px" placeholder="Inch" Font-Bold="true" Font-Names="Arial" Font-Size="Large" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Required" ControlToValidate="TextBox2" ></asp:RequiredFieldValidator>
                </div>
                </div>

              
                  <div class="row paypal">
                      <div class="left">
                            
                    
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="gen" Checked="true" />
                          <div class="radio"></div>
                          </div>
                          </div>
                                  
                      
                      <div class="row credit" style="width: 100%; height: 16%">
                          <div class="left">
                           <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="gen"/>
                            <div class="radio"></div>
                        </div>
                       </div>


                         <div class="row cardholder">
                         <div class="info">
                        <asp:TextBox ID="TextBox3" runat="server" Height="43px" Width="242px" CssClass="auto-style2" placeholder="Current Age" Font-Bold="true" Font-Names="Arial" Font-Size="Large"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" * Required" ControlToValidate="TextBox3"  ></asp:RequiredFieldValidator>
                        </div>
                        </div>

         
       </div>
</div>

          <div>
                   <asp:Label ID="Label1" runat="server" ForeColor="#00CC00"  Font-Bold="true"></asp:Label>
              </div>


         <div class="container-login100-form-btn">
                   <div class=" button " >
                    <asp:Button ID="Check" runat="server" Text="Check" OnClick="Button1_Click" CssClass="login100-form-btn"  Width="190" />
                      
                   </div>
             </div>
         <br />


      <%--                
        <div>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Customer.aspx">Home</asp:HyperLink>
    
      </div>--%>
                          

         </div>
         </form>            
   
            
</body>
   
</html>
