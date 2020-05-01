class userpolicy{
    group { 'webadmins':
        ensure    => 'present',
        gid       => '2000',
    }
    user { 'janet':
        ensure			   =>present,
        home               => '/home/janet',
        comment            => 'Janet Janet',
        groups             => ['developers', 'sudo'],
        password           => '!!',
        password_max_age   => '99999',
        password_min_age   => '0',
        shell              => '/bin/bash',
        uid                => '1010',
        }
    user { 'brady':
        ensure           => present,
        home             => '/home/brady',
        comment          => 'Bob Bob',
        groups           => ['developers', 'sudo'],
        password         => '!!',
        password_max_age => '99999',
        password_min_age => '0',
        shell            => '/bin/bash',
        uid              => '1011',
        }

    user { 'tom':
        ensure           	 => present,
        home             => '/home/tom',
        comment          => 'Tim Tim',
        password         => '!!',
        password_max_age => '99999',
        password_min_age => '0',
        shell            => '/bin/bash',
        uid              => '1014',
        }
}
