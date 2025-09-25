FROM public.ecr.aws/docker/library/python:slim
RUN pip install -U "huggingface_hub[cli]"
ENTRYPOINT [ "hf" ]
