FROM mcr.microsoft.com/dotnet/core/sdk:3.0
MAINTAINER kgamecarter@gmail.com

RUN apt install -yq apt-transport-https dirmngr gnupg ca-certificates
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb https://download.mono-project.com/repo/debian stable-stretch main" | tee /etc/apt/sources.list.d/mono-official-stable.list
RUN apt update -yq && apt upgrade -yq && apt install -yq curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt install -yq nodejs mono-devel
