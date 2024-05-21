# YOLO
This project is a scalable e-commerce platform designed with a microservices architecture. It includes a user interface built with React for a responsive and interactive experience, and a backend developed using Express to handle API operations. MongoDB is used as the database to manage and store data. The project highlights how microservices can be effectively employed in building robust e-commerce solutions.

## Requirements
Make sure that you have the following installed:
- [node](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-18-04) 
- npm 
- [MongoDB](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/) and start the mongodb service with `sudo service mongod start`

### Navigate to the Client Folder 
 `cd client`

### Run the following command to install the dependencies 
 `npm install`

### Run the following to start the app
 `npm start`

### Open a new terminal and run the same commands in the backend folder
 `cd ../backend`

 `npm install`

 `npm start`

 #### Go ahead and add a product (note that the price field only takes a numeric input)

## Ansible
- Ansible is an open-source automation tool used for configuring and managing computer systems. It provides a simple yet powerful platform for automating tasks such as application deployment, configuration management, and infrastructure orchestration.
- Ansible works by connecting to nodes (servers or devices) via SSH or other remote APIs and executing tasks defined in YAML format. It uses a declarative language to describe the desired state of the system, allowing users to define configurations in a human-readable format.

### Folder Structure
```
ansible/
├── inventories/          # Inventory files containing lists of hosts
│   ├── production/
│   │   └── hosts         # Inventory file for production environment
│   └── staging/
│       └── hosts         # Inventory file for staging environment
├── playbooks/            # Ansible playbooks
│   ├── webserver.yml     # Example playbook for setting up a web server
│   └── database.yml      # Example playbook for setting up a database server
└── roles/                # Ansible roles directory
    ├── common/           # Common role for all servers
    │   ├── tasks/        # Tasks to be executed for the common role
    │   ├── handlers/     # Handlers triggered by tasks in common role
    │   ├── files/        # Configuration files used by the common role
    │   ├── templates/    # Jinja2 templates used by the common role
    │   └── defaults/     # Default variables for the common role
    ├── webserver/       # Role for setting up a web server
    │   ├── tasks/
    │   ├── handlers/
    │   ├── files/
    │   ├── templates/
    │   └── defaults/
    └── database/         # Role for setting up a database server
        ├── tasks/
        ├── handlers/
        ├── files/
        ├── templates/
        └── defaults/
```
- Inventory: An inventory file contains a list of hosts that Ansible manages. It defines which hosts are part of which groups and allows you to assign variables to these hosts.

- Playbooks: Playbooks are Ansible's configuration, deployment, and orchestration language. They are expressed in YAML format and describe a set of tasks to be executed on remote hosts.

- Roles: Roles are a way to organize playbooks and make them easier to reuse and share. A role encapsulates a set of tasks, handlers, files, templates, and variables in a well-defined directory structure.

### Getting started with Ansible
#### Prerequisites
Before you begin, ensure you have the following prerequisites installed on your system:

- [Vagrant](https://www.vagrantup.com/downloads.html)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html)

#### Set up
1. Clone repository:
```sh
git clone https://github.com/m-murithi/yolo.git
```
2. Run Vagrant:
- Start the Vagrant VM by running the following command in your terminal:
```sh
vagrant up
```
This command will create and configure the virtual machine according to the settings defined in the Vagrantfile.
3. SSH into the VM:
- Once then VM is up and running, SSH into it using the following command:
```sh
vagrant ssh
```
You will now have access to the VM's terminal
4. Run Ansible Playbook:
- Run the Ansible playbook to provision and configure the VM:
```
ansible-playbook playbook.yml
```
This playbook will execute the tasks defined in playbook.yml, including setting up Docker, Docker Compose, and any other configurations specified.
5. Access the Application
Once the playbook has been successfully executed, you can access the application by opening a web browser and navigating to the appropriate URL or port, depending on the project setup.

**The process detailing steps taken can be found in explanation.md file on the root folder**
