-- USERS
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES 
  ('uuid-user-1', 'Alice', 'Smith', 'alice@example.com', 'hashed_pass_1', '0712345678', 'guest', NOW()),
  ('uuid-user-2', 'Bob', 'Johnson', 'bob@example.com', 'hashed_pass_2', '0723456789', 'host', NOW()),
  ('uuid-user-3', 'Clara', 'Admin', 'admin@example.com', 'hashed_pass_3', '0734567890', 'admin', NOW());

-- PROPERTIES
INSERT INTO properties (property_id, host_id, name, description, location, price_per_night, created_at, updated_at)
VALUES
  ('uuid-prop-1', 'uuid-user-2', 'Ocean View Villa', 'Beachfront villa with 3 bedrooms', 'Mombasa, Kenya', 150.00, NOW(), NOW()),
  ('uuid-prop-2', 'uuid-user-2', 'City Apartment', '2-bedroom apartment in Nairobi CBD', 'Nairobi, Kenya', 85.00, NOW(), NOW());

-- BOOKINGS
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
  ('uuid-booking-1', 'uuid-prop-1', 'uuid-user-1', '2025-07-01', '2025-07-05', 600.00, 'confirmed', NOW()),
  ('uuid-booking-2', 'uuid-prop-2', 'uuid-user-1', '2025-08-10', '2025-08-15', 425.00, 'pending', NOW());

-- PAYMENTS
INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
  ('uuid-payment-1', 'uuid-booking-1', 600.00, NOW(), 'credit_card'),
  ('uuid-payment-2', 'uuid-booking-2', 425.00, NOW(), 'paypal');

-- REVIEWS
INSERT INTO reviews (review_id, property_id, user_id, rating, comment, created_at)
VALUES
  ('uuid-review-1', 'uuid-prop-1', 'uuid-user-1', 5, 'Amazing place! Great view and clean.', NOW());

-- MESSAGES
INSERT INTO messages (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
  ('uuid-message-1', 'uuid-user-1', 'uuid-user-2', 'Hi, I have a question about your property.', NOW());
