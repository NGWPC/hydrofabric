FROM ghcr.io/ngwpc/hydrofabric-base-image:latest
  
WORKDIR /home/hydrofabric
COPY . /home/hydrofabric

RUN R -e 'install.packages("ragg")'
RUN R -e 'install.packages("pkgdown")'
RUN R -e 'install.packages("devtools", dependencies = TRUE)'

RUN R -e 'devtools::install()'
 
CMD ["bash"]
