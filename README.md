# SSH Login Notification

A Bash script that sends an email notification whenever a user logs in via SSH.  
This project demonstrates Linux administration, Bash scripting, and PAM integration.

---

## Features
- Sends email on SSH login
- Uses PAM `pam_exec` hook
- Configurable email recipient and subject
- Lightweight and easy to integrate

---

## Skills Demonstrated
- Bash scripting
- Linux server administration
- PAM configuration
- Email automation / notifications

---

## Dependencies

To run this script, your system needs:

1. **Bash** (installed by default on Linux)
2. **Mail utility** (`mail` or `mailx`)
   - Debian/Ubuntu: `sudo apt install mailutils`
   - CentOS/RHEL: `sudo yum install mailx`
3. **SMTP client** (`msmtp` or equivalent)
   - Configure using `examples/msmtprc.example`
4. **PAM** (Pluggable Authentication Modules)
   - Root access required to edit `/etc/pam.d/sshd`

Make sure all dependencies are installed and configured before using the script.

## Installation

1. Copy the script to `/usr/local/bin/` and make it executable:

```bash
sudo cp ssh-login-notify.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/ssh-login-notify.sh
``` 
2. Edit /etc/pam.d/sshd and add the following line after other session lines:
```bash
session optional pam_exec.so /usr/local/bin/ssh-login-notify.sh

```
3. Configure SMTP (e.g., using msmtp) with examples/msmtprc.example.

4. Test by logging in via SSH from another machine.

## Security & Best Practices

Script must be owned by root and writable only by root

Email credentials should be stored securely (chmod 600)

Quote variables to prevent injection vulnerabilities

Test in a safe environment before deploying on production servers


## Example SMTP Configuration

See examples/msmtprc.example for a template.


## Result 
(./examples/ssh_notification.png)
## Acknowledgements

Inspired by:[Linuxiac – How to Get Notified on SSH Logins on Linux](https://linuxiac.com/how-to-get-notified-on-ssh-logins-on-linux/) 


