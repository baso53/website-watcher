A simple bash script that loads a website and pushes a message with [Telepush](https://github.com/muety/telepush) when it detects that the specific string isn't present on the website. (for example, to see if a product isn't sold out anymore)

# How to use

1. Read the [Telepush README](https://github.com/muety/telepush?tab=readme-ov-file#%EF%B8%8F-how-to-use) on how to get a token.
2. Replace the variables in `website-watcher.sh` with the website and string you want to match and paste your Telepush token.
3. Run `website-watcher.sh`
4. (Optional) add the script to your crontab in order to check periodically