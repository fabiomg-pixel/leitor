FROM nginx:alpine

# Copia os arquivos da aplicação web
COPY . /usr/share/nginx/html

# Configura a porta 7860 (padrão do Hugging Face Spaces) ou porta customizada
RUN sed -i 's/listen       80;/listen       7860;/g' /etc/nginx/conf.d/default.conf

EXPOSE 7860

CMD ["nginx", "-g", "daemon off;"]
