# Hafif bir Nginx imajı kullan
FROM nginx:alpine

# Çalışma dizini: Nginx'in default statik dosya klasörü
WORKDIR /usr/share/nginx/html

# Bizim bütün proje dosyalarını buraya kopyala
COPY . /usr/share/nginx/html

# Dışarı açacağımız port
EXPOSE 80

# Nginx'i foreground'da çalıştır
CMD ["nginx", "-g", "daemon off;"]
