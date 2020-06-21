class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDdSbGU6+KxvbLKW3wwz8YtUaj9TbWzLXicXmPJEXpSlt7erctytoKGXM8xZJ8I/ya9FpDhs0qTXcJMcWAOsb5dqNby9+Yb9W7bzoqmk0KxR0VVZ0LT5pdHaE1eQZYOiKALsOuAD5/HkIyrL7GSE1tFZHu8PX7TM78fk9e1PEIsf0cfirg5sdutUpVCwBIGxJwCn8xY5+/DzdaWVrP/D/v5ZbGwdso5mkp/DnCcZB0kXRzIG83mOHNJwXoPz1IeK86mmkkJlxywgh7cJjEIHmRuiZWRFkwEkf9AXHIegArXivLt6ZE0A6VjM3g5Cn/PziaD3KXE6ZmD5gtiq3/kar8p',
	}  
}
