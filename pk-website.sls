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

pk-website-install:
   cmd.wait:
      - name: npm install
      - cwd: /home/pkops/pkwebsite
      - watch:
        - git: pk-source

pk-build-script:
   cmd.wait:
      - name: npm run-script build
      - cwd: /home/pkops/pkwebsite
      - watch:
        - git: pk-source
