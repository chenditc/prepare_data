#!/bin/ksh93
pyspark --packages com.databricks:spark-csv_2.11:1.2.0

from pyspark.sql import SQLContext
sqlContext = SQLContext(sc)

# Get the data frame
df = sqlContext.read.format('com.databricks.spark.csv').options(header='true').load('s3://chenditc-training-data/springleaf/train.csv')

# Get character distribution for column
characterDistribution = df.map(lambda p : p.VAR_0001).flatMap(lambda x : list(x)).map(lambda x : (x, 1)).reduceByKey(lambda a, b: a + b)

# Get column length distribution
