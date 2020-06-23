gcc-c++:
   pkg:
   - installed

make:
  pkg:
  - installed

# below example for debin os not for rpm based one
#nodejs-repo:
#   pkgrepo.managed:
#        - humanname: NodeJS nodesource repo
#        - name: https://rpm.nodesource.com/setup_14.x
#        # - key_url: add here if any for centos/ubuntu

nodejs-repo:
   pkgrepo.managed:
     - humanname: NodeJS nodesource repo
     - name: nodejs
     - file: /etc/yum.repo.d/nodesource.repo
     - baseurl: https://rpm.nodesource.com/setup_14.x

nodejs:
   #pkg.installed: []
   pkg:
     - installed
