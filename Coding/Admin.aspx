<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="MenuTemp/menucss1.css"/>
      <link rel="stylesheet" type="text/css" href="MenuTemp/menucss2.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <hr />
        <div>
            <h2 style="color: #FFFFFF; font-family: Arial;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Patients</h2>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginPage.aspx">Logout</asp:HyperLink>
           <hr />
            <asp:GridView ID="GridView1" runat="server" CellPadding="2" ForeColor="#333333" GridLines="None" Width="236px" AutoGenerateColumns="False" DataKeyNames="uid" DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="uid" HeaderText="uid" ReadOnly="True" SortExpression="uid" />
                    <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                    <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                    <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                    <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                    <asp:BoundField DataField="mobileno" HeaderText="mobileno" SortExpression="mobileno" />
                    <asp:BoundField DataField="height" HeaderText="height" SortExpression="height" />
                    <asp:BoundField DataField="weigth" HeaderText="weigth" SortExpression="weigth" />
                    <asp:BoundField DataField="sque" HeaderText="sque" SortExpression="sque" />
                    <asp:BoundField DataField="ans" HeaderText="ans" SortExpression="ans" />
                    <asp:BoundField DataField="inch" HeaderText="inch" SortExpression="inch" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
       
        
        
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:healthcareConnectionString %>" DeleteCommand="DELETE FROM [cusinfo] WHERE [uid] = @uid" InsertCommand="INSERT INTO [cusinfo] ([uid], [fname], [lname], [dob], [gender], [address], [pincode], [age], [mobileno], [height], [weigth], [sque], [ans], [inch]) VALUES (@uid, @fname, @lname, @dob, @gender, @address, @pincode, @age, @mobileno, @height, @weigth, @sque, @ans, @inch)" SelectCommand="SELECT * FROM [cusinfo]" UpdateCommand="UPDATE [cusinfo] SET [fname] = @fname, [lname] = @lname, [dob] = @dob, [gender] = @gender, [address] = @address, [pincode] = @pincode, [age] = @age, [mobileno] = @mobileno, [height] = @height, [weigth] = @weigth, [sque] = @sque, [ans] = @ans, [inch] = @inch WHERE [uid] = @uid">
                <DeleteParameters>
                    <asp:Parameter Name="uid" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="uid" Type="String" />
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="lname" Type="String" />
                    <asp:Parameter DbType="Date" Name="dob" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="pincode" Type="Int32" />
                    <asp:Parameter Name="age" Type="Int32" />
                    <asp:Parameter Name="mobileno" Type="String" />
                    <asp:Parameter Name="height" Type="Double" />
                    <asp:Parameter Name="weigth" Type="Double" />
                    <asp:Parameter Name="sque" Type="String" />
                    <asp:Parameter Name="ans" Type="String" />
                    <asp:Parameter Name="inch" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="lname" Type="String" />
                    <asp:Parameter DbType="Date" Name="dob" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="pincode" Type="Int32" />
                    <asp:Parameter Name="age" Type="Int32" />
                    <asp:Parameter Name="mobileno" Type="String" />
                    <asp:Parameter Name="height" Type="Double" />
                    <asp:Parameter Name="weigth" Type="Double" />
                    <asp:Parameter Name="sque" Type="String" />
                    <asp:Parameter Name="ans" Type="String" />
                    <asp:Parameter Name="inch" Type="Int32" />
                    <asp:Parameter Name="uid" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
       
        
        
        </div>
    </form>
</body>
</html>
