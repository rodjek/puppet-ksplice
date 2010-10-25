define ksplice::uptrack($access_key, $ensure="present") {
    exec { "Set Ksplice Uptrack access key":
        path    => "/usr/bin:/bin",
		command => "echo 'uptrack uptrack/accesskey string ${access_key}' | debconf-set-selections",
        unless  => "debconf-show uptrack | grep 'uptrack/accesskey: ${access_key}'"
    }

	package { "uptrack":
		ensure  => $ensure,
		require => Exec["Set Ksplice Uptrack access key"],
	}
}
