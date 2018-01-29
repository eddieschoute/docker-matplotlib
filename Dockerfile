FROM python:3

COPY pip.requirements.txt /pip.requirements.txt

# ADD repositories /etc/apk/repositories # if install numpy with add instead of pip

RUN pip install -r pip.requirements.txt
	# apk --no-cache add musl-dev linux-headers gfortran g++ jpeg-dev zlib-dev cairo-dev \
    #&& apk add py-matplotlib # better install with pip
    #&& apk add --update py-numpy@community # better install with pip
