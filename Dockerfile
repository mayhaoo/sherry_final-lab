# 轻量nginx基础镜像
FROM nginx:alpine
# 清空nginx默认页面
RUN rm -rf /usr/share/nginx/html/*
# 复制网站全部文件到容器
COPY . /usr/share/nginx/html
# 暴露80端口
EXPOSE 80
# 前台运行nginx
CMD ["nginx", "-g", "daemon off;"]