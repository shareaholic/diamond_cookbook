default['diamond']['user'] = 'diamond'
default['diamond']['group'] = value_for_platform_family(
  'rhel' => 'nobody',
  'default' => 'nogroup'
)
default['diamond']['install_method'] = 'source' # file | package | source
default['diamond']['package_name'] = 'diamond'
default['diamond']['version'] = ''
default['diamond']['graphite_server_role'] = nil
default['diamond']['graphite_server'] = 'graphite'
default['diamond']['graphite_port'] = '2003'
default['diamond']['graphite_pickle_port'] = '2004'
default['diamond']['statsd_host'] = 'localhost'
default['diamond']['statsd_port'] = '8125'
default['diamond']['path_prefix'] = 'servers'
default['diamond']['hostname_method'] = 'smart'
default['diamond']['interval'] = '300'
default['diamond']['handlers'] = 'diamond.handler.graphite.GraphiteHandler, diamond.handler.archive.ArchiveHandler'
if node['platform'] == 'ubuntu' && node['platform_version'].to_f == 22.04
  default['diamond']['source_repository'] = 'https://github.com/shareaholic/python-diamond.git'
  default['diamond']['source_reference'] = 'ubuntu22'
else
  default['diamond']['source_repository'] = 'https://github.com/python-diamond/Diamond.git'
  default['diamond']['source_reference'] = 'master'
end
default['diamond']['source_path'] = '/usr/local/share/diamond_src'
default['diamond']['add_collectors'] = %w(cpu diskspace diskusage loadavg memory network vmstat tcp)
