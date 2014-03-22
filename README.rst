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


  # switch to root
  sudo -i
  # switch to ipynb user
  su - ipynb
  # activate the python virtualenv
  . /home/ipynb/ipynb-venv/bin/activate
  # Launch with the desertpy profile
  ipython notebook --profile=desertpy
