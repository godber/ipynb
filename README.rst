ipynb - iPython Notebook Server for DesertPy Pandas Presentation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This is a rough first draft of a Salt Stack setup for an iPython Notebook
server to accompany a DesertPy Presentation about Pandas.

TODO::

  [ ] Start the ipython notebook automatically
  [ ] refactor the requirements out into projects so I can reuse for other
      presentations.

Launching IPython Notebook After Boot
=====================================

::


  # switch to ipynb user using sudo
  sudo su - ipynb
  # Launch with the desertpy profile in the virtualenv
  ~/ipynb-venv/bin/ipython notebook --profile=desertpy
