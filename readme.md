
Build the image using 

        docker build -t testimage:latest .

Generate a container from the image using 

        docker run -d --rm --name buster -p 8080:8080 testimage:latest