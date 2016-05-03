<%@ Page Language="C#" AutoEventWireup="true" CodeFile="detayliAramaSonucu.aspx.cs" Inherits="detayliAramaSonucu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Detaylı Arama Sonucu</title>
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
					
				</ul>
			  </div>
		</div>
	</nav>
</div>
        <div class="row package-option">
<div class="col-sm-2">
        <h3>Detaylı Arama</h3>
        <br />
         
    <asp:Label ID="Label13" runat="server" Font-Size="18px" ForeColor="Black" Text="Cinsiyet"></asp:Label>
                            <br />
    <asp:DropDownList ID="ddlSex" runat="server" required class="btn btn-primary dropdown-toggle" >
                        <asp:ListItem>Kadın</asp:ListItem>
                        <asp:ListItem>Erkek</asp:ListItem>
                    </asp:DropDownList>
    <br />

    <asp:Label ID="Label8" runat="server" Font-Size="18px" ForeColor="Black" Text="Kampüs"></asp:Label>
                            <br />
                            
                        <asp:DropDownList ID="ddlCampus" runat="server" class="btn btn-primary dropdown-toggle" >
                        <asp:ListItem>Ataköy</asp:ListItem>
                        <asp:ListItem>Şirinevler</asp:ListItem>
                        <asp:ListItem>İncirli</asp:ListItem>
                    </asp:DropDownList>
                            
                            <br />

    <asp:Label ID="Label11" runat="server"  Font-Size="18px" ForeColor="Black" Text="Bölüm"></asp:Label>
                        <br />
                        
                        
                    <asp:DropDownList ID="ddlDepartment" runat="server" class="btn btn-primary dropdown-toggle" >
                        <asp:ListItem>Hukuk</asp:ListItem>
                        <asp:ListItem>Mühendislik</asp:ListItem>
                        <asp:ListItem>Fen Edebiyat</asp:ListItem>
                        <asp:ListItem>İktisadi ve İdari Bilimler</asp:ListItem>
                        <asp:ListItem>Sanat ve Tasarım</asp:ListItem>
                        <asp:ListItem>Mimarlık</asp:ListItem>
                        <asp:ListItem>Eğitim</asp:ListItem>
                        <asp:ListItem>İşletmecilik</asp:ListItem>
                        <asp:ListItem>Teknik Bilimler</asp:ListItem>
                        <asp:ListItem>Adalet</asp:ListItem>
                    </asp:DropDownList>
                        <br />

    <div class="form-group">
        <asp:Label ID="Label9" runat="server" Font-Size="18px" ForeColor="Black" Text="Saç Tipi"></asp:Label>
                            <br />

                            <asp:Label ID="lblhairType" runat="server" Font-Size="18px" ForeColor="White" Text="Saç Tipi" style="font-size: 18px"></asp:Label>
                            <br />
                        <asp:DropDownList ID="ddlHairType" runat="server" class="btn btn-primary dropdown-toggle">
                        <asp:ListItem>Düz</asp:ListItem>
                        <asp:ListItem>Dalgalı</asp:ListItem>
                        <asp:ListItem>Kıvırcık</asp:ListItem>
                    </asp:DropDownList></div>
                        <br />

    <div class="form-group">
                            <asp:Label ID="Label10" runat="server" Font-Size="18px" ForeColor="Black" Text="Saç Rengi" style="font-size: 18px"></asp:Label>
                            <br />
                                <asp:DropDownList ID="ddlHairColor" runat="server" class="btn btn-primary dropdown-toggle">
                        <asp:ListItem>Siyah</asp:ListItem>
                        <asp:ListItem>Kahverengi</asp:ListItem>
                        <asp:ListItem>Sarı</asp:ListItem>
                        <asp:ListItem>Kırmızı</asp:ListItem>
                        <asp:ListItem>Turuncu</asp:ListItem>
                        <asp:ListItem>Gri</asp:ListItem>
                    </asp:DropDownList>
							</div>
                        <br />

    <asp:Label ID="lblEyeColor" runat="server" Font-Size="18px" ForeColor="Black" Text="Göz Rengi" style="font-size: 18px"></asp:Label>
                        <div class="dropdown">
                        <asp:DropDownList ID="ddlEyeColor" runat="server"  class="btn btn-primary dropdown-toggle">
                        <asp:ListItem>Kahverengi</asp:ListItem>
                        <asp:ListItem>Ela</asp:ListItem>
                        <asp:ListItem>Mavi</asp:ListItem>
                        <asp:ListItem>Yeşil</asp:ListItem>
                    </asp:DropDownList></div>
                        <br />

    
    
    
    <br /><br />

<%--         Boyu:<br />
         <asp:DropDownList ID="Boy" runat="server">
              <asp:ListItem>140 cm - 160 cm</asp:ListItem>
             <asp:ListItem>160 cm - 180 cm</asp:ListItem>
             <asp:ListItem>180 cm - 200 cm</asp:ListItem>
         </asp:DropDownList><br />--%>
         
         
    
                
                <asp:Button ID="detayliAraButonu" runat="server" Text="Ara" CssClass="btn btn-price" OnClick="detayliAraButonu_Click"/>
          
			</div>

<div class="col-sm-10">
        <div class="text-center">
		<asp:Literal ID="sonuc" runat="server"></asp:Literal>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
    <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
    <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
    <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
    
        <asp:GridView ID="GridView1" CssClass="table table-hover table-striped" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" style="margin-top: 0px">
            <Columns>
                <asp:ImageField HeaderText="Resim" DataImageUrlField="" ControlStyle-Height="60px" ControlStyle-Width="60px">
<ControlStyle Height="60px" Width="60px"></ControlStyle>
                </asp:ImageField>
                <asp:BoundField DataField="name" HeaderText="İsim" SortExpression="name" />
                <asp:BoundField DataField="surname" HeaderText="Soyisim" SortExpression="surname" />
                <asp:HyperLinkField Text="Profile Git" />
                <asp:HyperLinkField NavigateUrl="~/YerBildirim.aspx" Text="Uye Nerede ?" />
                <asp:HyperLinkField Text="Profile GO" />
            </Columns>
        </asp:GridView>        
                    <asp:GridView ID="GridView2" CssClass="table table-hover table-striped" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="profilePicture" HeaderText="profilePicture" SortExpression="profilePicture" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname" />
            </Columns>
        </asp:GridView>     
            

             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="select u.profilePicture,u.name,u.surname from [user].Info as u where sex=@sex and campus=@campus and department=@dep and hairType=@hair and hairColor=@hairC and eyeColor=@eyeC">
                 <SelectParameters>
                     <asp:SessionParameter Name="sex" SessionField="cinsiyet" />
                     <asp:SessionParameter DefaultValue="" Name="campus" SessionField="kampus" />
                     <asp:SessionParameter DefaultValue="bolum" Name="dep" SessionField="bolum" />
                     <asp:SessionParameter DefaultValue="" Name="hair" SessionField="sactipi" />
                     <asp:SessionParameter DefaultValue="" Name="hairC" SessionField="sacrengi" />
                     <asp:SessionParameter DefaultValue="" Name="eyeC" SessionField="gozrengi" />
                 </SelectParameters>
            </asp:SqlDataSource>
            

             </div>
						

                               
                           <asp:Label ID="isim" runat="server"></asp:Label>
                           <asp:Label ID="soyadi" runat="server"></asp:Label><asp:Label ID="email" runat="server"></asp:Label>            


			 
        </div>

        </div>
        <p>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT * FROM [user].Info WHERE department=@department and sex=@sex">
                <SelectParameters>
                    <asp:SessionParameter Name="department" SessionField="bolum" />
                    <asp:SessionParameter Name="sex" SessionField="cinsiyet" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
            </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
