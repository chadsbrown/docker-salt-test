jenkins-image:
   docker.pulled:
     - name: chadsbrown/jenkins-jjb-base
     - require_in: jenkins-container
 
jenkins-container:
   docker.installed:
     - name: jenkins
     - hostname: jenkins
     - image: chadsbrown/jenkins-jjb-base
     - require_in: jenkins
 
jenkins:
   docker.running:
     - container: jenkins
     - port_bindings:
            "8080/tcp":
                HostIp: ""
                HostPort: "8080"
