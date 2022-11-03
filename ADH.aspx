<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADH.aspx.cs" Inherits="On.ADH" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
         <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <title>BEVG</title>
   <style>    .navbar-new-top{
    background: #fff;
}
.navbar-brand{
    font-weight: 600;
}
.navbar-brand img{
    width: 20%;
}
.navbar-new-top ul{
    margin-right: 9%;
}
.navbar-new-top ul li{
    margin-right: 8%;
}
.navbar-new-bottom{
    background-color: #f7f7f7;
    box-shadow: 0 5px 6px -2px rgba(0,0,0,.3);
    border-top: 1px solid #e0e0e0;
    margin-top: 4%;
    height: 40px;
}
.navbar-new-bottom ul li{
    margin-left: 2%;
    margin-right: 2%;
}
.navbar-nav .nav-item a {
    color:#79c7d4;
    font-size: 14px;
    font-weight: 600;
    transition: 1s ease;
}
.navbar-nav .nav-item a:hover{
    color: #0062cc;
}
.dropdown-menu.show{
    background: #f8f9fa;
    border-radius: 0;
}
       .header-btn {
           width: 161%;
           border: none;
           border-radius: 1rem;
           padding: 8%;
           background: #0062cc;
           color: #fff;
           font-weight: 700;
           font-size: 13px;
           cursor: pointer;
       }
   .full{
width:80%;
te
         }
}

</style>
      
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
     <nav class="navbar fixed-top navbar-expand-md flex-nowrap navbar-new-top">
            <a href="/" class="navbar-brand"><img src="#" alt=""/>Bootstrap 4</a>
            <ul class="nav navbar-nav mr-auto"></ul>
            <ul class="navbar-nav flex-row">
             <li class="nav-item">
                    <a class="nav-link px-2" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link px-2" href="Home.aspx">LogOut</a>
                </li>
               
            
               
            </ul>
           
        </nav>
        <form runat="server">
            <div class="row" style="margin-top:100px">
        <div class="col-8" >
         
           <h3>Products</h3>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" CssClass="full" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" ForeColor="Black" GridLines="Horizontal" AutoGenerateSelectButton="True" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" >
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Produkti" HeaderText="Produkti" SortExpression="Produkti" />
                    <asp:BoundField DataField="Kategoria" HeaderText="Kategoria" SortExpression="Kategoria" />
                    <asp:BoundField DataField="Cmimi" HeaderText="Cmimi" SortExpression="Cmimi" />
                    <asp:BoundField DataField="valuta" HeaderText="valuta" SortExpression="valuta" />
                    <asp:BoundField DataField="Pershkrim" HeaderText="Pershkrim" SortExpression="Pershkrim" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <br /> <br /><br /><br /><br />
            <h3>Messages</h3>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" CssClass="full">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Emri" HeaderText="Emri" SortExpression="Emri" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Mesazhi" HeaderText="Mesazhi" SortExpression="Mesazhi" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineShoppingConnectionString %>" SelectCommand="SELECT * FROM [Messages]"></asp:SqlDataSource>
        </div>
            <div class="col-4">
                                  <div class="card" style="width:400px; ">
  <div class="card-body" style="background-color:lightskyblue;">
      <h3 style="text-align:center;"> Add Products</h3>
      <asp:Label ID="Label9" runat="server" Text="" Visible="false"></asp:Label>
<asp:Label ID="Label2" runat="server" Text="ID"></asp:Label>
        	<asp:TextBox ID="TextBox2" runat="server" class="form-control" style="width:50px" ReadOnly="True" ValidateRequestMode="Enabled" ></asp:TextBox>
          <asp:Label ID="Label3" runat="server" Text="Product Name"></asp:Label>
        	<asp:TextBox ID="TextBox3" runat="server" class="form-control"  required=""  ></asp:TextBox>
          <br />
          <asp:Label ID="Label4" runat="server" Text="Category"></asp:Label><br />
        	<asp:DropDownList ID="DropDownList1" runat="server" Width="171px">
                <asp:ListItem>Jacket</asp:ListItem>
                 <asp:ListItem>Sneakers</asp:ListItem>
                 <asp:ListItem>Shirts</asp:ListItem>
        	</asp:DropDownList>
      <br />
      <br />
          <asp:Label ID="Label5" runat="server" Text="Price"></asp:Label>
        	<asp:TextBox ID="TextBox4" runat="server" class="form-control" style="width:100px;" required=""  ></asp:TextBox>
     
      <asp:DropDownList ID="DropDownList2" runat="server" Width="164px">
                <asp:ListItem >&euro;</asp:ListItem>
                 <asp:ListItem>MKD</asp:ListItem>
                 <asp:ListItem >&#36; </asp:ListItem>
        	</asp:DropDownList>
      <br />
      <br />
          <asp:Label ID="Label6" runat="server" Text="Description"></asp:Label>
        	<asp:TextBox ID="TextBox5" runat="server" class="form-control"  required="" TextMode="MultiLine"  ></asp:TextBox>
          <br />
          <asp:Label ID="Label7" runat="server" Text="Photo"></asp:Label>
        	<br />
      <asp:FileUpload ID="FileUpload1" runat="server" /><br />
        <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
      <br />
      
      <br />
      
    <br />
    
  <div class="btn-group " role="group" aria-label="Basic example" style="left: 36px; top: 0px; width: 260px;">
<asp:Button ID="Button2"  class="btn" runat="server" Text="Save" OnClick="Button1_Click" Width="75px"  />
      <asp:Button ID="Button3"  class="btn " runat="server" Text="Delete" OnClick="Button2_Click" />
      <asp:Button ID="Button4"  class="btn " runat="server" Text="Update" OnClick="Button3_Click" style="height: 40px" />
  
</div>
       
  </div>
</div>
            </div>
                </div>
            </form>
</body>
    </html>