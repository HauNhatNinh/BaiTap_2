# BaiTap_2
# Bài tập số 2 của sv: K225480106077 - Hầu Nhật Ninh - Môn hệ quản trị csdl
## BÀI TẬP VỀ NHÀ 02 - MÔN HỆ QUẢN TRỊ CSDL:

## DEADLINE: 23H59 NGÀY 25/03/2025

## ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 1)
1. Đã cài đặt SQL Server 2022 Dev.
2. Đã cài đặt SQL Managerment Studio bản mới nhất.
3. Đã kết nối từ SQL Managerment Studio vào SQL Server.
4. Đã có tài khoản github, biết cách tạo repository(kho lưu trữ) cho phép truy cập public.

## BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)

## YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql


## HÌNH THỨC LÀM BÀI:
1. Tạo repository mới, tạo file readme.md (có hướng dẫn trên zalo group)
2. Sinh viên thao tác trên máy tính cá nhân, chụp màn hình quá trình làm, chỉ cần chụp active window, thi thoảng chụp full màn hình để thấy sự cá nhân hoá.
3. Hình sau khi chụp paste trực tiếp vào file readme trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. upload các file liên quan: Script_DML.sql
5. Update link của repository vào cột bài tập 2 trên file excel online của thầy (đã ghim link trên zalo group)

## Chú ý:
1. Được phép dùng AI và tham khảo bài của bạn, nhưng phải có sự khác biệt đáng kể.
2. Nghiêm cấm copy, clone. Tham khảo và copy là 2 việc khác hẳn nhau. Thầy có tool để check!
3. Bài làm phải có dấu ấn cá nhân (hãy sáng tạo và biết cách bảo vệ mình nếu bạn là bản chính)
4. Kết quả AI phải phù hợp với yêu cầu, nếu quá sai lệch <=> sv ko đọc => Cấm thi
5. Nên nhớ: cấm thi là ko có vùng cấm và thầy chưa bao giờ nói đùa về việc cấm thi.
_____________________________________________________________________________________________________________________________________________________________________________________________________________
##                                    BÀI LÀM
 
 ## 1. Tạo database mới.
  
   - Ở phần __Object Explorer__, click nút chuột phải vào tệp __Databases__ rồi chọn __New Database...__ để tạo 1 cơ sử dữ liệu mới.

  ![Screenshot (108)](https://github.com/user-attachments/assets/7159230d-55b1-44fd-b437-025fc26f49a6)


 ## 2. Đăt tên cho database và thiết lập nơi lưu file.

  ![Screenshot (109)](https://github.com/user-attachments/assets/176d5258-33ce-447c-9e11-3b85e20c28a1)
 
 ## 3. Tạo bảng dữ liệu mới

   - Click vào dấu __+__ ở database __QLSV__ vừa tạo sau đó click chuột phải vào __Tables__ chọn __New__ --> __Table...__

  ![Screenshot (110)](https://github.com/user-attachments/assets/542deeb9-5ca9-417a-9722-b084c1b240e0)


 ## 4. Thiết lập các thông tin vào bảng như tên cột kiểu dữ liệu...   
  ![Screenshot (111)](https://github.com/user-attachments/assets/f3e528e7-183c-48ac-8cfb-1de84b7662de)

   - Ở bài tập này chúng ta sẽ dùng một số kiểu dữ liệu như __nchar(n)__, __varchar(n)__, __nvarchar(n)__, __int__, __float__, __date__.
     - __nchar(n)__: Luôn chiến đủ *n* ký tự đã gán, có hỗ trợ mã hoá (unicode).
     - __varchar(n)__: Có thể thay đổi độ dài ngắn các ký tự trong khoảng đã gán cho *n*, không hỗ trợ unicode.
     - __nvarchar(n)__: Giống với kiểu *varchar(n)* nhưng có hỗ trợ unicode.
     - __int__: Dùng cho các dữ liệu có kiểu số nguyên, không có phần thập phân.
     - __float__: Dùng để nhập dữ liệu theo kiểu số thực, có phần thập phân, dễ bị sai số nhỏ.
     - __date__: Dùng để nhập các dữ liệu như ngày tháng, không có giờ.

   - Khi đã hoàn thành việc thiết lập các tham số cho bảng, ta tiến hành đặt khoá chính (__PK__) theo yêu cầu của đề bài bằng cách click chuột phải vào cột được chỉ định làm khoá chính rồi chọn __Set Primary Key__ để thiết lập khoá chính cho bảng.

  ![Screenshot (112)](https://github.com/user-attachments/assets/a7f17096-5c4a-4a6b-8d91-0be9c97d3960)

   - Sau đó nhấn __Save__ để đặt tên cho bảng và lưu lại.
     
  ![Screenshot (113)](https://github.com/user-attachments/assets/de0112d4-16c9-4b00-bcf3-0e9517a9d7a5)

   - Tạo các bảng khác theo yêu cầu cầu đề bài, thiết lập các dữ kiện, kiểu dữ liệu và đặt khoá chính theo yêu cầu của đề bài cho các bảng còn lại.

 ## 5. Tạo khoá ngoại (FK)
 
   - Sau khi đã tạo các bảng và đặt khoá chính cho các bảng xong, ta tiến hành tạo khoá ngoại (__FK__) cho các bảng __GVCN__, __LopSV__, __GiaoVien__, __BoMon__, __LopHP__, __DKMH__. 

   - Click chuột phải vào bảng *dbo.GiaoVien* vừa tạo trong file __Tables__ rồi nhấn __Design__ để truy cập vào bảng.

  ![Screenshot (123)](https://github.com/user-attachments/assets/ebf95787-6e91-4dbe-970b-b6b61135c06b)

   - Chọn cột cần thiết lập theo yêu cầu của đề bài sau đó click chuột phải rồi chọn __Relationships...__ để thiết lập.

  ![Screenshot (124)](https://github.com/user-attachments/assets/f46b6372-4ef0-40b1-b24f-da2f6ad0660c)

   - Nhấn __Add__ để thêm mối quan hệ làm khoá ngoại.

  ![Screenshot (125)](https://github.com/user-attachments/assets/0f7237d9-14da-4e9a-8ace-aad8101b67b2)
   
   - Tại phần __Tables And Columns Spec__, click vào __...__ để thiết lập mối quan hệ.

  ![Screenshot (126)](https://github.com/user-attachments/assets/f28ac7e7-7d23-4411-bad8-24b2f5440686)
     
   - Thay đổi bảng khoá chính, cột liên kết của bảng khoá chính và bảng khoá ngoại để liên kết dữ liệu giữa các bảng.
     - Bảng __GiaoVien__*(maGV, hoten, NgaySinh, maBM)*
       - __FK__ *maBM* --> *BoMon(maBM)*: Đảm bảo giáo viên thuộc một bộ môn hợp lệ.
       - Nếu không có __FK__: Có thể nhập *maBM* không tồn tại trong bảng *BoMon*, làm mất tính chính xác của dữ liệu.    
  ![Screenshot (127)](https://github.com/user-attachments/assets/015d5df9-7588-4779-adde-ab853fe11253)
  
   - Hoàn tất quá trình tạo khoá ngoại cho bảng.

  ![Screenshot (128)](https://github.com/user-attachments/assets/0de8e51b-e8ed-4023-b98f-7daf9e0fb9d3)
 
   - Làm tương tự với các bảng __GVCN__, __LopSV__, __BoMon__, __LopHP__, __DKMH__.

## 6. Thiết lập ràng buộc kiểm tra (CK) 

   - Thiết lập ràng buộc kiểm tra *(CK)* để giới hạn giá trị có thể nhập vào một cột.

  ![Screenshot (149)](https://github.com/user-attachments/assets/2941f381-31b5-4d77-bb90-c07f3bee1d17)

   - Nhập điều kiện kiển tra và đổi tên ràng buộc sau đó nhấn __Close__ và __Save__ để lưu lại.

  ![Screenshot (152)](https://github.com/user-attachments/assets/a0586289-28ae-4b00-ab10-d9f0ab9ffc28)

   - Làm tương tự với các cột khác còn lại trong bảng __DKMH__ và một số bảng khác nếu cần.  

## 7. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương.

   - Click chuột phải vào file database __QLSV__ chọn __Tasks__ --> __Generte Scripts..__ để tạo các tập lệnh.
           
  ![Screenshot (138)](https://github.com/user-attachments/assets/d8b9edb5-166f-4dc3-8ef6-fcd6b2b18f6f)

   - Click __Next__ qua phần hướng dẫn tạo tập lệnh.

  ![Screenshot (139)](https://github.com/user-attachments/assets/cdd82891-710f-4d4a-a54c-3932cc6d7907)
   
   - Tích vào phần __Select specific database objects__ chọn các đối tượng cụ thể để tạo scripts.

  ![Screenshot (141)](https://github.com/user-attachments/assets/a46a0ef4-5d5e-4922-b07b-52f780d56e90)
   
   - Chọn lưu dưới dạng file script và nơi lưu file.

  ![Screenshot (142)](https://github.com/user-attachments/assets/1959bbb1-cfe2-4414-9695-4a6a9da29585)
    
   - Nhìn lại các lựa chọn vừa thực hiện.

  ![Screenshot (143)](https://github.com/user-attachments/assets/1dee6fc4-56d9-4a1c-ac72-a0613c199849)
    
   - Click __Finish__ để hoàn tất quá tình xuất file script.

  ![Screenshot (144)](https://github.com/user-attachments/assets/5712642a-0cbd-4a30-baaa-e4e6a2dea39c)
    

    
