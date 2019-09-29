
-- create table for USA Census Salary and Population
create table if not exists usasalarybyzip
(zip varchar(20), medianincome int, meanincome int, populationcount int);

-- copy data from S3 to Redshift 
copy usasalarybyzip from 's3://quicksight-demo2/USACensus/USACensusSalarybyZip.csv' 
credentials 'aws_iam_role=iam-role-arn'
delimiter ',' region 'us-east-1';

-- verify data 
select * from usasalarybyzip limit 5;
