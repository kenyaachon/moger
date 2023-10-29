FROM python:3.10.13-bullseye


ARG MOGER_CLI_HOME=/usr/local/moger
WORKDIR ${MOGER_CLI_HOME}
RUN pip install poetry==1.6.1

COPY . .

# Installs the moger python package globally
RUN cd ${MOGER_CLI_HOME} && \
    poetry config virtualenvs.create false && \  
    poetry install

ENV PYTHONPATH=/usr/local/moger

ENTRYPOINT ["moger"]