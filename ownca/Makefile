wheels:
	apt-get update -y
	apt-get upgrade -y
	apt-get install -y --no-install-recommends python3 python3-distutils python3-dev python3-pip libssl-dev openssl build-essential pkg-config openssh-client
	mkdir -p /opt/wheels 
	pip3 wheel -v -r /ownca/requirements.txt --wheel-dir=/opt/wheels

setup:
	apt-get update -y
	apt-get upgrade -y
	apt-get install -y --no-install-recommends python3 python3-distutils python3-pip openssl
	apt-get -y autoremove
	apt-get clean
	pip3 install -v --no-index --find-links=/opt/wheels -r /ownca/requirements.txt

	apt-get -y autoremove
	apt-get -y clean
	apt-get -y autoclean

	rm -rf /opt/wheels


