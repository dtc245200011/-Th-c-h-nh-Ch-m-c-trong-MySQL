-- Truy vấn kiểm tra trước/sau
EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';

-- Nếu MySQL hỗ trợ EXPLAIN ANALYZE
EXPLAIN ANALYZE SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';

-- Truy vấn ví dụ cho index ghép
EXPLAIN SELECT * FROM customers WHERE contactFirstName = 'Jean' AND contactLastName = 'King';
EXPLAIN SELECT * FROM customers WHERE contactFirstName = 'Jean' OR contactFirstName = 'King';
