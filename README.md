
# Docker Multi Arch build and push
```
docker build -t public.ecr.aws/parikshit/huggingface-cli:arm64-slim --build-arg ARCH=arm64/ .
docker build -t public.ecr.aws/parikshit/huggingface-cli:arm64-slim --build-arg ARCH=amd64/ .
docker push public.ecr.aws/parikshit/huggingface-cli:arm64-slim
docker push public.ecr.aws/parikshit/huggingface-cli:amd64-slim
docker manifest create public.ecr.aws/parikshit/huggingface-cli:slim \
 --amend public.ecr.aws/parikshit/huggingface-cli:arm64-slim \
 --amend public.ecr.aws/parikshit/huggingface-cli:amd64-slim

docker manifest push public.ecr.aws/parikshit/huggingface-cli:slim
```