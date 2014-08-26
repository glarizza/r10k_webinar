class { 'r10k':
  version           => '1.3.2',
  sources           => {
    'puppet' => {
      'remote'  => 'https://github.com/glarizza/r10k_webinar.git',
      'basedir' => "${::settings::confdir}/environments",
      'prefix'  => false,
    }
  },
  purgedirs         => ["${::settings::confdir}/environments"],
  manage_modulepath => true,
  modulepath        => "${::settings::confdir}/environments/\$environment/modules:/opt/puppet/share/puppet/modules",
}
