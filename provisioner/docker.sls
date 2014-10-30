docker-apt-sources:
  pkgrepo:
    - managed
    - name: deb http://get.docker.io/ubuntu docker main
    - key_url: https://get.docker.io/gpg

/etc/init/docker.conf:
  file.managed:
    - source: salt://config/docker/docker.conf
    - user: root
    - group: root
    - mode: 644

python-pip:
  pkg.installed

docker-py:
  cmd:
    - run
    - name: pip install docker-py

docker:
  service.running
