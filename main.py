import demo_job
from snailjob import ExecutorManager, client_main

## aa
if __name__ == "__main__":
    ExecutorManager.register(demo_job.test_job_executor)
    ExecutorManager.register(demo_job.test_job_executor_failed)
    ExecutorManager.register(demo_job.testWorkflowAnnoJobExecutor)
    ExecutorManager.register(demo_job.testMyMapExecutor)
    ExecutorManager.register(demo_job.testAnnoMapJobExecutor)
    ExecutorManager.register(demo_job.testAnnoMapReduceJobExecutor)
    client_main()