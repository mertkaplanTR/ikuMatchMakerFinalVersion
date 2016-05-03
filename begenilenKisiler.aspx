<%@ Page Language="C#" AutoEventWireup="true" CodeFile="begenilenKisiler.aspx.cs" Inherits="begenilenKisiler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Begenilen Kisiler</title>
    <link href="css/owl.theme.css" rel="stylesheet" />
    <link href="css/owl.carousel.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/css-intro.css" rel="stylesheet" />
    <link href="css/css-index.css" rel="stylesheet" />
    <link href="css/css-index-yellow.css" rel="stylesheet" />
    <link href="css/css-index-red.css" rel="stylesheet" />
    <link href="css/css-index-purple.css" rel="stylesheet" />
    <link href="css/css-index-orange.css" rel="stylesheet" />
    <link href="css/css-index-green.css" rel="stylesheet" />
    <link href="css/css-app.css" rel="stylesheet" />
    <link href="css/css-app-yellow.css" rel="stylesheet" />
    <link href="css/css-app-red.css" rel="stylesheet" />
    <link href="css/css-app-purple.css" rel="stylesheet" />
    <link href="css/css-app-orange.css" rel="stylesheet" />
    <link href="css/css-app-green.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" /> 
</head>
<body>
    <form id="form1" runat="server">
 <div id="menu">
	<nav class="navbar-wrapper navbar-default" role="navigation">
		<div class="container">
			 
	 
			  <div id="navbar-scroll" class="collapse navbar-collapse navbar-backyard navbar-right">
				<ul class="nav navbar-nav">
					<li><a href="index.aspx">Anasayfa</a></li>
					<li><a href="bildirimler.aspx">Bildirimler</a></li>
					<li><a href="mesaj.aspx">Mesajlar</a></li>
					<li><a href="bilgiguncelle.aspx">Ayarlar</a></li>
					<li><a href="cikis.aspx">Çıkış</a></li>
                    <asp:Label ID="sonuc" runat="server" Text=""></asp:Label>
				</ul>
			  </div>
		</div>
	</nav>
</div>
 <div id="package">
	<div class="container">
		<div class="text-center">
		
			<!-- /.pricing title -->
			<h2 class="wow fadeInLeft">Beğendiğim Kisiler</h2>
			<div class="title-line wow fadeInRight"></div>
		</div>
		<div class="row package-option">

					
					<!-- /.package name -->
                   <h3>
                       <asp:GridView ID="gvBegenilen" runat="server" AutoGenerateColumns="False" DataSourceID="benimBegendiklerim" GridLines="Horizontal" HorizontalAlign="Left">
                           <Columns>
                               <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                               <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname" />
                           </Columns>
                       </asp:GridView>
                       <asp:SqlDataSource ID="benimBegendiklerim" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="select distinct [name],[surname] from [user].[Info] as UI join [system].[Likes] as SL on SL.person2=UI.userID where SL.person1=@userID">
                           <SelectParameters>
                               <asp:SessionParameter Name="userID" SessionField="isim" />
                           </SelectParameters>
                       </asp:SqlDataSource>
                   </h3>
                   <h3>&nbsp;</h3>
          
			   </div>
			   
			   <!-- /.price -->
			
			
				<!-- /.package features -->
			   
			  

		</div>
	
</div>
    </form>
</body>
</html>
