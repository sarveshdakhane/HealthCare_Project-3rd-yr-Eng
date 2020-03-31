<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
      <title></title>


      <link rel="stylesheet" type="text/css" href="MenuTemp/menucss1.css"/>
      <link rel="stylesheet" type="text/css" href="MenuTemp/menucss2.css"/>
     

    <style type="text/css">
        .auto-style1 {
            left: 50px;
            top: 3em;
        }
        .auto-style2 {
            margin: 0em auto;
            width: 1200px;
            left: 0px;
            top: 0px;
        }
    </style>

</head>
<body>

      <form id="form1" runat="server"> 
   
    <div id="header-wrapper">
         
    <div id="header" class="auto-style2">
	<div id="logo" class="auto-style1">

        <h1><a href="#"><strong>Health Care</strong></a></h1>
	</div>
        
       
        <div id="menu">
            <ul>
        
         <li class="current_page_item" >
         <a href="#" accesskey="1" >
         <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="/Customer.aspx"> Home</asp:HyperLink></a></li>
         <li><a href="#" accesskey="2" title="">
             <asp:Menu ID="Menu1" runat="server" StaticSubMenuIndent="16px">
                 
        <dynamicmenuitemstyle backcolor="#007d7d"
          forecolor="Black"
          borderstyle="solid"
          borderwidth="0.1"
          bordercolor="Black"/>



                 <Items >
                     <asp:MenuItem Text="Profile" Value="Profile">
                         <asp:MenuItem NavigateUrl="personalinfo.aspx" Text="Personal info" Value="Personal info"></asp:MenuItem>
                         <asp:MenuItem NavigateUrl="changepass.aspx" Text="Change password" Value="Change password"></asp:MenuItem>
                     </asp:MenuItem>
                 </Items>
             </asp:Menu>
           </a></li>

            <li><a href="#" accesskey="3" title="">



                <asp:Menu ID="Menu4" runat="server">
                <Items>
                    <asp:MenuItem NavigateUrl="HealthCalculator.aspx" Text="Health Calculator" Value="Health Calculator"></asp:MenuItem>
                </Items>
            </asp:Menu>
                
            </a></li>


           <li><a href="#" accesskey="4" title=""><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="Exercise.aspx" >Exercise</asp:HyperLink></a></li>

            


           <li><a href="#" accesskey="5" title=""> <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="loginout.aspx" >LogOut </asp:HyperLink></a></li>
            </ul>
            
             </div>
             </div>
             </div>

  

    <div id="page" class="container" style="font-family: Arial; text-decoration: none;">
	<div id="content">
		<div class="title">
			<h2>Welcome to Health Care</h2>
            <h4>
			<span class="byline">
                 <asp:Label ID="Label1" runat="server" align="left"></asp:Label> <asp:Label ID="Label2" runat="server"></asp:Label>
			</span> 
                </h4>
			</div>
        <a href="#" class="image image-full"><img src="HomeTem/health-insurance-landing-img.png"  alt="" /></a>
		<p> Money doesn't mean anything to me. I've made a lot of money, but I want to enjoy life and not stress myself building my bank account. I give lots away and live simply, mostly out of a suitcase in hotels. We all know that good health is much more important
           <br /> by <strong>Keanu Reeves</strong>

         </p>
        </div>
       

        <div id="sidebar">
		<ul class="style1">
		   <li class="first">
               <h3>Check information about Disease</h3>
           <p><a href="#"><asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="240px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Diseases" DataValueField="Diseases"></asp:DropDownList>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:healthcareConnectionString %>" SelectCommand="SELECT [Diseases] FROM [Diseasesinfo]"></asp:SqlDataSource>
               </a></p>

                
             <asp:Button ID="Button1" runat="server" Text="check" OnClick="Jump"  CssClass="roundCorner" Width="80" Height="30" />
                    
             <asp:Label ID="Label3" runat="server" ></asp:Label>
            </li>
            <li style="color: #141414">
				<h2 style="text-decoration: underline; color: #8282FF">Health Tips For Weight Gain :</h2>




			 <h3>Eat Lots of Carbs and Fat, and Eat at Least 3 Times Per Day </h3>
              
               <strong>Nuts: </strong> Almonds, walnuts, macadamia nuts, peanuts, etc.
                <br /><br />
                <strong>Dried fruit:</strong> Raisins, dates, prunes and others.
                <br /><br/>
                <strong>High-fat dairy:</strong>  Whole milk, full-fat yogurt, cheese, cream.
                <br /><br/>
              <strong>Grains: </strong>  Whole grains like oats and brown rice.
                <br /><br >
               <strong> Meat:</strong> Chicken, beef, pork, lamb, etc. Choose fattier cuts.
                <br /><br />
               <strong> Tubers:</strong>  Potatoes, sweet potatoes and yams.
                <br /><br />

                <h3>Lift Heavy Weights and Improve Your Strength</h3>
                 <br />
               <strong> Go to a gym : </strong>  In order to make sure that the excess calories go to your muscles instead of just your fat cells, it is absolutely crucial to lift weights.
                <br /><br />

             


                  


               
              
                
			</li>
            </ul>
         
            
        </div>
        </div>
        </form>
</body>

</html>

 


      
        
    

        
       
            


        
   




   <%-- <form id="form1" runat="server">
        

       
        
        <div>
            <h3>welcome</h3>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginPage.aspx">Log <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                Out</asp:HyperLink>
            <hr />
            <asp:Menu ID="Menu3" runat="server" Orientation="Horizontal" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Arial" Font-Size="0.9em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
                <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#F7F6F3" />
                <DynamicSelectedStyle BackColor="#5D7B9D" />
                <Items>

                    <asp:MenuItem NavigateUrl="/Customer.aspx" Text="Home" Value="Home"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
                <StaticItemTemplate>
                </StaticItemTemplate>
            </asp:Menu>
            
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Arial" Font-Size="0.9em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
                <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#F7F6F3" />
                <DynamicSelectedStyle BackColor="#5D7B9D" />
                <Items>
                    <asp:MenuItem Text="Profile" Value="Profile">
                        <asp:MenuItem NavigateUrl="personalinfo.aspx" Text="Personal info" Value="Personal info"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="changepass.aspx" Text="Change password" Value="Change password"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
            </asp:Menu>
            <asp:Menu ID="Menu2" runat="server" Orientation="Horizontal" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Arial" Font-Size="0.9em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
                <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#F7F6F3" />
                <DynamicSelectedStyle BackColor="#5D7B9D" />
                <Items>
                    <asp:MenuItem NavigateUrl="Exercise.aspx" Text="Exercise" Value="Exercise"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
            </asp:Menu>
           
            <asp:Menu ID="Menu4" runat="server" Orientation="Horizontal" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Arial" Font-Size="0.9em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
                <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#F7F6F3" />
                <DynamicSelectedStyle BackColor="#5D7B9D" />
                <Items>
                    <asp:MenuItem NavigateUrl="HealthCalculator.aspx" Text="Health Calculator" Value="Health Calculator"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
            </asp:Menu>
            <hr />
            <asp:Label ID="Label1" runat="server" align="left"></asp:Label> <asp:Label ID="Label2" runat="server"></asp:Label>
            <hr />
          

            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="108px"></asp:DropDownList>
            <br />
            <div> 
            <asp:Button ID="Button1" runat="server" Text="check" OnClick="Jump"/>
            </div>
            <br />
            
          <asp:Label ID="Label3" runat="server" ></asp:Label>
        </div>
    </form>--%>
        
