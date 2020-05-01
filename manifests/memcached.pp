class casheserver{
	package { 'memcached':
		ensure => present,
	}
}
