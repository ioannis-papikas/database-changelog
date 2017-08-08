--
-- Table structure for table `version_history`
--

CREATE TABLE `version_history` (
  `version_id` varchar(50) NOT NULL,
  `started_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `finished_on` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `version_history`
--
ALTER TABLE `version_history`
  ADD PRIMARY KEY (`version_id`);


-- INSERT VERSION HISTORY
SET @version := 'v0-dev-1';
INSERT INTO `version_history` (`version_id`, `started_on`) VALUES (@version, CURRENT_TIMESTAMP());

-- FINALIZE VERSION HISTORY
UPDATE `version_history` SET `finished_on` = CURRENT_TIMESTAMP() WHERE `version_id` = @version;
