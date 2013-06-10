ipynb-pkgs:
  pkg:
    - installed
    - names:
      - build-essential
      - ipython
      - ipython-notebook
      - python-numpy
      - python-scipy
      - python-tornado
      - python-matplotlib
      - python-zmq
      - python-dev
      - python-virtualenv
      - virtualenvwrapper
      - python-pip
      - vim-nox

ipynb:
  user.present:
    - uid: 2000
    - gid: 2000
    - home: /home/ipynb
    - shell: /bin/bash
    - require:
      - group: ipynb
  group.present:
    - gid: 2000
