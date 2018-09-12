Systemctl tutorial
==================


## Starting and Stopping Services

To start a systemd service, executing instructions in the service's unit file, use the start command. If you are running as a non-root user, you will have to use sudo since this will affect the state of the operating system:

    sudo systemctl start application.service

As we mentioned above, systemd knows to look for *.service files for service management commands, so the command could just as easily be typed like this:

    sudo systemctl start application

## Enabling and Disabling Services

The above commands are useful for starting or stopping commands during the current session. To tell systemd to start services automatically at boot, you must enable them.
To start a service at boot, use the enable command:

    sudo systemctl enable application.service

This will create a symbolic link from the system's copy of the service file (usually in /lib/systemd/system or /etc/systemd/system) into the location on disk where systemd looks for autostart files (usually /etc/systemd/system/some_target.target.wants. We will go over what a target is later in this guide).

To disable the service from starting automatically, you can type:

    sudo systemctl disable application.service
