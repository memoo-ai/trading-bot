# 使用官方 Node.js 镜像
FROM node:20

# 设置工作目录
WORKDIR /usr/src/app

# 复制 package.json 和 package-lock.json
COPY package*.json ./

# 安装依赖
RUN npm install

# 复制项目文件
COPY . .

# 编译项目
RUN npm run build

# 暴露应用端口
EXPOSE 3000

# 启动应用
CMD ["npm", "run", "start:prod"]
