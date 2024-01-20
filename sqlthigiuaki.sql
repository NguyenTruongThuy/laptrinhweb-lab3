THI GIỮA KÌ
HO&TEN: NGUYỄN TRƯỜNG THỦY
MSSV: 22001783
ClASS: 22CTMDT01
PHÒNG THI: E404
THỜI GIAN:
1H30P (HTML, CSS 30p, SQL: 60p)
ĐỀ 5: a5, b5

a5.  Lấy ra danh sách người dùng trong đó tên người dùng có chữ a, chiều dài từ 5 đến
9(>=5, <= 9), email dùng dịch vụ Gmail, trong tên email có chữ i (trong tên, chứ
không phải domain exampleitest@yahoo.com), chiều dài email từ 10 đến 20 ký tự
(>=10, <= 20)

SELECT * FROM users					
	WHERE					
	(user_name LIKE '%a%' AND LENGTH(user_name) >= 5 AND LENGTH(user_name) <= 9)										
	OR						
	(user_email LIKE '%i%@gmail.com')
    OR					
	(LENGTH (user_email) >=10 AND LENGTH (user_email)<=20);
	
	

b5.	Liệt kê danh sách mua hàng của user bao gồm giá tiền của mỗi đơn hàng, thông tin
hiển thị gồm: mã user, tên user, mã đơn hàng, tổng tiền, số sản phẩm. Mỗi user chỉ
chọn ra 1 đơn hàng có số sản phẩm là nhiều nhất.
	