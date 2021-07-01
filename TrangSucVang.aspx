<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TrangSucVang.aspx.cs" Inherits="TrangSucVang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <img src="Hinhanh/TSV1.jpg" style="width:1480px; height:370px"/>
        <a href="TrangChuaspx.aspx" style="text-align:center; border:hidden"><p>Trang Chủ</p></a>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sreach" />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>

    </div>
    <div style="margin-left: 40px; text-align:center; font-size:small">
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

