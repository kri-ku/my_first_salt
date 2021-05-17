install_ufw:
  pkg.installed:
    - pkgs:
      - ufw

/etc/ufw/ufw.conf:
  file.managed:
    - source: salt://ufw/ufw.conf

/etc/ufw/user6.rules:
  file.managed:
    - source: salt://ufw/user6.rules

/etc/ufw/user.rules:
  file.managed:
    - source: salt://ufw/user.rules

ufw.service:
  service.running:
    - watch:
      - file: /etc/ufw/user6.rules
