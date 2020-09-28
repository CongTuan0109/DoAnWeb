using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for modul
/// </summary>
public class modul
{
    public static sanPham getSanPham(int maSp)
    {
        sanPham sp = null;
        SqlCommand cmd = new SqlCommand("SELECT * FROM TBL_SANPHAM WHERE MASANPHAM=@_maSanPham");
        cmd.Parameters.AddWithValue("@_maSanPham",maSp);
        DataTable dt = public_DB.getData_TO_DATATABLE(cmd);
        if (dt.Rows.Count == 0) return sp;
        int maSanPham = int.Parse(dt.Rows[0][0].ToString());
        String tenSanPham = dt.Rows[0][1].ToString();
        double donGia = Double.Parse(dt.Rows[0][2].ToString());
        String hinhAnh = dt.Rows[0][3].ToString();
        String moTa = dt.Rows[0][4].ToString();
        int soLuongTon = int.Parse(dt.Rows[0][5].ToString());
        
        sp = new sanPham(maSanPham, tenSanPham, donGia, hinhAnh, moTa, soLuongTon);

        return sp;
    }
}