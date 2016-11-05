http://anteaya.info/blog/2013/09/01/installing-devstack-with-vagrant/


vi /opt/stack/horizon/horizon/test/settings.py

ALLOWED_HOSTS = [
    '.example.com',  # Allow domain and subdomains
    '.example.com.',  # Also allow FQDN and subdomains
]

ALLOWED_HOSTS = ['*']

ALLOWED_HOSTS = [
    '192.168.42.11',  # Allow domain and subdomains
    '.example.com.',  # Also allow FQDN and subdomains
]
192.168.42.11

vi /opt/stack/horizon/openstack_dashboard/settings.py

/usr/local/lib/python2.7/dist-packages/django/conf/global_settings.py
http://docs.openstack.org/icehouse/install-guide/install/yum/content/install_dashboard.html
./opt/stack/horizon/openstack_dashboard/local/local_settings.py