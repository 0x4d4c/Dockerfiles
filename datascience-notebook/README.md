# Jupyter Notebook Data Science Stack
Extends the [Jupyter Notebook Data Science Stack](https://github.com/jupyter/docker-stacks/tree/master/datascience-notebook) (jupyter/datascience-notebook).

### Additional packages/software/tools
#### Python
 - [Elasticsearch Client](https://elasticsearch-py.readthedocs.org/en/master/)
 - [PyMongo](https://api.mongodb.org/python/current/)
 - [NetworkX](https://networkx.github.io/)
 - [Requests](http://docs.python-requests.org/en/master/)
 - [tld](https://pypi.python.org/pypi/tld)
#### Notebook extensions
 - [Calico Cell Tools](https://github.com/Calysto/notebook-extensions)
 - [Calico Document Tools](https://github.com/Calysto/notebook-extensions)
 - [Calico Spell Check](https://github.com/Calysto/notebook-extensions)
 - [Execute Time](https://github.com/ipython-contrib/IPython-notebook-extensions/tree/master/nbextensions/usability/execute_time)
 - [Python Markdown](https://github.com/ipython-contrib/IPython-notebook-extensions/tree/master/nbextensions/usability/python-markdown)

### Configuration changes
 - Notebook base URL is set to `/jupyter` (`c.NotebookApp.base_url = '/jupyter'`).
 - Notebook directory is set to `/notebooks` (`c.NotebookApp.notebook_dir = '/notebooks'`).
 - `/notebooks` is a `VOLUME`.

