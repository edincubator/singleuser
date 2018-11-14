FROM jupyterhub/singleuser:0.9

USER root

RUN echo "deb https://dl.bintray.com/wangzw/deb trusty contrib" | sudo tee /etc/apt/sources.list.d/bintray-wangzw-deb.list
RUN apt-get update --allow-unauthenticated --allow-insecure-repositories 
RUN apt-get install --allow-unauthenticated libhdfs3 libhdfs3-dev
