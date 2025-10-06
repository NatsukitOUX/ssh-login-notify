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
2.
