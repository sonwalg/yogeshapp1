# Use the official Nginx image as the base image
FROM public.ecr.aws/n2w1l6f1/nginx:latest

# Remove the default index.html file that comes with the base image.
RUN rm /usr/share/nginx/html/index.html

# Copy your custom HTML file to the container
COPY index.html /usr/share/nginx/html

# Expose port 80 for the Nginx server
EXPOSE 80

