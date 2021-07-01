<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="DangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>ĐĂNG KÝ</p>
    <p>
        <asp:Label ID="HovaTen" runat="server" Text="Họ và Tên:"></asp:Label>
        <asp:TextBox ID="HovaTen1" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="DiaChi" runat="server" Text="Địa Chỉ:"></asp:Label>
        <asp:TextBox ID="DC" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="SDT" runat="server" Text="Số Điện Thoại:"></asp:Label>
        <asp:TextBox ID="SoDT" runat="server" TextMode="Phone"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Email" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="Mail" runat="server" TextMode="Email" Width="177px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="TenUser" runat="server" Text="Tên Đăng Nhập:"></asp:Label>
        <asp:TextBox ID="Username" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Pass" runat="server" Text="Nhập Mật Khẩu:"></asp:Label>
        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Pass1" runat="server" Text="Nhập Lại Mật Khẩu:"></asp:Label>
        <asp:TextBox ID="Password2" runat="server" TextMode="Password"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Đăng Ký" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>

</asp:Content>

