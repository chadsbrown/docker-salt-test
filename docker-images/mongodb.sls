mongodb-image:
   docker.pulled:
     - name: tutum/mongodb
     - require_in: mongodb-container
 
mongodb-container:
   docker.installed:
     - name: tmongodb
     - hostname: mongodb
     - image: tutum/mongodb
     - require_in: mongodb
 
mongodb:
   docker.running:
     - container: tmongodb
     - port_bindings:
            "27017/tcp":
                HostIp: ""
                HostPort: "27017"
