FROM nginx:alpine

WORKDIR /app

COPY src /usr/share/nginx/html/src
COPY src/index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
