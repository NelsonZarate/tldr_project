from ubuntu:latest

#inicializa a variavel ambiente
env DEBIAN_FRONTEND=noninteractive 
env TZ=Etc/UTC

run apt update -y

#instala o tldr
run apt install -y tldr

#cria uma pasta chamada share
run mkdir -p /root/.local/share 

#atualiza o tldr
run tldr -u

#instala o vim
run apt install -y vim

#copiar o script para dentro da imagem
copy ./script.sh /home/ubuntu/script.sh
# cmd ["tldr","docker"]
#entrypoint ["tldr"]

cmd["bash"]


