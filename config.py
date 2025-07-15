# load autoconfig
config.load_autoconfig()

c.url.start_pages = 'https://www.google.com'

c.url.searchengines = {
    'DEFAULT': 'https://www.google.com/search?q={}',
    'g': 'https://www.google.com/search?q={}',
    'ddg': 'https://duckduckgo.com/?q={}',
    # Add more search engines here
}

#config.bind('e', 'edit-url ;; open')

# Configuración para abrir enlaces en kitty
#c.editor.command = ['/opt/homebrew/bin/kitty', 'vim', '{file}', '-c', 'normal {line}G']

#c.editor.command = ['mvim', '+{line}', '{file}']
c.editor.command = ['/opt/homebrew/bin/mvim', '-f', '+{line}', '{file}']


# adblock
c.content.blocking.enabled = True

c.content.blocking.method = 'adblock'

c.content.blocking.adblock.lists = [
     "https://github.com/ewpratten/youtube_ad_blocklist/blob/master/blocklist.txt",
     "https://github.com/uBlockOrigin/uAssets/raw/master/filters/legacy.txt",
     "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters.txt",
     "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2020.txt",
     "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2021.txt",
     "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2022.txt",
     "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2023.txt",
     "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2024.txt",
     "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badware.txt",
     "https://github.com/uBlockOrigin/uAssets/raw/master/filters/privacy.txt",
     "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badlists.txt",
     "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances.txt",
     "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances-cookies.txt",
     "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances-others.txt",
     "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badlists.txt",
     "https://github.com/uBlockOrigin/uAssets/raw/master/filters/quick-fixes.txt",
     "https://github.com/uBlockOrigin/uAssets/raw/master/filters/resource-abuse.txt",
     "https://github.com/uBlockOrigin/uAssets/raw/master/filters/unbreak.txt"]


# zoom
c.zoom.default = '75%'


