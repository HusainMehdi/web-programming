-- This sql database contains the table that will be required for
-- user accounts. I have generated a couple of accounts for testing.
CREATE TABLE `users` (

  `id` int(12) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `trn_date` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Default user account for testing
INSERT INTO `users` (`id`, `user_name`, `email`, `password`, `trn_date`) VALUES
(1, 'admin', 'admin@admin.com', 'admin123', '2019-11-04 00:00:00'),
(2, 'test', 'test@test.com', 'test123', '2019-11-04 00:00:00'),
(3, 'guest', 'guest@guest.com', 'guest123', '2019-11-04 00:00:00');
COMMIT;
