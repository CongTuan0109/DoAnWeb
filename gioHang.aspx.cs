using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class gioHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            loadDataChoCaiLuoiRPT();
        }
    }

    protected void loadDataChoCaiLuoiRPT()
    {
        dsMatHangKhachMua list = (dsMatHangKhachMua)Session["ss_gioHang"];
        if (list == null) return;
        rpt_showGioHang.DataSource = list.convertTo_DATATABLE();
        rpt_showGioHang.DataBind();
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
}