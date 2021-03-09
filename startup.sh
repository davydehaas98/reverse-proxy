
echo "startup.sh" ;
nginx -g "daemon off;" ;
echo "startup.sh" ;
cron && tail -f /var/log/cron.log ;
