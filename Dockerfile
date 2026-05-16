# Temel imaj olarak Nginx kullanıyoruz (Statik dosyalar için en iyisi)
FROM nginx:alpine

# Nginx'in varsayılan public klasörünü siliyoruz
RUN rm -rf /usr/share/nginx/html/*

# Projedeki dosyaları Nginx kök dizinine kopyalıyoruz
COPY src /usr/share/nginx/html/src
COPY docs /usr/share/nginx/html/docs
COPY src/index.html /usr/share/nginx/html/index.html

# 80 portunu dışa açıyoruz
EXPOSE 80

# Nginx'i arka planda değil, ana process olarak başlatıyoruz
CMD ["nginx", "-g", "daemon off;"]
