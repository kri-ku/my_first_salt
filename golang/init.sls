/usr/local/go:
  file.recurse:
    - source: salt://golang/go
    - include_empty: true
    - dir_mode: '0755'
    - file_mode: '0755'

/tmp/script:
  file.managed:
    - source: salt://golang/e_variables
    - mode: '0755'
    - unless:
      - /usr/local/go

set_environment_variables:
  cmd.script:
    - name: e_variables
    - source: /tmp/script
    - onchanges:
      - file: /tmp/script
