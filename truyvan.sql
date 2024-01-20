a. Truy vấn người dùng
1. Lấy ra danh sách người dùng theo thứ tự tên theo Alphabet (A->Z)
	SELECT * FROM users ORDER BY user_name ASC;		
	
2. Lấy ra 07 người dùng theo thứ tự tên theo Alphabet (A->Z)
	SELECT * FROM users ORDER BY user_name ASC LIMIT 7;			
	
3. Lấy ra danh sách người dùng theo thứ tự tên theo Alphabet (A->Z), trongđótênngười dùng có chữ a
	SELECT * FROM users WHERE user_name LIKE '%a%' ORDER BY user_name ASC
	
4. Lấy ra danh sách người dùng trong đó tên người dùng bắt đầu bằng chữm5. 
Lấy ra danh sách người dùng trong đó tên người dùng kết thúc bằng chữi
	SELECT * FROM users  WHERE user_name like 'm%';

5. Lấy ra danh sách người dùng trong đó tên người dùng kết thúc bằng chữ i
	SELECT*FROM users where user_name like '%i'

6. Lấy ra danh sách người dùng trong đó email người dùng là Gmail (ví dụ:
example@gmail.com)
	SELECT * FROM users WHERE user_email LIKE '%@gmail.com%';

7. Lấy ra danh sách người dùng trong đó email người dùng là Gmail (ví dụ:
example@gmail.com), tên người dùng bắt đầu bằng chữ m
	SELECT * FROM users WHERE user_email LIKE '%@gmail.com%' and user_name like 'm%';
	
8. Lấy ra danh sách người dùng trong đó email người dùng là Gmail (ví dụ:
example@gmail.com), tên người dùng có chữ i và tên người dùng có chiều dài lớn hơn 5
	SELECT * FROM users WHERE user_email LIKE '%gmail%' and user_name like '%i%' and Length (user_name) > 5;
	
9. Lấy ra danh sách người dùng trong đó tên người dùng có chữ a,
 chiều dài từ 5 đến 9,email dùng dịch vụ Gmail, trong tên email có chữ i
	SELECT * FROM users WHERE user_name LIKE '%a%' and Length (user_name)> 5  and length (user_name) < 9 and
	user_email like '%i'and user_email like '%@gmail.com';

10. Lấy ra danh sách người dùng trong đó tên người dùng có chữ a, 
chiều dài từ 5 đến 9 hoặc tên người dùng có chữ i,
 chiều dài nhỏ hơn 9 hoặc email dùng dịch vụ Gmail, trong tên email có chữ i
		SELECT * FROM users					
	WHERE					
	(user_name LIKE '%a%' AND LENGTH(user_name) >= 5 AND LENGTH(user_name) <= 15)					
	OR					
	(user_name LIKE '%i%' AND LENGTH(user_name) <= 15)					
	OR						
	(user_email LIKE '%@gmail.com' AND user_email LIKE '%i%');
	
	
	
	
b. truy vấn đơn hàng
1. Liệt kê các hóa đơn của khách hàng, thông tin hiển thị gồm: mã user, tên user, mã hóa 
đơn
	SELECT users.user_id, users.user_name, orders.order_id			
	FROM users			
	INNER JOIN orders ON users.user_id = orders.user_id;
	
2. Liệt kê số lượng các hóa đơn của khách hàng: mã user, tên user, số đơn hàng
	SELECT users.user_id, users.user_name, COUNT(users.user_id) AS 'So hoa don'				
	FROM users				
	INNER JOIN orders ON users.user_id = orders.user_id				
	GROUP BY user_id;

3. Liệt kê thông tin hóa đơn: mã đơn hàng, số sản phẩm
	SELECT orders.order_id AS 'ma don hang', COUNT(orders.order_id) 
	FROM orders
	INNER JOIN order_details on orders.order_id=order_details.order_id
	GROUP BY orders.order_id;

4. Liệt kê thông tin mua hàng của người dùng: mã user, tên user, mã đơn hàng, tên sản 
phẩm. Lưu ý: gôm nhóm theo đơn hàng, tránh hiển thị xen kẻ các đơn hàng với nhau
	SELECT users.user_id, users.user_name, orders.order_id, products.product_name
	FROM users
	INNER JOIN orders on users.user_id=orders.user_id
	INNER JOIN order_details on orders.order_id=order_details.order_id
	INNER JOIN products ON order_details.product_id=products.product_id;

5. Liệt kê 7 người dùng có số lượng đơn hàng nhiều nhất, thông tin hiển thị gồm: mã 
user, tên user, số lượng đơn hàng
	select * FROM (				
	SELECT users.user_id, users.user_name, COUNT(users.user_id) AS 'so_hoa_don'				
	FROM users				
	INNER JOIN orders ON users.user_id = orders.user_id				
	GROUP BY user_id) as test				
	ORDER by so_hoa_don desc				
	LIMIT 7;

6. Liệt kê 7 người dùng mua sản phẩm có tên: Samsung hoặc Apple trong tên sản phẩm, 
thông tin hiển thị gồm: mã user, tên user, mã đơn hàng, tên sản phẩm
7. Liệt kê danh sách mua hàng của user bao gồm giá tiền của mỗi đơn hàng, thông tin 
hiển thị gồm: mã user, tên user, mã đơn hàng, tổng tiền
8. Liệt kê danh sách mua hàng của user bao gồm giá tiền của mỗi đơn hàng, thông tin 
hiển thị gồm: mã user, tên user, mã đơn hàng, tổng tiền. Mỗi user chỉ chọn ra 1 đơn 
hàng có giá tiền lớn nhất.
9. Liệt kê danh sách mua hàng của user bao gồm giá tiền của mỗi đơn hàng, thông tin 
hiển thị gồm: mã user, tên user, mã đơn hàng, tổng tiền, số sản phẩm. Mỗi user chỉ
chọn ra 1 đơn hàng có giá tiền nhỏ nhất.
10. Liệt kê danh sách mua hàng của user bao gồm giá tiền của mỗi đơn hàng, thông tin 
hiển thị gồm: mã user, tên user, mã đơn hàng, tổng tiền, số sản phẩm. Mỗi user chỉ
chọn ra 1 đơn hàng có số sản phẩm là nhiều nhất.
