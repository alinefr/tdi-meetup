name 'meetup'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures meetup'
long_description 'Installs/Configures meetup'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)
depends 'docker', '~> 2.16.0'
depends 'docker_compose', '~> 0.1.1'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/meetup/issues'

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/meetup'
