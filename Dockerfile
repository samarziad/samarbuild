ARG NGINX_VERSION

#ENV NGINX_VERSION=${NGINX_VERSION}
FROM nginx:1.17.10

RUN echo "The nginx  is ${NGINX_VERSION}"
#Definr arg f0r name 

ARG NAME
ENV NAME ${NAME} 

ARG BUILDPLATFORM

#relce index.html file 
COPY index.html /usr/share/nginx/html/index.html 

#echo the name 
RUN echo "The Name is ${NAME}"

#relce NAME at run time 
RUN sed -i "s/{NAME}/${NAME}/g" /usr/share/nginx/html/index.html 
RUN echo "The nginx  is ${NGINX_VERSION}"
RUN sed -i "s/{NGINX_Versin}/${NGINX_VERSION}/g" /usr/share/nginx/html/index.html
RUN echo "The BUILDPLATFORM  is ${BUILDPLATFORM}"
#RUN sed -i "s/{BUILDPLATFORM}/${BUILDPLATFORM}/g" /usr/share/nginx/html/index.html  
#BUILDOS