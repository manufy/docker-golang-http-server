#/bin/bash
echo "$(tput setab 4 setaf 2) Clean all $(tput sgr 0)"
./clean_all.sh
echo "$(tput setab 4 setaf 2) Install golang dependencies $(tput sgr 0)"
./install_golang_dependencies.sh
echo "$(tput setab 4 setaf 2) Building local golang http server $(tput sgr 0)"
go build
echo "$(tput setab 4 setaf 2) Building docker image $(tput sgr 0)"
./build_docker_server.sh
echo "$(tput setab 4 setaf 2) Installation finished $(tput sgr 0)"
