# Dotfiles

## A Fresh OS X Setup

Follow these install instructions to setup a new Mac.

1. Update OS X to the latest version with the App Store
2. Install Xcode from the App Store, open it and accept the license agreement
3. Install OS X Command Line Tools by running `xcode-select --install`
4. Clone this repo to `~/.dotfiles`
5. Append `/usr/local/bin/zsh` to the end of your `/etc/shells` file
6. Run `install.sh` to start the installation
7. Make sure Google Drive is set up and synced
8. Restore preferences by running `mackup restore`
9. Make sure the `~/.ssh` directory permissions are set to 600
10. Restart your computer to finalize the process

Your Mac is now ready to use!
