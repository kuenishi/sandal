.PHONY: sandal install

install:
	pip install ansible
	ansible-playbook all.yml -c local -i inventory

#ansible-playbook all.yml -i inventory --ask-sudo-pass

