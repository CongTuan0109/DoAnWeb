using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for dsMatHangKhachMua
/// </summary>
public class dsMatHangKhachMua
{
    public List<matHang> dsMatHang;
    public double tongTien;

    public dsMatHangKhachMua()
    {
        dsMatHang = new List<matHang>();
        tongTien = 0;
    }

    public void themMatHang(matHang mh)
    {
        dsMatHang.Add(mh);
        tongTien += mh.sp.donGia;
    }

    public String getInfo()
    {
        String ketQua = "";
        for (int i = 0; i < dsMatHang.Count; i++)
        {
            ketQua += dsMatHang[i].getInfo() + "<br/>";
        }

        return ketQua;
    }

    public bool isExits(int maSanPham)
    {
        for (int i = 0; i < dsMatHang.Count; i++)
        {
            if (dsMatHang[i].sp.maSanPham == maSanPham)
                return true;
        }

        return false;
    }

    public void themSanPham(sanPham sp)
    {
        matHang mh = new matHang(sp);
        dsMatHang.Add(mh);
    }

    public DataTable convertTo_DATATABLE()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("hinhAnh", typeof(String));
        dt.Columns.Add("tenSP", typeof(String));
        dt.Columns.Add("gia", typeof(double));
        dt.Columns.Add("soLuong", typeof(int));
        DataRow dr;
        for (int i = 0; i < dsMatHang.Count; i++)
        {
            dr = dt.NewRow();
            dr["hinhAnh"] = dsMatHang[i].sp.hinhAnh;
            dr["tenSP"] = dsMatHang[i].sp.tenSanPham;
            dr["gia"] = dsMatHang[i].sp.donGia;
            dr["soLuong"] = dsMatHang[i].soLuong;
            dt.Rows.Add(dr);
        }

        return dt;
    }
         public void tangSoLuong(int maSp)
        {
            for (int i = 0; i < dsMatHang.Count; i++)
            {
                if (dsMatHang[i].sp.maSanPham == maSp)
                {
                    dsMatHang[i].soLuong += 1;
                    tongTien += dsMatHang[i].sp.donGia;
                }
            }
    }
}