SELECT * FROM users u
  LEFT JOIN bookings b ON u.id = b.user_id
  LEFT JOIN tickets t ON b.ticket_id = t.id
WHERE u.age > 25
GROUP BY b.user_id
HAVING SUM(t.price) > 400