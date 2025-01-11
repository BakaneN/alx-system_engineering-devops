#Using Puppet, create a manifest that kills a process named killmenow

exec { 'killmenow':
  path     => '['/root', '/usr/root'],
  command  => 'pkill killmenow',
  onlyif   => 'pgrep killmenow',
}
