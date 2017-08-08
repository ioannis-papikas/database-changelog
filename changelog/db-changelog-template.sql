-- INSERT VERSION HISTORY
SET @version := '';
INSERT INTO `version_history` (`version_id`, `started_on`) VALUES (@version, CURRENT_TIMESTAMP());


-- -------------------------------------------------------
-- -------------------------------------------------------
-- ADD YOUR SQL CODE BELOW THIS LINE
-- -------------------------------------------------------



-- FINALIZE VERSION HISTORY
UPDATE `version_history` SET `finished_on` = CURRENT_TIMESTAMP() WHERE `version_id` = @version;
