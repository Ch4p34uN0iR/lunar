# audit_biosdevname
#
# Refer to Section(s) 6.17 Page(s) 64 SLES 11 Benchmark v1.0.0
#.

audit_biosdevname () {
  if [ "$os_name" = "Linux" ]; then
    if [ "$os_vendor" = "SuSE" ]; then
      funct_verbose_message "BIOS Devname"
      funct_linux_package uninstall biosdevname
    fi
  fi
}
