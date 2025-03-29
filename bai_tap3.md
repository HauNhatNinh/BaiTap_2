# BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:

## DEADLINE: 23H59 NGÀY 30/03/2025

### ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)

### BÀI TOÁN: Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

### YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.

### HÌNH THỨC LÀM BÀI:
1. Tạo file bai_tap3.md trên cùng repository của bài tập 2:
   Nội dung chứa đề bài, và ảnh chụp quá trình thao tác các yêu cầu khác.
2. Chụp ảnh quá trình sửa bảng DKMH và quá trình thêm bảng Diem, chú ý @ là FK, và thêm CK cho trường điểm
3. Hình sau khi chụp paste trực tiếp vào file bai_tap3.md trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. dùng tính năng: Tasks -> Generate Scrips => sinh ra file: bai_tap_3_schema.sql  (chỉ chứa lệnh tạo cấu trúc của db)
5. dùng tính năng: Tasks -> Generate Scrips => advance => Check Data only => sinh ra file: bai_tap_3_data.sql  (chỉ chứa dữ liệu đã nhập demo vào db)
6. Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều
7. upload 2 file  bai_tap_3_schema.sql và bai_tap_3_data.sql lên repository.
8. nhớ commit để save nội dung file bai_tap3.md

### DEADLINE: 23H59 NGÀY 30/03/2025

---------------------- hết bài tập 3-------------------------------------------

# Bài Làm
## 1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
 - Sửa bảng __DKMH__, thêm cột __id_dk__ làm khoá chính __(PK)__ vào bảng và xoá cột __DiemTP__.

   ![Screenshot (158)](https://github.com/user-attachments/assets/8e6f863c-b930-4ed3-858e-f59a3fa378ce)

 - Tạo bảng __Diem__ gồm các cột __id__, __id_dk__, __diem__ với __id__ là khoá chính __(PK)__.

   ![Screenshot (157)](https://github.com/user-attachments/assets/d7f57075-6106-4868-b175-95a6cf154dcf)

 - Cài khoá ngoại __(FK)__ cho cột __id_dk__ ở bảng __Diem__ và bảng __DKMN__.

   ![Screenshot (159)](https://github.com/user-attachments/assets/984fa385-1b53-4604-9364-28ec6a18b1be)

 - Đặt điều khiện __(CK)__ cho các trường điểm ở bảng __DKMH__ và bảng __Diem__.

   ![Screenshot (161)](https://github.com/user-attachments/assets/a08ad8cb-e7ce-4832-a4ad-fbc280febed4)

   ![Screenshot (162)](https://github.com/user-attachments/assets/0b463ef0-f979-480f-ad61-28152e773170)

   ![Screenshot (176)](https://github.com/user-attachments/assets/6b376db4-c76b-4800-8eda-0e95abf5748b)

## 2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm).   
 - Nhập dữ liệu cho một số bảng như __SinhVien__, __MonHoc__, __LopHP__, __DKMH__, __Diem__ để phục vụ quá trình tính điểm thành phần sau này.
   - Click chuột phải vào bảng cần nhập dữ liệu, chọn __Edit Top 200 Rows__ để nhập dl.
  
     ![Screenshot (184)](https://github.com/user-attachments/assets/87303d5a-dc63-4c6f-8143-eafe08418fbd)


   - Bảng __SinhVien__

     ![image](https://github.com/user-attachments/assets/78469fef-5534-4551-b07a-7f600b2ea43e)

   - Bảng __MonHoc__

     ![image](https://github.com/user-attachments/assets/9ec16c8d-e18b-4dbc-a07e-e6e7d69cd3a9)

   - Bảng __LopHP__

     ![image](https://github.com/user-attachments/assets/036a3e7e-73b5-4d1b-a540-c3a0f66e341d)

   - Bảng __DKMH__

     ![image](https://github.com/user-attachments/assets/37441c2f-0b25-4779-b7c7-208244c2a694)

   - Bảng __Diem__
  
     ![image](https://github.com/user-attachments/assets/52efbc78-d65f-4118-9e60-9c2e57d68e36)

## 3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.
 - Click chuột phải vào database __QLSV__ sau đó nhấn __New Query__ tạo trang truy vấn mới để nhập code.

   ![Screenshot (185)](https://github.com/user-attachments/assets/1225ff4e-25e3-457a-8e3d-9734e4f96037)

 - Lệnh code:
```SELECT 
    SV.maSV, 
    SV.hoten AS HoTenSinhVien,
    MH.maMon, 
    MH.TenMon AS TenMonHoc,
    COALESCE((
        SELECT AVG(Diem.diem) 
        FROM Diem 
        WHERE Diem.id_dk = DKMH.id_dk
    ), 0) AS DiemTrenLop,
    DKMH.DiemThi,
    (0.4 * COALESCE((
        SELECT AVG(Diem.diem) 
        FROM Diem 
        WHERE Diem.id_dk = DKMH.id_dk
    ), 0) 
    + 0.6 * COALESCE(DKMH.DiemThi, 0)) AS DiemThanhPhan
FROM 
    DKMH
JOIN SinhVien SV ON DKMH.maSV = SV.maSV
JOIN LopHP LHP ON DKMH.maLopHP = LHP.maLopHP
JOIN MonHoc MH ON LHP.maMon = MH.maMon
WHERE 
    DKMH.maSV = 'K225480106077'  
    AND DKMH.maLopHP = 'VXL001'  
GROUP BY 
    SV.maSV, SV.hoten, MH.maMon, MH.TenMon, DKMH.maLopHP, DKMH.id_dk, DKMH.DiemThi;
```  
 - Ta tính được điểm thành phần của sinh viên có mã sv là K225480106077 như sau.

   ![Screenshot (186)](https://github.com/user-attachments/assets/e085f983-f881-4d38-97e0-6f66967486f8)

## 4. Tạo diagram mô tả các PK, FK của db.

   ![Screenshot (187)](https://github.com/user-attachments/assets/44dbbe77-4335-4332-8337-e5017c9eacd5)

   ![Screenshot (188)](https://github.com/user-attachments/assets/193d58d2-2a35-4036-b222-7eb782a29741)

   ![Screenshot (189)](https://github.com/user-attachments/assets/e00eb5ad-4111-4851-9338-1eae2d9811f9)

## 5. Tạo ra file chỉ chứa lệnh tạo cấu trúc của db và file chỉ chứa dữ liệu đã nhập demo vào db.

   ![Screenshot (190)](https://github.com/user-attachments/assets/4cd0c3c9-d64e-4e56-b44e-e9a41445de39)

 - Click vào __Advanced__, sau đó tại phần __Types of data to script__ chọn __Schema only__ để xuất file chỉ chứa các lệnh tạo cấu trúc của database.

   ![Screenshot (191)](https://github.com/user-attachments/assets/c3bf73bd-d8d9-4f8c-9600-7f6e57c9c708)

 - Chọn __Data only__ để xuất file chỉ chứa các dữ liệu đã nhập demo vào database.

   ![Screenshot (192)](https://github.com/user-attachments/assets/92a3c1dc-ace8-4898-874b-a8f9b841fe65)



    



   


 

  
  
  
  



  
   
