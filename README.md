motd Cookbook
=============
- This cookbook will set the motd for linux systems.
- Orignally based on the [motd-cookbook](https://github.com/opscode-cookbooks/motd-tail)

Requirements
------------
#### Platform Families
- `debian`,`rhel`

#### Other Cookbooks
- `rackspace_motd_tail` - Provides motd for ubuntu based systems

Attributes
----------
- `default[:rackspace_motd][:additional_text]` - Additional text to add to the end of the motd.tail (e.g. unauthorized access banner).

Usage
-----
#### motd::default
Just include `rackspace_motd` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[rackspace_motd]"
  ]
}
```
Testing
-------
Please see testing section of the [contributing](https://github.com/rackspace-cookbooks/contributing/blob/master/CONTRIBUTING.md) guide.

Contributing
------------
Please see testing section of the [contributing](https://github.com/rackspace-cookbooks/contributing/blob/master/CONTRIBUTING.md) guide.

License and Authors
-------------------
Author:: Ryan Richard ryan.richard@rackspace.com

Copyright:: 2013, Rackspace, US Inc

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
