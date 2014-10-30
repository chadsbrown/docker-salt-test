/etc/salt/master:
    file.managed:
        - source: salt://config/saltmaster/master
        - user: root
        - group: root
        - mode: 644

salt-master:
    service.running:
        - enable: True
        - watch:
            - file: /etc/salt/master
