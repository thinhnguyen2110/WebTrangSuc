<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTiet.aspx.cs" Inherits="ChiTiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div>

        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table style="width:112%; height: 247px;">
                    <tr >
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="352px" ImageUrl='<%# "Hinhanh/TSV/"+Eval("HinhAnh") %>' Width="349px" />
                        </td>
                        <td style="text-align:center">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP") %>' Font-Bold="True"></asp:Label>
                            <br />
                            <asp:Label ID="Label5" runat="server" Text="Label">Mã:</asp:Label>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("MaSanPham") %>'></asp:Label>
                            <%--<br />
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>--%>
                            <br />
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("DonGia") %>' ForeColor="#FFCC00"></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </div>
</asp:Content>

