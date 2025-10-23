FROM ghcr.io/ngwpc/hydrofabric-base-image:latest
  
WORKDIR /home/hydrofabric
COPY . /home/hydrofabric

RUN R -e 'install.packages("ragg", repos = "https://cloud.r-project.org")'
RUN R -e 'install.packages("pkgdown", repos = "https://cloud.r-project.org")'
RUN R -e 'install.packages("devtools", repos = "https://cloud.r-project.org", dependencies = TRUE)'

RUN R -e 'devtools::install()'
 
CMD ["bash"]
