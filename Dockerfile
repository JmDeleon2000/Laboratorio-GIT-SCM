FROM jupyter/minimal-notebook



COPY setup-inicial.sh setup-inicial.sh
RUN ./setup-inicial.sh
COPY max/lab-git-scm.ipynb workstationMax/lab-git-scm.ipynb
COPY fritz/lab-git-scm.ipynb workstationFritz/lab-git-scm.ipynb
RUN rm setup-inicial.sh