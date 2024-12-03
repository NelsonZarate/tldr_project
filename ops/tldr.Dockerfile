from ubuntu:latest

#inicializa a variavel ambiente
env DEBIAN_FRONTEND=noninteractive 
env TZ=Etc/UTC

env A=5
env B=7

run apt update -y

#instala o tldr
#run apt install -y tldr

#cria uma pasta chamada share
#run mkdir -p /root/.local/share 

#atualiza o tldr
#run tldr -u

#instala o vim
#run apt install -y vim

#workdir
workdir /home/ubuntu/script
#copiar o script para dentro da imagem
#copy ./script.sh . "/home/ubuntu/script"
copy ./script-projects/script.sh .
run chmod u+x script.sh
# cmd ["tldr","docker"]
#entrypoint ["tldr"]

cmd ["bash"]
#entrypoint["bash"]


