cd /var/www

alias composer='docker run -ti --rm -v $(pwd):/app composer/composer'
alias php='docker exec -ti docker_web_1 php'