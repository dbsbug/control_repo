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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC6JU/qipkfmg5QSGkf6d24jDaO/QbeW/x6n0AHYWtzKf8/qDFyaDhwBSBA5JClTLFYe1K7T1ZRoLB79IQqgi26Jl3yeNOGCB2EgZ9t4rO3JwvamE16DeBTNj2jzXwWz/7riZaXtdwBxBDUlU3GBpXq9xAzrggsxrKYp0nfyAQRP7dTcwoHy4lDEVmFtrkOHcvmVw6wR88lWzRjSy53Xz22t/0ABhfdpHUo8p2fzqBa83UGHWt5DS5RprFtuK1zZtzotd1xe8OuD5V8rnCrAoswH60KXobXXea2X9d+b3FnBzeuU/jQQMkblVLwUj5qSOcBMqHrXLAsFYAVnAAQJVmr',
	}  
}
