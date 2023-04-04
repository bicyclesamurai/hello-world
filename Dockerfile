FROM nginx:1.10.1-alpine
COPY ./helloWorld /usr/share/nginx/html
EXPOSE 80/tcp

CMD [“nginx”, “-g”, “daemon off”;]