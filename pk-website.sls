pk-user:
  user.present:
      - name: pkops
      - home: /home/pkops

git-client-package:
   pkg.installed:
      - name: git


pk-source:
   git.latest:
      - name: git@github.com:kattaprasanth/salt-example-website.git
      - rev: master
      - target: /home/pkops/pkwebsite
