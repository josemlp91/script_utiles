bind = "127.0.0.1:8001" # dirección a donde accederá Nginx
logfile = "/var/www/logs/nombreApp/gunicorn.log" # dirección donde estarán los logs de la aplicación
workers = 1 # dependerá en medida de la carga de trabajo que tenga la aplicación, también depende del hardware con que se cuente
loglevel = 'info' # tipo de logging