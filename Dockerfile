
FROM python:latest
RUN pip install heat-translator
COPY tosca_helloworld.yaml /
COPY heat_translator_logging.conf /usr/local/lib/python3.5/site-packages/translator/conf/
COPY heat_translator_logging.conf /usr/local/lib/python2.7/site-packages/translator/conf/

CMD [heat-translator --template-file tosca_helloworld.yaml]

