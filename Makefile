.PHONY: sandal install ssh_keys ansible


~/.ssh/id_rsa.pub:
	ssh-keygen

GREP=$(grep "`cat ~/.ssh/id_rsa.pub`" ~/.ssh/authorized_keys)
ssh_keys: ~/.ssh/id_rsa.pub
	ifneq ($(GREP), "")
		cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
		echo "added .ssh/id_rsa.pub to authorized_keys"
	endif
	ssh localhost ls

install:
	pip install ansible
	ansible-playbook all.yml -i inventory --ask-sudo-pass
