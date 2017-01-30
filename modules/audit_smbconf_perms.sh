# audit_smbconf_perms
#
# Refer to Section(s) 11.2-3 Page(s) 143-4 CIS Solaris 10 Benchmark v1.1.0
#.

audit_smbconf_perms () {
  if [ "$os_name" = "SunOS" ]; then
    funct_verbose_message "SMB Config Permissions"
    funct_check_perms /etc/samba/smb.conf 0644 root root
  fi
}
