using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for sanPham
/// </summary>
public class sanPham
{
    public int maSanPham;
    public String tenSanPham;
    public double donGia;
    public String hinhAnh;
    public String moTa;
    public int soLuongTon;
    

    public sanPham()
    {
    }

    public sanPham(int maSanPham, String tenSanPham, double donGia, String hinhAnh, String moTa, int soLuongTon)
    {
        this.maSanPham = maSanPham;
        this.tenSanPham = tenSanPham;
        this.donGia = donGia;
        this.hinhAnh = hinhAnh;
        this.moTa = moTa;
        this.soLuongTon = soLuongTon;
       
    }

    public String getInfo()
    {
        return "ten: "+tenSanPham + "gia: "+donGia; 
    }
}