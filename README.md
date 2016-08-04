<p align="center">
  <img src="https://www.cloudbolt.io/wp-content/uploads/CloudBolt_hlogo_blue_cloud_w_text-small.png" alt="CloudBolt">
</p>

Try out CloudBolt in Vagrant!

## Getting Started

### Basic Installation

* Clone the repository
* 'vagrant up' in repository direcotry
* Workaround for current known issue

  CB needs to be upgraded to work with the new license type

  'vagrant ssh'

  'sudo su -'

  'wget http://downloads.cloudbolt.io/cloudbolt-upgrader-latest.tgz'

  'tar xvzf cloudbolt-upgrader-latest.tgz'

  'cd to the coudbolt upgrade dir'

  './upgrade_cloudbolt.sh'
* Access CloudBolt via https://localhost:8443
* Request a license from https://cloudbolt.io/license-request
