$ cd /Users/aliamahama-rodriguez/spotify-airflow # change to project director
$ virtualenv airflow-venv # create isolated Python virtual environment
$ source airflow-venv/bin/activate # activate virtual environment

# Bootstrap an Airflow standalone instance on local machine

# Set Airflow `home` variable. The AIRFLOW_HOME environment variable is used to inform Airflow of the desired project location. This step of setting
# ... the environment variable is performed before installing Airflow so that the installation process knows where to store the necessary files. 
$ export AIRFLOW_HOME=/Users/aliamahama-rodriguez/spotify-airflow 

# Install Airflow using the constraints file, which is determined based on the URL we passed
AIRFLOW_VERSION = 
