using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for matHang
/// </summary>
public class matHang
{
    public sanPham sp;
    public int soLuong;

    public matHang()
    {
        sp = new sanPham();
        soLuong = 1;
    }

    public matHang(sanPham sp)
    {
        this.sp = sp;
        soLuong = 1;
    }

    public matHang(matHang mh)
    {
        sp = mh.sp;
        soLuong = mh.soLuong;
    }

    public String getInfo()
    {
        return sp.tenSanPham + " | " + soLuong;
    }
}