# Dotfiles

> My settings for new macOS installations

# Getting started

The first step is install the Xcode in the mac app store, after installed check if the `git` command is working.

# Apps from App Store

Apps that I use installed with the mac app store

#### From Apple

- [Pages](https://www.apple.com/lae/pages/)
- [Numbers](https://www.apple.com/lae/numbers/)
- [Keynote](https://www.apple.com/lae/keynote/)
- [iMovie](https://www.apple.com/lae/imovie/)

#### Third-party

- [1Password](https://1password.com/)
- [Airmail](http://airmailapp.com/)
- [Wire](https://wire.com/)
- [Slack](https://slack.com/)
- [Shazam](https://itunes.apple.com/us/app/shazam/id897118787/)
- [Amphetamine](https://itunes.apple.com/us/app/amphetamine/id937984704/)
- [Table Tool](https://itunes.apple.com/us/app/table-tool/id1122008420/)
- [Patterns](https://itunes.apple.com/us/app/patterns-the-regex-app/id429449079/)
- [Tweetbot for Twitter](https://tapbots.com/tweetbot/)
- [Chatty for Facebook Messenger](https://itunes.apple.com/us/app/chatty-for-facebook-messenger/id981117463/)

# Apps installed manually

- [Authy](https://authy.com/download/)
- [Skype](https://www.skype.com/en/)
- [Stremio](http://www.strem.io/)
- [Spotify](https://www.spotify.com/us/download/mac/)
- [Google Chrome](https://www.google.com/chrome/browser/desktop/)
- [Firefox](https://www.mozilla.org/en-US/firefox/new/)
- [iTerm2](https://www.iterm2.com/version3.html)
- [Docker for Mac](https://www.docker.com/docker-mac/)
- [Kitematic](https://kitematic.com/)
- [Clean My Mac](https://macpaw.com/cleanmymac/)
- [Keybase](https://keybase.io/download/)

# Safari Extensions

- [1Password](https://agilebits.com/onepassword/extensions/)
- [Adguard](https://safari-extensions.apple.com/details/?id=com.adguard.safari-N33TQXN8C7/)
- [Awesome Screenshot](https://safari-extensions.apple.com/details/?id=com.diigo.safari.awesomescreenshot-5DXNM3K2CT/)
- [Grammarly for Safari](https://safari-extensions.apple.com/details/?id=com.grammarly.spellchecker.extension-W8F64X92K3/)
- [URL Advisor](https://safari-extensions.apple.com/details/?id=com.kaspersky.urla-2Y8XE5CQ94/)
- [Honey][https://safari-extensions.apple.com/details/?id=forge.safari.honey985c8d42048c4cbeb0bed522bd235ee7-4NREU46PA6/]

# Fonts

You need to install the [FiraCode](https://github.com/tonsky/FiraCode) font in the `fonts` folder.

# Terminal Profile

You need to install the terminal profile in the `terminal` folder. After installed use the `FiraCode` font with the size 16.

# General

- Use the dark menu option in `System Preferences > General`.
- Use the ken burns effect on the screen saver.
- Enable the `Minimize windows into application icon` option in `System Preferences > Dock`.
- Enable the `Automatically show and hide the dock` option in `System Preferences > Dock`.
- Change the `require password` to `immeadiately` in `System Preferences > Security & Privacy`.
- Enable the `Tap to click` option in `System Preferences > Trackpad`.
- Enable the `Show volume in menu bar` option in `System Preferences > Sound`.
- Enable the `Show fast user switching menu` option in `System Preferences > Users & Groups`.

# Hot Corners

Set the hot corners in `System Preferences > Desktop & Screen Saver > Screen Saver`

![Hot Corners](images/hotcorners.png)

# Dock organization

Define the position of the icons on the dock

![Dock](images/dock.png)

# Install the other apps

```bash
./setup.sh
```

After done continue to the next step below

`source ~/.zshrc`

# Languages

### Node.js

Install the node.js `6.1.0` and `4.4.3`.

```bash
nodenv install 6.1.0
```

Set as the global version

```bash
nodenv global 6.1.0
```

Now see if the version is correct: `node -v`.

**Note:** Rust, Elixir and Ocaml are already installed by `setup.sh`.

# Final

Now you are ready to develop with your new macOS installation.

# LICENSE

Check [here](LICENSE.md).

