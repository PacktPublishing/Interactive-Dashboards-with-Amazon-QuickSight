-- Voter Enriched view with only active voters
-- One record per voter  
create or replace view quicksightproject.VOTER_DETAILED_ENRICHED_VW
as select 
  VOTER_REG_NUM,
  COUNTY_NAME,
  REPORTDATE,
  STATUS_LBL,
  LAST_NAME,
  FIRST_NAME,
  MIDDLE_NAME,
  NAME_SUFFIX_LBL,
  HOUSE_NUM,
  HALF_CODE,
  STREET_DIR_LBL,
  STREET_NAME,
  STREET_TYPE_LBL,
  STREET_SUFFIX_LBL,
  UNIT_DESIGNATOR,
  UNIT_NUM_STR,
  CITY,
  STATE,
  ZIP,
  RACE_LBL,
  PARTY_LBL,
  GENDER_LBL,
  REGISTRATION_DT,
  "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR",
  EOY_AGE,
  PRECINCT_LBL,
  VOTING_DISTRICT_LBL,
  Y_2011_OCT,
  Y_2011_NOV,
  Y_2012_MAY,
  Y_2012_JULY,
  Y_2012_NOV,
  Y_2013_MAR,
  Y_2013_OCT,
  Y_2013_NOV,
  Y_2014_MAY,
  Y_2014_JULY,
  Y_2014_NOV,
  Y_2015_OCT,
  Y_2015_NOV,
  Y_2016_MAR,
  Y_2016_JUN,
  Y_2016_NOV,
  Y_2017_OCT,
  Y_2017_NOV,
  Y_2018_MAY,
  Y_2018_NOV,
  Y_2019_OCT
from quicksightproject.voter_raw
where status_lbl = 'A'; 
  
-- select * from quicksightproject.VOTER_DETAILED_ENRICHED_VW   limit 5;
  
  
-- Voter Enriched view with only active voters and columns transposed to rows
-- One record per voter and year-month combination
CREATE OR REPLACE VIEW voter_detailed_trans_enriched_vw AS 
SELECT
  "VOTER_REG_NUM"
, '201110' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2011_OCT" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2011_OCT") > 0
UNION ALL SELECT
  "VOTER_REG_NUM"
, '201111' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2011_NOV" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2011_NOV") > 0
UNION ALL SELECT
  "VOTER_REG_NUM"
, '201205' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2012_MAY" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2012_MAY") > 0
UNION ALL SELECT
  "VOTER_REG_NUM"
, '201207' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2012_JULY" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2012_JULY") > 0
UNION ALL SELECT
  "VOTER_REG_NUM"
, '201211' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2012_NOV" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2012_NOV") > 0
UNION ALL SELECT
  "VOTER_REG_NUM"
, '201303' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2013_MAR" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2013_MAR") > 0
UNION ALL SELECT
  "VOTER_REG_NUM"
, '201310' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2013_OCT" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2013_OCT") > 0
UNION ALL SELECT
  "VOTER_REG_NUM"
, '201311' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2013_NOV" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2013_NOV") > 0
UNION ALL SELECT
  "VOTER_REG_NUM"
, '201405' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2014_MAY" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2014_MAY") > 0
UNION ALL SELECT
  "VOTER_REG_NUM"
, '201407' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2014_JULY" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2014_JULY") > 0
UNION ALL SELECT
  "VOTER_REG_NUM"
, '201411' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2014_NOV" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2014_NOV") > 0
UNION ALL SELECT
  "VOTER_REG_NUM"
, '201510' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2015_OCT" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2015_OCT") > 0
UNION ALL SELECT
  "VOTER_REG_NUM"
, '201511' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2015_NOV" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2015_NOV") > 0
UNION ALL SELECT
  "VOTER_REG_NUM"
, '201603' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2016_MAR" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2016_MAR") > 0
UNION ALL SELECT
  "VOTER_REG_NUM"
, '201606' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2016_JUN" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2016_JUN") > 0
UNION ALL SELECT
  "VOTER_REG_NUM"
, '201611' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2016_NOV" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2016_NOV") > 0
UNION ALL SELECT
  "VOTER_REG_NUM"
, '201711' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2017_OCT" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2017_OCT") > 0
UNION ALL SELECT
  "VOTER_REG_NUM"
, '201711' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2017_NOV" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2017_NOV") > 0
UNION ALL SELECT
  "VOTER_REG_NUM"
, '201805' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2018_MAY" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2018_MAY") > 0
UNION ALL SELECT
  "VOTER_REG_NUM"
, '201811' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2018_NOV" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2018_NOV") > 0
UNION ALL SELECT
  "VOTER_REG_NUM"
, '201910' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, "Y_2019_OCT" "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A' AND length("Y_2019_OCT") > 0
UNION ALL SELECT -- THIS IS DUMMY TO ENABLE REPORTING OF TOTALS, NO YEAR FILTER
  "VOTER_REG_NUM"
, '202001' "YEAR_MONTH"
, "COUNTY_NAME"
, "REPORTDATE"
, "STATUS_LBL"
, "LAST_NAME"
, "FIRST_NAME"
, "MIDDLE_NAME"
, "NAME_SUFFIX_LBL"
, "HOUSE_NUM"
, "HALF_CODE"
, "STREET_DIR_LBL"
, "STREET_NAME"
, "STREET_TYPE_LBL"
, "STREET_SUFFIX_LBL"
, "UNIT_DESIGNATOR"
, "UNIT_NUM_STR"
, "CITY"
, "STATE"
, "ZIP"
, "RACE_LBL"
, "PARTY_LBL"
, "GENDER_LBL"
, "REGISTRATION_DT"
, "substr"("registration_dt", ("length"("registration_dt") - 1), 2) "REGISTRATION_YEAR"
, CAST("eoy_age" AS integer) "EOY_AGE"
, "PRECINCT_LBL"
, "VOTING_DISTRICT_LBL"
, '-' "VOTING_FLAG"
FROM
  quicksightproject.voter_raw
WHERE "status_lbl" = 'A';

 
-- SELECT * FROM quicksightproject.VOTER_DETAILED_TRANS_ENRICHED_VW LIMIT 5;

-- Enriched Summary Table
-- One record per Zip code, Voting year-month
create table quicksightproject.VOTER_ZIP_SUMMARY_ENRICHED 
WITH ( format = 'TEXTFILE', 
     external_location = 's3://quicksight-mini-project2/voter_summary_enriched/' )
AS
select E.ZIP "ZIP", E.YEAR_MONTH "YEAR_MONTH", max(U.city) "CITY",  max(U.state) "STATE",
       max(U.lat) "LATITYDE", max(U.long) "LONGITUDE",
       max(cast(U.estimated_population as integer)) "POPULATION",
       Sum(case when e.PARTY_LBL = 'DEM' then 1 else 0 end) "PARTY_DEM",
       sum(case when e.PARTY_LBL = 'REP' then 1 else 0 end) "PARTY_REP",
       sum(case when e.PARTY_LBL = 'DEM' then 0 when e.PARTY_LBL ='REP' then 0 else 1 end) "PARTY_OTHER",
       sum(case when e.RACE_LBL = 'W' then 1 else 0 end) "RACE_WHITE",
       sum(case when e.RACE_LBL = 'B' then 1 else 0 end) "RACE_BLACK",
       sum(case when e.RACE_LBL = 'A' then 1 else 0 end) "RACE_ASIAN",
       sum(case when e.RACE_LBL = 'I' then 1 else 0 end) "RACE_AMERICAN_INDIAN",
       sum(case when e.RACE_LBL = 'W' then 0 when e.RACE_LBL = 'B' then 0 
                when e.RACE_LBL = 'A' then 0 WHEN e.RACE_LBL = 'I' then 0 else 1 end) "RACE_OTHER",
       sum(case when e.eoy_age < 25 then 1 else 0 end) "AGE_UNDER_25" ,
       sum(case when e.eoy_age BETWEEN 25 AND 50 then 1 else 0 end) "AGE_BETWEEN_25_AND_50" ,
       sum(case when e.eoy_age > 50 then 1 else 0 end) "AGE_OVER_50" ,
       sum(case when e.GENDER_LBL = 'M' then 1 else 0 end) "GENDER_MALE",
       sum(case when e.GENDER_LBL = 'F' then 1 else 0 end) "GENDER_FEMALE",
       sum(case when e.GENDER_LBL = 'M' then 0 when e.GENDER_LBL = 'F' then 0 else 1 end) "GENDER_OTHER",
       sum(case when length(e.voting_flag) > 0 then 1 else 0 end) "VOTED",
       sum(case when e.voting_flag = 'V' then 1 else 0 end) "VOTED_ELECTION_DAY",
       sum(case when e.voting_flag = 'O' then 1 else 0 end) "VOTED_EARLY",
       sum(case when e.voting_flag = 'M' then 1 when e.voting_flag = 'A' then 1 else 0 end) "VOTED_MAIL",
       sum(case when e.voting_flag = 'P' then 1 else 0 end) "VOTED_PROVISIONAL",
       sum(case when e.voting_flag = 'T' then 1 else 0 end) "VOTED_TRANSFER"
from   quicksightproject.VOTER_DETAILED_TRANS_ENRICHED_VW E, quicksightproject.usa_census_raw U
where e.zip = U.zip_code  
group by E.ZIP, E.YEAR_MONTH;  

