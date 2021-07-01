<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
        
       
    </style>    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="179px" Width="1000px">
    <Columns>
        <asp:BoundField DataField="MASP" HeaderText="Mã sản phâm" />
        <asp:BoundField DataField="TENSP" HeaderText="Tên Sản Phẩm" />
        <asp:BoundField DataField ="DONGIA" HeaderText="Số tiền " />
        <asp:BoundField DataField="SOLG" HeaderText="Số lượng" />
        <asp:BoundField DataField="TONG" HeaderText="Tổng tiền" />
        <asp:ImageField DataImageUrlField="HINHANH" HeaderText="Hình ảnh ">
        </asp:ImageField>
    </Columns>
</asp:GridView>
    <div></div>
  </asp:Content>

  


