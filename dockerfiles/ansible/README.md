# Dockerfile to build Ansible image

## Build

- See [build instruction](../README.md)

## Verify the image

- Run command to check version

```
docker run -it --rm debug_ansible bash
root@3fcf66819f9d:/# ansible --version
```

## Run the playbook

```
docker run --rm \
-v "$(pwd)"/demo:/demo debug_ansible
 ansible-playbook -i /demo/inventory.ini /demo/demo_playbook.yml
```
