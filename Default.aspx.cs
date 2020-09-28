using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void delete_confirm(Object beSen, EventArgs evt)
    {
        LinkButton beLink = (LinkButton)beSen;
        beLink.Attributes["onClick"] = "return confirm('Nhan Cancel de Tu Choi')";
    }


    protected void link_btn_xoaSachClicked(object sender, EventArgs e)
    {
        Session["ss_gioHang"] = null;
        Response.Redirect(Request.Url.ToString());
    }
    protected void dataL_showSanPham_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int maSanPham = int.Parse(e.CommandArgument.ToString());
        dsMatHangKhachMua list = null;
        list = (dsMatHangKhachMua)Session["ss_gioHang"];
        if (list == null)
        {
            sanPham sp = modul.getSanPham(maSanPham);
            list = new dsMatHangKhachMua();
            list.themSanPham(sp);
        }
        else
        {
            list = (dsMatHangKhachMua)Session["ss_gioHang"];
            sanPham sp = modul.getSanPham(maSanPham);
            if (!list.isExits(maSanPham))
            {
                list.themSanPham(sp);
            }
        }
        Session["ss_gioHang"] = list;
        Response.Redirect("gioHang.aspx");
    }
}