name             'motd'
maintainer       'Rackspace US, Inc.'
maintainer_email 'rackspace-cookbooks@rackspace.com'
license          'Apache 2.0'
description      'Installs/Configures motd'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.0'

recipe		  "motd", "Updates/adds motd file based on platform family with useful node data"

depends "motd-tail", "~> 2.0"
