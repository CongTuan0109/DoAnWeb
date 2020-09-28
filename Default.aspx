<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Đồ ÁN WEB</title>
    <link href="style/myStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="full">

            <!-- header start-->
            <div class="header">
                <div class="menu" style="background-color: yellow !important;">
                    <ul class="menu0">
                        <li>
                            <asp:Label ID="lb_showSoLuongDatHang" runat="server" Text="Số lượng bạn đặc: 0"></asp:Label></li>
                        <li><a href="#">Xem Chi Tiết</a></li>
                        <li>
                            <asp:TextBox ID="TextBox1" runat="server" placeHolder="CMM nhap vao day de tim"></asp:TextBox></li>
                        <li><asp:Button ID="btn_search" runat="server" Text="Search" /></li>
                        <li><asp:Button ID="btn_dangnhap" runat="server" Text="Đăng Nhập" /></li>
                        <li><asp:Button ID="btn_taotaikhoan" runat="server" Text="Tạo Tài Khoản" /></li>
                    </ul>
                </div>
                
                <div class="clear"></div>

                <div class="menu" style="background-color: #808080 !important;">
                    <ul class="menu0">
                        <li><a>PHỤ KIỆN</a></li>
                        <li><a href="#" data-id="40" class=" ">
                <img src="Images/iPhone-(Apple)42-b_16.jpg" style="height:44px; width:115px;"></a></li>
                        <li><a  href="#" data-id="2" class=" ">
                <img src="Images/OPPO42-b_23.jpg" style="height:44px; width:115px;"></a></li>
                        <li><a href="#" data-id="1971" class=" ">
                <img src="Images/Samsung42-b_25.jpg" style="height:44px; width:115px;"/>
            </a></li>
                        <li><a href="#">Phụ Kiện KHÁC</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
            <!-- header end-->

            <!-- content start-->
            <div class="content">
                <div class="container">
                    <asp:DataList ID="dataL_showSanPham" runat="server" DataSourceID="sqlDataS_layToanBoSanPhamRa" RepeatColumns="4" OnItemCommand="dataL_showSanPham_ItemCommand">
                        <ItemTemplate>
                            <div class="sanPham">
                                <img src="Images/<%#Eval("hinhAnh") %>" style="width: 200px; height: 200px;" />
                                <p style="text-align: center; color: red;"><%#Eval("tenSP") %></p>
                                <p style="text-align: center; color: green; margin: 5px; font-weight: bold;"><%#Eval("donGia") %> VND</p>
                                <asp:ImageButton ImageUrl="Images/ChonMua.jpg" ID="img_chonMua" runat="server" CommandArgument='<%#Eval("maSanPham") %>' />
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
            <!-- content end-->

            <!-- footer start-->
            <div class="footer">
                <p style="color:#fff;"> 2019. Công ty cổ phần Thế Giới Di Động. GPDKKD: 0303217354 do sở KH & ĐT TP.HCM cấp ngày 02/01/2007. GP số 56/GP-TTDT do Sở TTTT TP HCM cấp ngày 30/07/2018. Địa chỉ: 128 Trần Quang Khải, P. Tân Định, Q.1, TP.Hồ Chí Minh. Điện thoại: 18001060. Email: cskh@thegioididong.com. Chịu trách nhiệm nội dung: Trần Nhật Linh. Xem chính sách sử dụng web</p>
            </div>
            <!-- footer end-->
        </div>

















        <asp:SqlDataSource ID="sqlDataS_layToanBoSanPhamRa" runat="server"
            ConnectionString="<%$ConnectionStrings:strConn %>"
            SelectCommand="SELECT * FROM TBL_SANPHAM WHERE SOLUONGTON > 0"></asp:SqlDataSource>
    </form>
</body>
</html>
