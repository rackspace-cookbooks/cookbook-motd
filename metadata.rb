name             'rackspace_motd'
maintainer       'Rackspace US, Inc.'
maintainer_email 'rackspace-cookbooks@rackspace.com'
license          'Apache 2.0'
description      'Installs/Configures motd'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.2'

recipe 'default.rb', 'Updates/adds motd file based on platform family with useful node data'
recipe 'debian.rb', 'confgures /etc/motd.tail instead of /etc/motd'
