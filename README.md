dhcpv6y
=======
This is a fork of [dhcpkit][1], a DHCP framework written in Python3.
This fork implements a proof-of-concept server for the assignment of multiple addresses
to a specific client.
For this purpose the `CSVBasedFixedAssignmentOptionHandler` was adapted to allow the
parsing of CSV files with multiple address definitions. An example CSV file can be
found under `dhcpv6y/assign.csv`.

* This repository mostly contains the dhcpkit fork code, additional files are located
under `dhcpv6y/`.
* The modified files are `dhcpkit/ipv6/option_handlers/fixed_assignment.py` and
`dhcpkit/ipv6/option_handlers/csv.py`.

How to run
----------
* First make sure that netifaces and Python 3 is installed on your machine.
* Run `# python3 setup.py install`, this will install dhcpkit on your machine.
* Create a configuration file or use the example from `dhcpv6y/dhcpv6y.ini` Make sure the
network parameters are adapted to your environment.
* Create an assignment CSV file. You can use the script under `dhcpv6y/mkassignments.sh`.
Make sure the network parameters are adapted to your environment.
* Run the server with super user right in verbose mode: `# ipv6-dhcpd -vvv configuration.ini`.

```
Original dhcpkit description:
This package contains a flexible DHCP server written in Python 3.4+. This is not a simple plug-and-play DHCP server.
Its purpose is to provide a framework for DHCP services. It was written for ISPs to use in provisioning their customers
according to their own business rules. It can be integrated into existing ISP management and provisioning tools.

Currently only the IPv6 version is implemented.
```
[1]: https://github.com/sjm-steffann/dhcpkit
