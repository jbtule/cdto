## cd to... [![Latest Release](https://img.shields.io/github/release/jbtule/cdto.svg)](https://github.com/jbtule/cdto/releases/latest)
<img src="https://raw.github.com/jbtule/cdto/master/graphics/lion.png" height="128px" width="128px" />

Finder Toolbar app to open the current directory in the Terminal.

 * It's written in objective-c, and uses the scripting bridge so it's *fast*.
 * It's also shell agnostic. Works equally well when your shell is `bash` or `fish` or `zsh`.

By Jay Tuley
https://github.com/jbtule/cdto

### Usage:

Download [Latest cdto.zip](https://github.com/jbtule/cdto/releases/latest)


To install "cd to ....app" copy to your Applications folder, and then from the applications folder ⌘ drag it into the Finder toolbar or drag from another finder window to toolbar being customized.

To use, just click on the new button and instantly opens a new terminal window.

### Settings

To turn on feature that identifies automatically opened  Terminal windows, and closes them when using *cd to*.

```bash
defaults write name.tuley.jay.cd-to cdto-close-default-window -bool true
```

To change the window scheme for Terminal Windows from default.

_Eg. if you wanted cd to windows to be "Red Sands"_

```bash
defaults write name.tuley.jay.cd-to cdto-new-window-setting -string "Red Sands"
```




### Changes:

Version 3.1
 * Restored name to "cd to.app"
 * *bug* fix 3.0 introduced bug for opening windows without selection
 * Faster
 * Fix Regression: Hide icon in dock
 * if package is selected, cd parent directory, if in package cd own directory
 * Less entitlements
 * Setting to enable feature that closes extra opened windows
 * Setting to enable choosing a different terminal theme for opened windows


Version 3.0
 * terminal app only supported, no plugins
 * rewritten to only use apple events
 * Hardened, and Notarized
 * works on Mojave (and hopefully Catalina)

Version 2.6
 * Fixed bug where get info window interferes
 * works on selected folder again
 * iTerm 2 plugin update

Version 2.5
 * Lion Version
 * Use terminal open apple event
 * works with tcsh as well as bash
 * New Icons

Version 2.3
 * Snow Leopard Version

Version 2.2
 * Clear Scroll-back on Terminal plugin (Thanks to Marc Liyanage for the original tip)
 * Fixed issues with special characters in file path bug that existed for Terminal and iTerm plugin
 * iTerm plugin will try to avoid opening two windows on iTerm launch
 * Leopard icon

Version 2.1.1
 * Fixed bug involving apostrophes in path
 * PathFinder plugin (Finder->Pathfinder) contributed by Brian Koponen

Version 2.1
 * Plugin archtexture allowing support for other terminals
 * Default plugins for iTerm & X11/xterm
 * Terminal plugin will try to avoid opening two windows on terminal.app's launch

Version 2.0 (2005)
 * Ported to objective-c using appscript, boosting launch & execution speed
 * properly resolves aliases
 * no longer shows icon in dock on launch
 
Version 1.0 (2003)
  * targeted Panther OS X 10.3
  * was applescript

Pre 1.0 (2001)
   Really old applescript
