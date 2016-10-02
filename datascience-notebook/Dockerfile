FROM jupyter/datascience-notebook
MAINTAINER Martin Lambertz <martin@0x4d4c.xyz>

USER root
RUN apt-get -qy update && \
    DEBIAN_FRONTEND=noninteractive apt-get -qy install \
        libpq5 \
        libpq-dev && \
    mkdir -p /notebooks && chown -R jovyan /notebooks
USER jovyan

RUN echo >> /home/jovyan/.jupyter/jupyter_notebook_config.py && \
    echo "c.NotebookApp.base_url = '/jupyter'" >> /home/jovyan/.jupyter/jupyter_notebook_config.py && \
    echo "c.NotebookApp.notebook_dir = '/notebooks'" >> /home/jovyan/.jupyter/jupyter_notebook_config.py && \
    pip install https://github.com/ipython-contrib/jupyter_contrib_nbextensions/tarball/master && \
    /opt/conda/bin/jupyter-contrib-nbextension install --user && \
    jupyter nbextension enable execute_time/ExecuteTime && \
    jupyter nbextension enable python-markdown/main && \
    jupyter nbextension enable scratchpad/main && \
    jupyter nbextension enable table_beautifier/main && \
    jupyter nbextension install --user https://bitbucket.org/ipre/calico/downloads/calico-cell-tools-1.0.zip && \
    jupyter nbextension enable calico-cell-tools && \
    jupyter nbextension install --user https://bitbucket.org/ipre/calico/downloads/calico-document-tools-1.0.zip && \
    jupyter nbextension enable calico-document-tools && \
    jupyter nbextension install --user https://bitbucket.org/ipre/calico/downloads/calico-spell-check-1.0.zip && \
    jupyter nbextension enable calico-spell-check && \
    pip install --user \
        elasticsearch \
        networkx \
        psycopg2 \
        pymongo \
        requests \
        tld

VOLUME ["/notebooks"]

