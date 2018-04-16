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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDG/7hRdvLymPHpd2kNY26kNYEh1ejlAVuzul69TX85YqjRKHVX344JY95dxkVIxxmcoHFiNMUg0FRAIlotqYrpkm3SKmkmSYbv8JimfqZIxF5/VDI8n3UbO0lWyQ9QH48gEMVvgu44p3C8xcPkkQffQY/tLgkFC4XX2/mT+WOMecSpZjqfDdI6e78Zl1hzjM4EzaIi/YSPVksQ+YEe/L5wD7muRSvIn4l3+VROsvV15O5GftkW2r1x/dtX5M2B0acgcehlTrBawNFZbmg40qwpDXE/YuxvlCB7YiUtK3E3r2j0DV71tw9++YtGU8hBHyVVK1UA+1RvYiuOSVAhVMCz',
	}  
}
