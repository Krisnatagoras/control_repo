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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDkgiT5X5hW6TCfTeLn/217Hooj7spI+asDnasJOSHLuHZAxV/r7neuLWsDULKZn8wdzgAmZyV41Z9YhyuiJEUlSf5KubX1NKh9OnvQNy3epgC4VMy2GCujR40mq3MeRC6cIHEGfzZBpxRbIJR5PxuUWPM52JhcanomfrEsTTYFa7QjvqfeXEJiNUOZ8JoPpMMTgzQvOr3axgYq/amMGc3at13+cdeIRcNzkectVqYDV8x9Mh9uwkVMmUwBaqAOMAYu0xllJAFFcSN8Ds5Hgib9rUO1oKFrASX4a8NyG3fdZdoD/uxe+l4yVYieoyO6r7ps7RvDTaeKhUqQCXIOyd4R',
	}  
}
