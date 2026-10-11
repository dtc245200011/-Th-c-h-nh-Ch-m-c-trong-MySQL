-- Tạo index cho customerName
ALTER TABLE customers ADD INDEX idx_customerName (customerName);

-- Tạo index ghép cho họ và tên liên hệ
ALTER TABLE customers ADD INDEX idx_full_name (contactFirstName, contactLastName);
