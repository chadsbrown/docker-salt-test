mongodb-image:
   docker.pulled:
     - name: mongodb/mongodb
     - require_in: mongodb-container
 
mongodb-container:
   docker.installed:
     - name: mongodb
     - hostname: mongodb
     - image: mongodb/mongodb
     - require_in: mongodb
 
mongodb:
   docker.running:
     - container: mongodb
     - port_bindings:
            "27017/tcp":
                HostIp: ""
                HostPort: "27017"
