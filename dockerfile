FROM mcr.microsoft.com/dotnet/sdk
RUN curl -fsSL https://deb.nodesource.com/setup_current.x | bash -
RUN apt-get install -y nodejs
COPY . PlzWork
WORKDIR PlzWork
RUN dotnet build
WORKDIR DotnetTemplate.Web
RUN apt-get update && apt-get install -y build-essential
RUN npm install
RUN npm run build
EXPOSE 5000
ENTRYPOINT ["dotnet","run"]