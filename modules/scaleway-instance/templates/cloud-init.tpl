#cloud-config

# packages
package_update: true
package_upgrade: true

packages:
    %{ for package in packages ~}
    - ${package}
    %{ endfor ~}
    - git
    - htop
    - docker
    - docker-compose
    - vim

groups:
  - docker

# users
users:
  - name: username
    sudo: ALL=(ALL) NOPASSWD:ALL
    shell: /bin/bash
    groups: users, admin, docker
    ssh_authorized_keys:
      %{ for key in ssh_keys ~}
      - ${key}
      %{ endfor ~}

runcmd:
    - [ sh, -c, echo "=========hello world=========" ]

