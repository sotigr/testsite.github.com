
#Install admin
FROM ubuntu

RUN set -x \
# Create nginx user/group first, to be consistent throughout Docker variants
    && addgroup --system --gid 101 nginx \
    && adduser --system --disabled-login --ingroup nginx --no-create-home --home /nonexistent --gecos "nginx user" --shell /bin/false --uid 101 nginx
    

RUN mkdir -p /var/www/mkdocs/public/
 
WORKDIR /var/www/mkdocs/public

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \ 
    python3-pip \
    mkdocs

RUN apt-get update && apt-get install -y \
    software-properties-common
RUN add-apt-repository universe
RUN apt-get update && apt-get install -y \ 
    curl \ 
    python3.7 \
    python3-pip \
    mkdocs \
    nginx
  
COPY requirements.txt .
RUN pip3 install -r requirements.txt
   
COPY ./docs ./docs
COPY . .

RUN mkdocs build

COPY nginx.conf /etc/nginx/nginx.conf 

EXPOSE 80

STOPSIGNAL SIGTERM
  
CMD ["nginx", "-g", "daemon off;"]
 