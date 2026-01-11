-- View
CREATE DATABASE Session10_demo;
USE Session10_demo;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    email VARCHAR(150) UNIQUE NOT NULL,
    birth_date DATE
);

INSERT INTO users (full_name, gender, email, birth_date) VALUES
('Nguyễn Văn An', 'Male', 'an.nguyen@email.com', '1995-05-15'),
('Trần Thị Bình', 'Female', 'binh.tran@email.com', '1998-10-20'),
('Lê Hoàng Long', 'Male', 'long.le@email.com', '2000-02-28'),
('Phạm Minh Anh', 'Other', 'minhanh.pham@email.com', '1992-12-05'),
('Võ Thị Sáu', 'Female', 'sau.vo@email.com', '2005-08-12'),
('Đặng Văn Lâm', 'Male', 'lam.dang@email.com', '1993-07-30');

-- VIEW
CREATE VIEW view_user_info AS
    SELECT 
        id, full_name, email
    FROM
        users;

-- Tùy chọn CHECK OPTION
CREATE VIEW view_user AS
    SELECT 
        *
    FROM
        users
    WHERE
        gender = 'male' WITH CHECK OPTION;	

-- Cap nhat
UPDATE view_user 
SET 
    gender = 'female'
WHERE
    id = 1;
-- thêm moi dũ liệu qua view 
insert into view_user
value(1000, 'abc', 'Female', 'abc@Gmail.com','2000-04-19');
-- XOA
drop view vieww_user;



