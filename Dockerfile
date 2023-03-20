FROM jupyter/minimal-notebook



COPY setup-inicial.sh setup-inicial.sh
RUN ./setup-inicial.sh

COPY max/lab-git-scm-max.ipynb workstationMax/lab-git-scm-max.ipynb
COPY fritz/lab-git-scm-fritz.ipynb workstationFritz/lab-git-scm-fritz.ipynb
COPY oscar/lab-git-scm-oscar.ipynb workstationOscar/lab-git-scm-oscar.ipynb

RUN rm setup-inicial.sh