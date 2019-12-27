-- QuickSight Mini Project
-- Athena DDL Script for RAW data

create database quicksightproject;

-- drop table quicksightproject.USA_CENSUS_RAW;

-- US Census RAW Table 
create external table quicksightproject.USA_CENSUS_RAW (
  ZIP_CODE STRING, 
  ZIP_CODE_TYPE STRING,
  CITY  STRING, 
  State  STRING, 
  LOCATION_TYPE STRING,
  LAT     STRING,
  LONG STRING,
  LOCATION_HIERARCHY STRING,
  DECOMMISSION_FLAG STRING,
  TAX_RETURNS_FILED STRING,
  ESTIMATED_POPULATION STRING,
  TOTAL_WAGES STRING
  )
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://quicksight-mini-project2/us_census_raw/'
TBLPROPERTIES ("skip.header.line.count"="1");

select * from quicksightproject.USA_CENSUS_RAW limit 20;


-- drop table quicksightproject.VOTER_RAW;

create external table quicksightproject.VOTER_RAW (  
 `COUNTY_NAME` STRING,
  `REPORTDATE` STRING,
  `VOTER_REG_NUM` STRING,
  `STATUS_LBL` STRING,
  `LAST_NAME` STRING,
  `FIRST_NAME` STRING,
  `MIDDLE_NAME` STRING,
  `NAME_SUFFIX_LBL` STRING,
  `HOUSE_NUM` STRING,
  `HALF_CODE` STRING,
  `STREET_DIR_LBL` STRING,
  `STREET_NAME` STRING,
  `STREET_TYPE_LBL` STRING,
  `STREET_SUFFIX_LBL` STRING,
  `UNIT_DESIGNATOR` STRING,
  `UNIT_NUM_STR` STRING,
  `CITY` STRING,
  `STATE` STRING,
  `ZIP` STRING,
  `MAIL_ADDR1` STRING,
  `MAIL_ADDR2` STRING,
  `MAIL_ADDR3` STRING,
  `MAIL_ADDR4` STRING,
  `MAIL_CITY` STRING,
  `MAIL_STATE` STRING,
  `MAIL_ZIP` STRING,
  `RACE_LBL` STRING,
  `PARTY_LBL` STRING,
  `GENDER_LBL` STRING,
  `REGISTRATION_DT` STRING,
  `EOY_AGE` STRING,
  `PRECINCT_LBL` STRING,
  `MUNICIPALITY_LBL` STRING,
  `WARD_LBL` STRING, 
  `CONGRESSIONAL_DISTRICT_LBL` STRING,
  `SUPERIOR_COURT_LBL` STRING,
  `JUDICIAL_DISTRICT_LBL` STRING,
  `NC_SENATE_LBL` STRING,
  `NC_HOUSE_LBL` STRING,
  `COUNTY_COMMISSIONER_LBL` STRING,
  `SCHOOL_LBL` STRING,
  `PROSECUTORIAL_LBL` STRING,
  `VOTING_DISTRICT_LBL` STRING,
  `Y_2011_OCT` STRING,
  `Y_2011_NOV` STRING,
  `Y_2012_MAY` STRING,
  `Y_2012_JULY` STRING,
  `Y_2012_NOV` STRING,
  `Y_2013_MAR` STRING,
  `Y_2013_OCT` STRING,
  `Y_2013_NOV` STRING,
  `Y_2014_MAY` STRING,
  `Y_2014_JULY` STRING,
  `Y_2014_NOV` STRING,
  `Y_2015_OCT` STRING,
  `Y_2015_NOV` STRING,
  `Y_2016_MAR` STRING,
  `Y_2016_JUN` STRING,
  `Y_2016_NOV` STRING,
  `Y_2017_OCT` STRING,
  `Y_2017_NOV` STRING,
  `Y_2018_MAY` STRING,
  `Y_2018_NOV` STRING,
  `Y_2019_OCT` STRING)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
 's3://quicksight-mini-project2/voter_raw/'
TBLPROPERTIES (
  'has_encrypted_data'='false', 
  'skip.header.line.count'='1', 
  'transient_lastDdlTime'='1572395978');
  
select * from quicksightproject.VOTER_RAW limit 10;  
