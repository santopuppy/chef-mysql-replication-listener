# chef-mysql-replication-listener

Installs mysql-replication-listener

## Supported Platforms

Tested on Ubuntu 12.04

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['listener']['git_repository']</tt></td>
    <td>String</td>
    <td>git repository for mysql-replication-listener's source</td>
    <td><tt>'https://github.com/SponsorPay/mysql-replication-listener.git'</tt></td>
  </tr>
  <tr>
    <td><tt>['listener']['git_revision']</tt></td>
    <td>String</td>
    <td>git branch for mysql-replication-listener's source</td>
    <td><tt>'master'</tt></td>
  </tr>
  
</table>

## Usage

### mysql-replication-listener::default

Include `mysql-replication-listener` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[mysql-replication-listener::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Lester Celestial (<lestercsp@sourcepad.com>)
