FROM jupyter/datascience-notebook
MAINTAINER Martin Lambertz <martin@0x4d4c.xyz>

RUN echo >> /home/jovyan/.jupyter/jupyter_notebook_config.py && \
    echo "c.NotebookApp.base_url = '/jupyter'" >> /home/jovyan/.jupyter/jupyter_notebook_config.py && \
    echo "c.NotebookApp.notebook_dir = '/notebooks'" >> /home/jovyan/.jupyter/jupyter_notebook_config.py && \
    git clone https://github.com/ipython-contrib/IPython-notebook-extensions /tmp/IPython-notebook-extensions && \
    cd /tmp/IPython-notebook-extensions/nbextensions/ && \
    jupyter nbextension install --user usability/python-markdown && \
    jupyter nbextension enable python-markdown/main && \
    jupyter nbextension install --user usability/execute_time && \
    jupyter nbextension enable execute_time/ExecuteTime && \
    jupyter nbextension install --user --quiet https://bitbucket.org/ipre/calico/downloads/calico-cell-tools-1.0.zip && \
    jupyter nbextension enable calico-cell-tools && \
    jupyter nbextension install --user --quiet https://bitbucket.org/ipre/calico/downloads/calico-document-tools-1.0.zip && \
    jupyter nbextension enable calico-document-tools && \
    jupyter nbextension install --user --quiet https://bitbucket.org/ipre/calico/downloads/calico-spell-check-1.0.zip && \
    jupyter nbextension enable calico-spell-check && \
    rm -rf /tmp/IPython-notebook-extensions && cd - > /dev/null && \
    pip install --user \
        elasticsearch \
        networkx \
        pymongo \
        requests \
        tld

VOLUME ["/notebooks"]

