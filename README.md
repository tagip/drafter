# Drafter
Docker image that generates AST json from API Blueprint file. It's based on https://github.com/apiaryio/drafter. 

## Usage 

`docker run --rm -v $(pwd):/tmp tagip/drafter drafter /tmp/api.apib -f json -t ast -o /tmp/api.json`
