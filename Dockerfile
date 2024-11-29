FROM python:slim
RUN pip install -U "huggingface_hub[cli]"
ENTRYPOINT [ "huggingface-cli" ]
