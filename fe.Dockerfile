from ubuntu:latest

run apt update -y

run apt install -y tldr

run mkdir -p /root/.local/share 

run tldr -u

# cmd ["tldr","docker"]
# entrypoint ["tldr"]

#cmd["--help"]

