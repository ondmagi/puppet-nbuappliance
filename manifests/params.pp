# == Class: nbuappliance::params
#
# Parameters for the nbuappliance module
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { nbuappliance:
#  }
#
# === Authors
#
# Andreas Lindh <andreas@superblock.se>
#
# === Copyright
#
# Copyright 2014 Andreas Lindh, unless otherwise noted.
#
class nbuappliance::params inherits nbuappliance {

  $path_sizedatabuffers         = '/usr/openv/netbackup/db/config/SIZE_DATA_BUFFERS'
  $sizedatabuffers              = '262144'

  $path_numberdatabuffers       = '/usr/openv/netbackup/db/config/NUMBER_DATA_BUFFERS'
  $numberdatabuffers            = '256'

  $path_sizedatabuffersdisk     = '/usr/openv/netbackup/db/config/SIZE_DATA_BUFFERS_DISK'
  $sizedatabuffersdisk          = '1048576'

  $path_numberdatabuffersdisk   = '/usr/openv/netbackup/db/config/NUMBER_DATA_BUFFERS_DISK'
  $numberdatabuffersdisk        = '512'

  $path_sizedatabuffersft       = '/usr/openv/netbackup/db/config/SIZE_DATA_BUFFERS_FT'
  $sizedatabuffersft            = '262144'

  $path_numberdatabuffersft     = '/usr/openv/netbackup/db/config/NUMBER_DATA_BUFFERS_FT'
  $numberdatabuffersft          = '10'

  $path_cdnumberdatabuffers     = '/usr/openv/netbackup/db/config/CD_NUMBER_DATA_BUFFERS'
  $cdnumberdatabuffers          = '128'

  $path_cdsizedatabuffers       = '/usr/openv/netbackup/db/config/CD_SIZE_DATA_BUFFERS'
  $cdsizedatabuffers            = '524288'

  $path_cdwholeimagecopy        = '/usr/openv/netbackup/db/config/CD_WHOLE_IMAGE_COPY'
  $cdwholeimagecopy             = true

  $cdwholeimagecopy_enable      = $cdwholeimagecopy ? {
    false       => 'absent',
    true        => 'file',
    default     => 'file'
  }

  $path_cdupdateinterval        = '/usr/openv/netbackup/db/config/CD_UPDATE_INTERVAL'
  $cdupdateinterval             = '180'

  $path_ostcdbusyretrylimit     = '/usr/openv/netbackup/db/config/OST_CD_BUSY_RETRY_LIMIT'
  $ostcdbusyretrylimit          = '1500'

  $path_netbuffersz             = '/usr/openv/netbackup/NET_BUFFER_SZ'
  $netbuffersz                  = '1048576'

  $path_netbufferszrest         = '/usr/openv/netbackup/NET_BUFFER_SZ_REST'
  $netbufferszrest              = '1048576'

}
