puppet-ksplice
==============

Installs and configures [Ksplice Uptrack](http://www.ksplice.com/uptrack/).
This module assumes that you already have the package available via APT.
Most people have their own APT module that handles repository setup or are
using some sort of package caching proxy like approx.

Usage
-----

    ksplice::uptrack { $fqdn:
        access_key  => "<access key>",
        ensure      => "(present|absent)", (default: present)
    }

