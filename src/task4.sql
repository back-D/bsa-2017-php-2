UPDATE users
SET is_deleted = 1
WHERE id NOT IN (SELECT user_id FROM bookings)