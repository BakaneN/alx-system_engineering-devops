#Using Puppet, create a manifest that kills a process named killmenow

exec { 'killmenow':
  command => 'pkill killmenow',
  onlyif  => 'pgrep -f  killmenow',
  path    => ['/root', '/usr/root'],
}