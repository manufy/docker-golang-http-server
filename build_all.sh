#/bin/bash
echo "$(tput setab 4 setaf 2) Cleaning all $(tput sgr 0)"
./clean_all.sh
echo "$(tput setab 4 setaf 2) Installing golang dependencies $(tput sgr 0)"
./install_golang_dependencies.sh
echo "$(tput setab 4 setaf 2) Building local golang http server $(tput sgr 0)"
go build
echo "$(tput setab 4 setaf 2) Building docker image $(tput sgr 0)"
./build_docker_server.sh
echo "$(tput setab 4 setaf 2) Build complete $(tput sgr 0)"
