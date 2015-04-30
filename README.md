# sandal
Local environment automatic generation; we can't be barefoot any more but boots are too much and bootstrapping is hard.

## Prerequisites

Python, Ansible

# Bootstrap

All my dev env

```sh
$ ansible-playbook all.yml -c local -i inventory --ask-sudo-pass
```

Install Basho OTP only

```sh
$ ansible-playbook install-otp.yml -c local -i inventory --ask-sudo-pass
```

This installs Basho-patched R15, R16 and 17.


# TODOs

setup RT env

# Thanks

Java related playbooks are from https://github.com/vrischmann/ansible-role-java .
