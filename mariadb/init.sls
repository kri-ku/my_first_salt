install_client_and_server:
  pkg.installed:
    - pkgs:
      - mariadb-client
      - mariadb-server

/tmp/maria.sql:
  file.managed:
    - mode: '0755'
    - source: salt://mariadb/sql_commands.sql

'cat /tmp/maria.sql | sudo mariadb -u root':
  cmd.run:
    - unless: "echo 'show databases;' | sudo mariadb -u root | grep traakki"
