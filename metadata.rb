name             'motd'
maintainer       'Rackspace US, Inc.'
maintainer_email 'ryan.richard@rackspace.com'
license          'All rights reserved'
description      'Installs/Configures motd'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "motd-tail", ">= 1.2.0"
