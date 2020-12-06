#!/bin/bash

SPARK_SUBMIT_ARGS="/opt/spark-apps/yelpJoiner.py"
SPARK_MASTER_URL="spark://spark-master:7077"
SPARK_NUM_EXECUTORS="2"

cp /home/dmitrii/mpp_spark/scripts/yelpJoiner.py /home/dmitrii/mnt/spark/apps/
docker run --network docker-spark-cluster_default \
-p 4040:4040 \
-v /home/dmitrii/mnt/spark/apps:/opt/spark-apps \
-v /home/dmitrii/mnt/spark/data:/opt/spark-data \
--env SPARK_SUBMIT_ARGS=$SPARK_SUBMIT_ARGS \
--env SPARK_MASTER_URL=$SPARK_MASTER_URL \
--env SPARK_NUM_EXECUTORS=${SPARK_NUM_EXECUTORS} \
spark-submit:latest