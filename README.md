# Thực hành Chỉ mục trong MySQL

## Mục tiêu
So sánh hiệu năng truy vấn trước và sau khi tạo index trên bảng `customers` của database `classicmodels`.

## Môi trường
- MySQL version: (ghi phiên bản bạn dùng)
- Dữ liệu mẫu: classicmodels (import từ file SQL)

## Các bước thực hiện
1. Import database:
   mysql -u <user> -p classicmodels < classicmodels.sql

2. Kiểm tra EXPLAIN trước khi tạo index:
   EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';

3. (Tùy chọn) EXPLAIN ANALYZE nếu MySQL hỗ trợ:
   EXPLAIN ANALYZE SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';

4. Tạo index:
   ALTER TABLE customers ADD INDEX idx_customerName (customerName);

5. Chạy lại EXPLAIN / EXPLAIN ANALYZE và so sánh.

6. Thêm ví dụ index ghép:
   ALTER TABLE customers ADD INDEX idx_full_name (contactFirstName, contactLastName);

7. Ghi lại kết quả vào thư mục `results/`.

## File trong repo
- sql/create_index.sql
- sql/drop_index.sql
- sql/test_queries.sql
- results/explain_before.txt
- results/explain_after.txt
- results/explain_analyze_before.txt
- results/explain_analyze_after.txt
- screenshots/ (tuỳ chọn)

## Kết luận
Ghi ngắn: trước khi có index MySQL thực hiện full table scan; sau khi có index, optimizer dùng index, giảm số rows đọc và thời gian thực thi.
