-- This sql database contains the table that will be required for
-- user accounts. I have generated a couple of accounts for testing.
CREATE TABLE `users` (

  `id` int(12) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (id)


) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Default user account for testing
INSERT INTO `users` (`id`, `user_name`, `email`, `password`) VALUES
(1, 'admin', 'admin@admin.com', 'admin123'),
(2, 'test', 'test@test.com', 'test123'),
(3, 'guest', 'guest@guest.com', 'guest123');
COMMIT;
