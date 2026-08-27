# Imagem base leve, oficial e mantida ativamente
FROM nginx:alpine

# Remove o index.html padrão do nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia o site personalizado para o diretório que o nginx serve
COPY index.html /usr/share/nginx/html/index.html

# Porta padrão em que o nginx escuta dentro do container
EXPOSE 80

# CMD padrão da imagem base já sobe o nginx em foreground,
# mas deixamos explícito por clareza
CMD ["nginx", "-g", "daemon off;"]
