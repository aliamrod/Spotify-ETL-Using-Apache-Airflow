# Spotify-ETL-Using-Apache-Airflow

## Introduction to Apache Airflow
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


Airflow itself is agnostic to what you're running - it will orchestrate and run anything, either with high-level support from a provider, or directly as a command using the Shell or Python Operators.


## Objective
Develop an ETL (Extract-Transform-Load) pipeline utilizing Python and automate with Apache Airflow. In this project, the primary objective/problem statement calls for the need to use Spotify's API to read the data and perform basic transformations and data quality checks. Consequently, we load the retrieved data to PostgreSQL DB and then automate the entire process through Apache Airflow.

![image](https://github.com/aliamrod/Spotify-ETL-Using-Apache-Airflow/assets/62684338/38271487-e4de-487d-8579-7f8c79d7eb10)


We construct a data pipeline (or in simple words, a data feed) that downloads Spotify data on what songs a Spotify user has listened to in the last 24 hours, and consequently saves that data in a SQLite database. The pipeline will also be scheduled to run daily. After a few months, we will have generated our own private Spotify played tracks historical dataset. 


**First generate your Spotify API access token here: https://developer.spotify.com/console/get-recently-played/**

