-- Insert data into 'information' table
INSERT INTO information (res_phone, res_name, res_addr, res_fax)
VALUES (8888888888, 'Restaurant', ' Campus II, 3/2 street, Ninh Kieu district, Can Tho city, Viet Nam', 8888888888);

-- Insert data into 'user' table
INSERT INTO user (user_id, user_name, user_type, user_phone, user_pw, user_coefficients_salary)
VALUES (1, 'admin', 'boss', 8888888888, 'admin', 20);

-- Insert data into 'user_detail' table
INSERT INTO user_detail (user_id, user_total_hour, user_total_salary)
VALUES (1, 40, 10);

-- Insert data into 'food_type' table
INSERT INTO food_type (type_id, type_name)
VALUES (1, 'Appetizers'), (2, 'Salads'), (3, 'Soups'),
(4, 'Entrees'), (5, 'Sides'), (6, 'Kids Menu'),
(7, 'Beverages'), (8, 'Deserts'), (9, 'Specials'),
(10, 'Lunch');

-- Insert data into 'food' table
INSERT INTO food (f_id, type_id, f_name, f_description)
VALUES (1, 1, 'Polish Pierogi', 'Three pierogi with stuffing of your choice, botled or pan fried served with caramelized onion, sour cream'),
       (2, 1, 'Potato Pancake', 'Three (3) golden crispy potato pancakes made with our own recipe from organic potatoes, served with homemade applesauce and sour cream'),
       (3, 1, 'Stuffed Cabbage', 'One (1) cabbage stuffed with rice, pork, beef and spices served with homemade tomato or mushroom sauce'),
       (4, 1, 'Polish Trio Dish', 'Two pierogi, two pancakes, polish sausage. Plate good as appetizer for two');

-- Insert data into 'food_amount_detail' table
INSERT INTO food_amount_detail (f_id, f_detail_type, f_amount)
VALUES (1, 'Nomal', 8.59),
       (2, 'Nomal', 8.99),
       (3, 'Nomal', 8.99),
       (4, 'Nomal', 17.59);

-- Insert data into 'food_img' table
INSERT INTO food_img (f_id, f_img_url)
VALUES (1, 'polish_pierogi.jpg'),
       (2, 'potato_pancake.jpg'),
       (3, 'stuffed_cabbage.jpg'),
       (4, 'polish_trio_dish.jpg');

-- Insert data into 'restaurant_table' table
INSERT INTO restaurant_table (table_id, table_name, table_status, table_seats)
VALUES (1, 'Table 1', 0, 4),
       (2, 'Table 2', 0, 6),
       (3, 'Table 3', 0, 2);

