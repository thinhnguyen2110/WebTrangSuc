<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 style="border-bottom:#808080">Đăng Nhập</h3>
    <p style="border-bottom:#808080">
        <asp:Label ID="Label1" runat="server" Text="Label">Tài Khoản:</asp:Label>
      <asp:TextBox ID="emaillog"  Style="border-color: inherit; border-width: medium; box-shadow: none; outline: none; " runat="server" Width="300px" ></asp:TextBox>
    </p>
    <p style="border-bottom:#808080">
           
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="emaillog" ErrorMessage="Địa chỉ Email không được bỏ trống"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ControlToValidate="emaillog" ErrorMessage="Địa chỉ Email không hợp lệ" ValidationExpression="^[a-zA-Z0-9_\-\.]+@([a-zA-Z0-9_\-\.]+\.[a-zA-Z]{2,5})$"></asp:RegularExpressionValidator>
        &nbsp;</p>
    <p style="border-bottom:#808080">
        <asp:Label ID="Label2" runat="server" Text="Label">Mật Khẩu:</asp:Label>
        <asp:TextBox ID="matkhau" TextMode="Password" runat="server" Style=" border-color: inherit; border-width: medium; box-shadow: none; outline: none;"></asp:TextBox>
    </p>
    <p style="border-bottom:#808080">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="matkhau" ErrorMessage="Mật khẩu không được bỏ trống"></asp:RequiredFieldValidator>
        &nbsp;</p>
    <p style="border-bottom:#808080">
        <asp:Button ID="Button1" runat="server" Text="Đăng Nhập" OnClick="Button1_Click" />
    </p>
    <p style="border-bottom:#808080">
        <a href="DangKy.aspx">Đăng Ký!&nbsp;</a></p>


</asp:Content>

