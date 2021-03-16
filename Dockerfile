FROM nginx:mainline
# Install cron
RUN apt update && apt install cron -y
# Copy hello-cron file to the cron.d directory
COPY nginx-reload-cron /etc/cron.d/nginx-reload-cron
# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/nginx-reload-cron
# Apply cron job
RUN crontab /etc/cron.d/nginx-reload-cron
# Create the log file to be able to run tail
RUN touch /var/log/cron.log
# Copy NGINX settings and HTML error pages
COPY /nginx /etc/nginx/
COPY /html /usr/share/nginx/html/
# Expose port 80 and 443
EXPOSE 80
EXPOSE 443
# Copy startup shell script
COPY startup.sh /startup.sh
# Give execution rights on the shell script
RUN chmod +x /startup.sh
# Run the startup.sh shell script on container startup
CMD ["/startup.sh"]
