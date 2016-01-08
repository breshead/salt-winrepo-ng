activeperl_x64:
  {% for version, build, reported_ver in (('5.22.0', '2200', '5.22.2200'), ('5.20.2', '2002', '5.20.2'), ('5.18.4', '1805', '5.18.4')) %}
  '{{ reported_ver }}':
    full_name: 'ActivePerl {{ version }} Build {{ build }} (64-bit)'
    installer: 'http://downloads.activestate.com/ActivePerl/releases/{{ version }}.{{ build}}/ActivePerl-{{ version }}.{{ build}}-MSWin32-x64-299195.msi'
    uninstaller: 'http://downloads.activestate.com/ActivePerl/releases/{{ version }}.{{ build}}/ActivePerl-{{ version }}.{{ build}}-MSWin32-x64-299195.msi'
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}
