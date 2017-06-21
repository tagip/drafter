# Drafter
Docker image that generate AST json from API Blueprint file. It's based on https://github.com/apiaryio/drafter. 

## Usage 

`docker run --rm -v $(pwd):/tmp drafter /tmp/api.apib -f json -t ast -o /tmp/api.json`
