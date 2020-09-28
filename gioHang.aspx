<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gioHang.aspx.cs" Inherits="gioHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style/myStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="full">
            <div class="gioHang">
                <a href="Default.aspx">Mua Tiep San Pham</a>
                <asp:Repeater ID="rpt_showGioHang" runat="server">
                    <ItemTemplate>
                        <div class="SanPhamMua">
                            <div style="text-align: center;"><img src="Images/<%#Eval("hinhAnh") %>" style="width: 200px; height: 200px;" /></div>
                            <p style="color: red; font-weight: bold; text-align: center;"><%#Eval("tenSP") %></p>
                            <p style="text-decoration: line-through; font-weight: bold; color: green; text-align: center;"><%#Eval("gia") %> VND</p>
                        </div>
                        <div class="tacVuMua" style="background-color: #CECECE; margin: 10px; padding: 10px;">
                            <span><asp:Button ID="btn_giamSoLuong" runat="server" Text="-" CssClass="btn_tangSoLuong" /></span>
                            <span><asp:TextBox ID="tb_showSoLuong" runat="server" Text="1" CssClass="tb_showSoLuong"></asp:TextBox></span>
                            <span><asp:Button ID="btn_tangSoLuong" runat="server" Text="+" CssClass="btn_giamSoLuong" /></span>
                        </div>
                        </ItemTemplate>
                </asp:Repeater>
                <div class="info_gioHang">
                    
                    <asp:Label ID="lb_showTongTien" runat="server"></asp:Label>
                    
                </div>
                <asp:LinkButton ID="link_btn_xoaSachGioHang" runat="server" Text="Xoa Sach San Pham Now" OnLoad="delete_confirm" OnClick="link_btn_xoaSachClicked"></asp:LinkButton>
            </div>
        </div>
    </form>
</body>
</html>
