FROM nginx:mainline
# Install cron
RUN apt update && apt -y install cron
# Copy hello-cron file to the cron.d directory
COPY nginx-reload-cron /etc/cron.d/nginx-reload-cron
# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/nginx-reload-cron
# Apply cron job
RUN crontab /etc/cron.d/nginx-reload-cron
# Create the log file to be able to run tail
RUN touch /var/log/cron.log

COPY /nginx /etc/nginx/
COPY /html /usr/share/nginx/html/

EXPOSE 80
EXPOSE 443

CMD nginx -g daemon off ; cron && tail -f /var/log/cron.log