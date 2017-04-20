<p align="center">
  <img src="https://www.cloudbolt.io/wp-content/uploads/CloudBolt_hlogo_blue_cloud_w_text-small.png" alt="CloudBolt">
</p>

Try out CloudBolt in Vagrant!

## Getting Started

### Basic Installation

* Clone the repository
* `vagrant up` in repository direcotry
* Access CloudBolt via https://localhost:8443
* Request a license from https://cloudbolt.io/license-request

### Updated CloudBolt

The version of CloudBolt in the Vagrant box is likely out of date so we update it during provisioning.
The update is downloaded to the root of this repo and then installed. If you want to manually
download the update package all you have to do is save it as `cloudbolt-upgrader-latest.tgz`.
If you decide you want an even knewer update installed then just delete the one downloaded
earlier and run `vagrant reload --provision`.

