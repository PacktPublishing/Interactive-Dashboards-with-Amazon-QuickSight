-- For Section 3.1
-- this is to create an Athena table for Zipcode to City mapping

-- drop table quicksightdemo.usa_zipcode_list;

create external table quicksightdemo.usa_zipcode_list (
  RecordNumber INT, 
  Zipcode STRING, 
  City  STRING, 
  State  STRING, 
  Lat     STRING,
  Long STRING,
  Locationtext  STRING,
  Locationhierarchy STRING)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://quicksight-demo2/usa-zipcode-list'
TBLPROPERTIES ("skip.header.line.count"="1");


-- this is to create a table for Census stats by Zip
-- datafile is in S3 csv format
create external table quicksightdemo.usacensus_by_zip (
  ZIPCODE STRING, 
  MEDIANINCOME INT, 
  MEANINCOME INT,
  POPULATIONCOUNT INT 
   )
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://quicksight-demo2/USACensus'
TBLPROPERTIES ("skip.header.line.count"="1");

