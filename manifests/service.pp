class ssh::service {
  service { 'sshd':
    ensure     => running,
    name       => $::ssh::params::ssh_service_name,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class['ssh::config'],
  }
}
