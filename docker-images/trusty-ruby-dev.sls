trusty-ruby-dev:
   docker.pulled:
     - name: chadsbrown/trusty-ruby-dev
     - require_in: trusty-ruby-dev-container
 
trusty-ruby-dev-container:
   docker.installed:
     - name: trusty-ruby-dev
     - hostname: trusty-ruby-dev
     - image: chadsbrown/trusty-ruby-dev
     - require_in: trusty-ruby-dev
 
trusty-ruby-dev:
   docker.running:
     - container: trusty-ruby-dev
