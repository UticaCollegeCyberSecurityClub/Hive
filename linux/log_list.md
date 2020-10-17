# /var/log/auth.log
- authentication related events
- detect brute force attacks
- failed login attempts
- Debian and Ubuntu only


# /var/log/faillog
- more info about failed login attempts


# /var/log/cron
- logs cron events 


# var/log/httpd/ OR /var/log/apache2
- keeps logs for apache
- logs events where there is failure or errors
- records all pages visted

# /var/log/syslog and /var/log/messages
- store all global system activity data, including startup messages. 
- Ubuntu

# /var/log/messages OR /var/log/auth
- Red Hat-based systems like RHEL or CentOS 

# Logs of last login sessions
- /var/log/wtmp 
# Logs of the current login sessions.
- /var/run/utmp
# Logs of the bad login attempts.
- /var/log/btmp

# Failed SSH LOGIN attemps
```
grep "Failed password" /var/log/auth.log
cat /var/log/auth.log | grep "Failed password"
```

# Failed SSH LOGIN attemps ( CentOS or RHEL )
```
egrep "Failed|Failure" /var/log/secure
grep "Failed" /var/log/secure
grep "authentication failure" /var/log/secure
journalctl _SYSTEMD_UNIT=ssh.service | egrep "Failed|Failure"
```
# Display IPS SSH LOGIN ( CentOS or RHEL )
```
 grep "Failed password" /var/log/auth.log | awk ‘{print $11}’ | uniq -c | sort -nr
 
 journalctl _SYSTEMD_UNIT=sshd.service | egrep "Failed|Failure"
 ```


# log Parser
- https://github.com/hatRiot/logalyzer
