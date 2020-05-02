ARG NGINX_VERSION 


FROM nginx:1.17.10

RUN echo "The nginx  is ${NGINX_VERSION}"
#Definr arg f0r name 
ARG name
#ARG BUILDPLATFORM

#relce index.html file 
COPY index.html /usr/share/nginx/html/index.html 

#echo the name 
RUN echo "The Name is ${name}"

#relce NAME at run time 
RUN sed -i "s/{NAME}/${name}/g" /usr/share/nginx/html/index.html 
RUN echo "The nginx  is ${NGINX_VERSION}"
RUN sed -i "s/{NGINX_Versin}/${NGINX_VERSION}/g" /usr/share/nginx/html/index.html
#RUN echo "The BUILDOS  is ${BUILDOS}"
#RUN sed -i "s/{BUILDOS}/${BUILDOS}/g" /usr/share/nginx/html/index.html  
#BUILDOS