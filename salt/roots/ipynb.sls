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
      - libfreetype6-dev
      - libpng-dev
      - libjpeg8-dev
      - libatlas-base-dev
      - liblapack-dev
      - libxml2-dev
      - libxslt1-dev
      - uuid-dev
      - gfortran
      - python-virtualenv
      - virtualenvwrapper
      - python-pip
      - vim-nox
      - tmux
      - git

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

/home/ipynb/ipynb-venv:
  virtualenv.managed:
    - system_site_packages: True
    - runas: ipynb
    - requirements: salt://ipynb-requirements.txt
    - require:
      - user: ipynb
      - pkg: ipynb-pkgs

https://github.com/pydata/pydata-book.git:
  git.latest:
    - target: /home/ipynb/data/pydata-book
    - runas: ipynb
    - require:
      - user: ipynb
      - pkg: ipynb-pkgs

https://github.com/godber/ipython-profile_desertpy.git:
  git.latest:
    - target: /home/ipynb/.ipython/profile_desertpy
    - runas: ipynb
    - require:
      - user: ipynb
      - pkg: ipynb-pkgs
