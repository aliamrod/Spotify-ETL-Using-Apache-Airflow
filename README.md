# Spotify-ETL-Using-Apache-Airflow
## Introduction 
Apache Airflow is an open-source workflow management platform for data engineering pipelines. Airflow takes advantage of directed acyclic graphs (DAGs) to manage workflow orchestration. Tasks and dependencies are defined in Python and then Airflow manages the scheduling and execution. DAGs can be run either on a defined schedule (i.e. hourly or daily) or based on external event triggers (i.e. a file appearing in Hive). Previous DAG-based schedulers like Oozie and Azkaban tended to rely on multiple configuration files and file system trees to create a DAG, whereas in Airflow, DAGs can often be written in one Python file.

Airflow is a platform that allows you to run _workflows_. A workflow is represented as a DAG that contains individual pieces of work called 'Tasks', arranged with dependencies and data flows taken into account. 

![image](https://github.com/aliamrod/Spotify-ETL-Using-Apache-Airflow/assets/62684338/73176e1d-bee1-4cc8-abc3-54f6ccf26912)

A DAG specifies the dependencies between Tasks, and the order in which to execute them and run retries; the Tasks themselves describe what to do, be it fetching data, running analysis, triggering other systems, etc. 

An Airflow installation generally consists of the following components:
* A scheduler, which handles both triggering scheduled workflows, and submitting Tasks to the executor to run.
* An executor, which handles running tasks. In the default Airflow installation, this runs everything _inside_ the scheduler, but most production-suitable executors usually push task execution out to workers.
* A webserver, which presents a user interface to inspect, trigger, and debug the behavior of DAGs and tasks.
* A folder of DAG files, read by the scheduler and executor (and any workers affiliated to the executor).
* A metadata database, used by the scheduler, executor and webserver to store state.

<p align="center">
  
![image](https://github.com/aliamrod/Spotify-ETL-Using-Apache-Airflow/assets/62684338/218b1db2-7bb4-4348-89fc-ffd463aa2b50)

</p>

Most executors will generally also introduce other components to let them communicate to their workers - like a task queue - but you can still think of the executor 




## Objective
Develop an ETL (Extract-Transform-Load) pipeline utilizing Python and automate with Apache Airflow. In this project, the primary objective/problem statement calls for the need to use Spotify's API to read the data and perform basic transformations and data quality checks. Consequently, we load the retrieved data to PostgreSQL DB and then automate the entire process through Apache Airflow.


![image](https://github.com/aliamrod/Spotify-ETL-Using-Apache-Airflow/assets/62684338/38271487-e4de-487d-8579-7f8c79d7eb10)


## Constructing ETL Pipeline
Dataset: We will be using Spotify's API. After creating an account, refer to this page. Now you will be able to see a get token icon; click on it and select  'user-read-recently-played' and click 'get token'. 

![image](https://github.com/aliamrod/Spotify-ETL-Using-Apache-Airflow/assets/62684338/e0aed278-2003-4ce9-a424-c0c500479a43)
