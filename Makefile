all: update

provision:
	ansible-playbook --vault-password-file /home/arch/.ansible-pass provision.yml -vv
	ansible-playbook --vault-password-file /home/arch/.ansible-pass update.yml -vv

update:
	ansible-playbook --vault-password-file /home/arch/.ansible-pass update.yml -vv

