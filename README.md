<p align="center">
  <a href="https://hellofresh.com">
    <img width="120" src="https://www.hellofresh.de/images/hellofresh/press/HelloFresh_Logo.png">
  </a>
</p>


newrelic-plugins
=========

This role mimics "official" chef recipe to install newrelic plugins.
Only mysql plugin is now supported.

Requirements
------------

java

Role Variables
--------------



Example Playbook
----------------

    - hosts: servers
      vars:
        newrelic_mysql_servers:
          - name: "localhost"
            host: "localhost"
            metrics: "status,newrelic,master"
            mysql_user: "superuser"
            mysql_passwd: "superpassword"

      roles:
         - { role: ansible-newrelic-plugins, newrelic_plugin_list: ["mysql"] }


HelloFresh - More Than Food.
