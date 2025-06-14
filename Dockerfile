FROM ubuntu:22.04

#making non interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

#update package list and run nginx
RUN apt-get update && apt-get install -y nginx

#expose to port 80
EXPOSE 80

#start nginx in foreground
CMD ["nginx","-g","daemon off;"]