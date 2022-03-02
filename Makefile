all: update

provision: galaxy
	ansible-playbook --vault-password-file /home/arch/.ansible-pass playbooks/provision.yml -vv
	ansible-playbook --vault-password-file /home/arch/.ansible-pass playbooks/update.yml -vv

update:
	ansible-playbook --vault-password-file /home/arch/.ansible-pass playbooks/update.yml -vvv

galaxy:
	ansible-galaxy install -r requirements.yml --force
