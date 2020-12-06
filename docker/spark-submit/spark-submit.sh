 #!/bin/bash
 
/spark/bin/spark-submit \
--master ${SPARK_MASTER_URL} \
--total-executor-cores 2 \
--num-executors ${SPARK_NUM_EXECUTORS} \
 ${SPARK_SUBMIT_ARGS} \
  ${SPARK_APPLICATION_ARGS} \