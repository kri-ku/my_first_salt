# asennus
nginx:
  pkg.installed

#localhostin kotisivun vaihto
/var/www/html/index.html:
  file.managed:
    - source: salt://nginx/index.html

# käyttäjän kotihakemiston ottaminen käyttöön
/etc/nginx/sites-available/default:
  file.managed:
    - source: salt://nginx/default

# public_html tiedoston luominen valmiiksi uusille käyttäjille
/etc/skel/public_html:
  file.recurse:
    - source: salt://nginx/public_html

#uudelleenkäynnistys jos default-tiedosto muuttuu
nginx.service:
  service.running:
    - watch:
      - file: /etc/nginx/sites-available/default
