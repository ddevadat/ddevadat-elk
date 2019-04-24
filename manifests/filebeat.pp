class elk::filebeat{
  include elastic_stack::repo
  
  package{ 'filebeat':
    ensure => present,
  
  }

  service{'filebeat':
    ensure => present,
    enable => true,
    require => Package['filebeat']
  }

}
