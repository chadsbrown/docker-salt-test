base:
  '*':
    - provisioner.docker
  'roles:toolset':
    - match: grain
    - provisioner.saltmaster
    - docker-images.jenkins
  'roles:search':
    - match: grain
    - docker-images.mongodb
