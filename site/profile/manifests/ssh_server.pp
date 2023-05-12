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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC6QVXq1zXnrrTzZXdC7YeDkGv+JVIU/5RTbAkPCxwv5LfpRaNQygR2SsLeuvu9Z8x5hKxTr3WCHJEErv0tE//GSnRVT+a627Tjw6SYLr0DaW/rMG4vxAxADTKpuNlqv1tNwBuCzBlnMw09C7aKZJMYsW0JmI9+PwKRpA8looSGqe4az92TfVPnycWxL9OvGcyVz4XT65l4q5YcyhJEl/pjqwkn8qPPohIpZypMXRKztcaAKHCVAJWn2dTrq6G0+3JuK59L3lpbVyjrW5iTBxKhV5GNWM8+bj8INvaozknkjK/SD3MoKra9Y0S1WRA+U8oF3O47pSJDqKhlwIo4yKCt',
	}  
}
