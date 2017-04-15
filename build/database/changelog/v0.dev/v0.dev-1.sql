-- INSERT VERSION HISTORY
SET @version := 'v0-dev-1';
INSERT INTO `version_history` (`version_id`, `started_on`) VALUES (@version, CURRENT_TIMESTAMP());


-- -------------------------------------------------------
-- -------------------------------------------------------
-- ADD YOUR SQL CODE BELOW THIS LINE
-- -------------------------------------------------------

-- REPLACE THIS LINE WITH YOUR SQL CHANGES --

-- FINALIZE VERSION HISTORY
UPDATE `version_history` SET `finished_on` = CURRENT_TIMESTAMP() WHERE `version_id` = @version;
