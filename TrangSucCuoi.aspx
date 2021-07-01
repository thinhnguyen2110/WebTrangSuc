<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TrangSucCuoi.aspx.cs" Inherits="TrangSucCuoi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Sreach" />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

    </div>
         <div class="slideshow-container">

<div class="mySlides fade">
  <img src="Hinhanh/TSC/TSC.jpg" style="width:1480px; height:400px" />
</div>

<div class="mySlides fade">
  <img src="Hinhanh/TSC/TSC1.jpg" style="width:1480px; height:400px"/>
</div>
</div>
<br/>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
</div>
    <script>
        var slideIndex = 0;
        showSlides();

        function showSlides() {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1 }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            setTimeout(showSlides, 2000); // Change image every 2 seconds
        }
</script>
    <a href="TrangChuaspx.aspx" style="text-align:center"><p>Trang Chủ</p></a>
    <div>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" BorderColor="Silver" HorizontalAlign="Center" >
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="177px" ImageUrl='<%# "Hinhanh/TSV/"+Eval("HinhAnh") %>' Width="208px" />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ChiTiet.aspx?masp="+Eval("MaSanPham") %>' Text='<%# Eval("TenSP") %>' Font-Bold="True" ForeColor="Black"  Font-Underline="false"></asp:HyperLink>
                <br />
                <asp:Label ID="Label2" runat="server" > Mã:</asp:Label>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("MaSanPham") %>'></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("DonGia") %>' Font-Bold="True" ForeColor="#FFCC00"></asp:Label>
                <br />
                <asp:ImageButton ID="ImageButton1" runat="server" Height="47px" ImageUrl='<%# "Hinhanh/datmua.png" %>' Width="142px" CommandArgument='<%# Eval("MaSanPham") %>' OnClick="ImageButton1_Click" />
            </ItemTemplate>
        </asp:DataList>
        </div>
</asp:Content>

