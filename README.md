
# Docker Multi Arch build and push
```
#build
docker build -t public.ecr.aws/parikshit/huggingface-cli:arm64-slim --build-arg ARCH=arm64/ .
docker build -t public.ecr.aws/parikshit/huggingface-cli:amd64-slim --build-arg ARCH=amd64/ .

#push
docker push public.ecr.aws/parikshit/huggingface-cli:arm64-slim
docker push public.ecr.aws/parikshit/huggingface-cli:amd64-slim

#create manifest
docker manifest create public.ecr.aws/parikshit/huggingface-cli:slim \
 --amend public.ecr.aws/parikshit/huggingface-cli:arm64-slim \
 --amend public.ecr.aws/parikshit/huggingface-cli:amd64-slim

# push manifest
docker manifest push public.ecr.aws/parikshit/huggingface-cli:slim
```
