# audit_ldap_cache
#
# Refer to Section(s) 2.2.5 Page(s) 25-6 CIS Solaris 10 Benchmark v5.1.0
#.

audit_ldap_cache () {
  if [ "$os_name" = "SunOS" ]; then
    if [ "$os_version" = "10" ]; then
      funct_verbose_message "LDAP Client"
      service_name="svc:/network/ldap/client"
      funct_service $service_name disabled
    fi
  fi
  if [ "$os_name" = "Linux" ]; then
    funct_verbose_message "LDAP Client"
    service_name="ldap"
    funct_chkconfig_service $service_name 3 off
    funct_chkconfig_service $service_name 5 off
  fi
}
