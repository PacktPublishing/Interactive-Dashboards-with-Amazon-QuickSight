-- QuickSight Demo
-- Section 2.3 

-- create database
create database quicksightdemo;


-- drop table quicksightdemo.wake_county_restaurant_listing;

-- Create table for restaurant listing; data is in S3
create external table quicksightdemo.wake_county_restaurant_listing (
  ID INT, 
  HSISID STRING, 
  NAME      STRING, 
  ADDRESS1  STRING, 
  ADDRESS2  STRING, 
  CITY      STRING, 
  STATE     STRING,
  POSTALCODE STRING,
  PHONENUMBER STRING,
  OPENDATE  STRING,
  FACILITYTYPE STRING,
  PERMITID STRING,
  GEOX FLOAT,
  GEOY FLOAT,
  GEOCODESTATUS STRING,
  GEOSHAPE  STRING,
  GEOPOINT2D STRING )
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ';' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://quicksight-demo2/wake-county-restaurants'
TBLPROPERTIES ("skip.header.line.count"="1");
  
-- quick test
select * from quicksightdemo.wake_county_restaurant_listing limit 5;
