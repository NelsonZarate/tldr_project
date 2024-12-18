
build: ##build sem nome so com tag
	docker build -t tldr .

run:##correr o programa
	docker run -it tldr

bash: ## mostra o bash 
	docker run -it tldr bash

.PHONY:help
#@ Utility
help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

clean-help: ## Tidy up local environment
	find . -name \*.pyc -delete
	find . -name __pycache__ -delete

clean:
	docker container prune -f 
	docker image prune -a 
	docker volume prune -f
	docker system prune -a

