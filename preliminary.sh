$ cd /Users/aliamahama-rodriguez/spotify-airflow # change to project director
$ virtualenv airflow-venv # create isolated Python virtual environment
$ source airflow-venv/bin/activate # activate virtual environment

# Bootstrap an Airflow standalone instance on local machine

# Set Airflow `home` variable. The AIRFLOW_HOME environment variable is used to inform Airflow of the desired project location. This step of setting
# ... the environment variable is performed before installing Airflow so that the installation process knows where to store the necessary files. 
$ export AIRFLOW_HOME=/Users/aliamahama-rodriguez/spotify-airflow # direct `AIRFLOW_HOME` variable to desired project directory

$ pip install apache-airflow 

# Edit .cfg/configuration file
$ nano *.cfg
# dag_file = /Users/aliamahama-rodriguez/spotify-airflow

$ sudo lsof -i :8080
sudo kill -9 <PID> # Replace <PID> with the process ID using port 8080 (Kill any other active webserver ports)

# Initiate webserver port
$ airflow webserver --port 8081

# Adjust log-in information (only if required)
$ airflow users create --username admin --firstname Admin --lastname User --role Admin --email example_email@gmail.com --password password

