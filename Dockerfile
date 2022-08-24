FROM continuumio/miniconda3

LABEL maintainer="Anish Shukla"


RUN git clone https://github.com/Shuklanish/mle-training.git

COPY env.yml env.yml

RUN conda env create -n housing -f env.yml



RUN cd mle-training\
    && conda run -n housing python3 setup.py install\
    && cd dir/src/housing\
    && conda run -n housing python3 ingest_data.py\
    && conda run -n housing python3 train.py\
    && conda run -n housing python3 score.py


RUN cd mle-training\
    && cd test/unit_test\
    && conda run -n housing python3 ingest_data_test.py\
    && conda run -n housing python3 train_test.py\
    && conda run -n housing python3 score_test.py
    
RUN cd mle-training\
    && conda run -n housing pytest test/functional_test