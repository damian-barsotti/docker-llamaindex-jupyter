# Build binaries

FROM quay.io/jupyter/minimal-notebook:2024-09-02

USER root

RUN apt-get update -q && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y g++

USER ${NB_UID}

RUN pip install llama-index-readers-file pymupdf \
    llama-index-vector-stores-postgres \
    llama-index-embeddings-huggingface \
    llama-index-llms-llama-cpp \
    iprogress

RUN pip install llama-cpp-python

# RUN pip install psycopg2-binary pgvector asyncpg "sqlalchemy[asyncio]" greenlet

