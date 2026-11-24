# alexcalatyd/tap

Homebrew formulae and casks for my tools.

```sh
brew install alexcalatyd/tap/<name>
```

## Terminal tools

| Formula | What it is |
|---|---|
| [mtv](https://github.com/alexcalatyd/MTV) | Read a README in the terminal the way GitHub shows it |
| [typingbash](https://github.com/alexcalatyd/TypingBash) | A typing test for the terminal, in the spirit of Monkeytype |
| [nocturne](https://github.com/alexcalatyd/Nocturne) | A music player for the terminal, with spectrum, album art and Spotify |
| [mactv](https://github.com/alexcalatyd/MacTV) | Turn a Mac on your TV into a TV interface, with your phone as the remote |
| [notch-yet](https://github.com/alexcalatyd/NotchYet) | Your MacBook's notch tells you when Claude Code is done |

## Mac apps

| Cask | What it is |
|---|---|
| [micro](https://github.com/alexcalatyd/Micro) | A tiny floating player that lives in your menu bar |
| [tap](https://github.com/alexcalatyd/Tap) | Paste a link, get the file: video and audio downloader powered by yt-dlp |
| [stash](https://github.com/alexcalatyd/Stash) | Everything you copy, one shortcut away: clipboard history for the menu bar |
| [hecho](https://github.com/alexcalatyd/Hecho) | Your to-dos, alone or together: groups, priorities and real-time shared spaces |
| [ideck](https://github.com/alexcalatyd/iDeck) | Your Mac's control center, on your phone |
| [trackdrum](https://github.com/alexcalatyd/TrackDrum) | Turn your MacBook's trackpad into an instrument and loop what you play |
| [backspace](https://github.com/alexcalatyd/Backspace) | A real terminal for macOS, wearing five different pasts |

The apps need Apple Silicon. They aren't notarized by Apple, so the first time
macOS blocks them: open them once from **System Settings → Privacy & Security →
Open Anyway**, or run `xattr -dr com.apple.quarantine /Applications/<App>.app`.
