#Obingo77| 1 author (Obrien Makenzi)
#FROM golang:latest

#RUN mkdir /build
#WORKDIR /build

#RUN export GO111MODULE=on
#RUN go get github.com/obingo77/haysapi/master
#RUN cd /build && git clone https:/github.com/obingo77/haysapi.git

#RUN cd /build/haysapi/master && go build

#EXPOSE 8080

#ENTRYPOINT [ "/build/haysapi/master/master" ]

# Use existing docker image as base here
# The base go-image
FROM golang:1.14-alpine
 
# Create a directory for the app
RUN mkdir /app
 
# Copy all files from the current directory to the app directory
COPY . /app
 
# Set working directory
WORKDIR /app
 
# Run command as described:
# go build will build an executable file named server in the current directory
RUN go build -o server . 
 
# Run the server executable
CMD [ "/app/server" ]