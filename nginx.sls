install_nginx:
  pkg.installed:
    - name: nginx

transfer_nginx:
  file.managed:
    - name: /tmp/nginx.tar.gz
    - source: salt://files/nginx-1.22.1.tar.gz
    - makedirs: True
    - mode: 644
    - user: root
    - group: root
    - replace: True
