SELECT * FROM users
WHERE id IN (SELECT b.user_id FROM bookings b
  LEFT JOIN tickets t ON t.id = b.ticket_id
WHERE t.title = 'Lagos')