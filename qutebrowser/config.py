# general settings
c.url.default_page = 'about:blank'
c.url.start_pages= 'about:blank'
c.editor.command = ["lxterminal", "--title=scratchpad", "-e", "nvim", "-f", "{}"]
c.new_instance_open_target = "tab-bg"
c.prompt.filebrowser = False
c.completion.height = "80%"
c.completion.web_history.max_items = 100
c.input.partial_timeout = 2000
c.tabs.background = True
c.tabs.favicons.show = "always"
c.tabs.title.format = "{title}"
c.tabs.new_position.related = "last"
c.downloads.location.directory = '/home/jorge/Tmp'
c.downloads.remove_finished = 3000
c.content.cache.size = 52428800
c.content.webgl = False
c.content.host_blocking.enabled = False
c.hints.border = "1px solid #CCCCCC"
c.hints.mode = "letter"
c.hints.chars = "fjdksla;rueiwovm"
c.hints.min_chars = 1
c.keyhint.blacklist = ["*"]

# searches
c.url.searchengines['im'] = 'https://duckduckgo.com/?q=\imdb {}&key=ad553713ea322fe584fcf13ae18e10eed9c694f704eec298c60efd2831cebe3f7e251f78c0076c547073152539e888026e4dc009d02422182b33a0a0bbf2ec61'
c.url.searchengines['gs'] = 'https://scholar.google.ca/scholar?hl=en&q={}'
c.url.searchengines['sx'] = 'https://searx.me/?q={}'
c.url.searchengines['sf'] = 'https://www.fastmail.com/mail/search:{}/?u=8e384115'
c.url.searchengines['sk'] = 'https://www.skroutz.gr/search?keyphrase={}'
c.url.searchengines['sp'] = 'https://startpage.com/do/search?prf=a6f5dd12e951329d7408a9163e612acc&cat=web&query={}'
c.url.searchengines['aw'] = 'https://wiki.archlinux.org/?search={}'
c.url.searchengines['DEFAULT'] = 'https://duckduckgo.com/?q={}&key=ad553713ea322fe584fcf13ae18e10eed9c694f704eec298c60efd2831cebe3f7e251f78c0076c547073152539e888026e4dc009d02422182b33a0a0bbf2ec61'
c.url.searchengines['gg'] = 'http://www.google.com/search?q={}'
c.url.searchengines['yt'] = 'https://www.youtube.com/results?search_query={}'
c.url.searchengines['wp'] = 'https://secure.wikimedia.org/wikipedia/en/w/index.php?title=Special%%3ASearch&search={}'

# aliases
c.aliases['f'] = 'open -t www.fastmail.fm'
c.aliases['ytd'] = 'spawn -d lxterminal --command youtube-dl -o \"~/Tmp/%(title)s.%(ext)s\" {url}'

# colors
c.colors.completion.fg = "#ffffe5"
c.colors.completion.category.fg = c.colors.completion.fg
c.colors.completion.category.bg = "#005f5f"
c.colors.completion.item.selected.fg = "yellow"
c.colors.completion.item.selected.bg = "#5f0000"
c.colors.completion.item.selected.border.top = "#333333"
c.colors.completion.item.selected.border.bottom = "#333333"
c.colors.completion.match.fg = "#F2F2F2"
c.colors.statusbar.normal.fg = "#899CA1"
c.colors.statusbar.normal.bg = "#222222"
c.colors.statusbar.insert.fg = "#899CA1"
c.colors.statusbar.insert.fg = "#899CA1"
c.colors.statusbar.insert.bg = "#222222"
c.colors.statusbar.command.bg = "#000000"
c.colors.statusbar.command.fg = "#F0F0F0"
c.colors.statusbar.caret.bg = "#5E468C"
c.colors.statusbar.caret.selection.fg = "white"
c.colors.statusbar.progress.bg = "#333333"
c.colors.statusbar.passthrough.bg = "#4779B3"
c.colors.statusbar.url.fg = c.colors.statusbar.normal.fg
c.colors.statusbar.url.success.http.fg = "#899CA1"
c.colors.statusbar.url.success.https.fg = "#53A6A6"
c.colors.statusbar.url.error.fg = "#8A2F58"
c.colors.statusbar.url.warn.fg = "#914E89"
c.colors.statusbar.url.hover.fg = "#2B7694"
c.colors.tabs.bar.bg = "#222222"
c.colors.tabs.even.fg = "white"
c.colors.tabs.even.bg = "#444444"
c.colors.tabs.odd.fg = "#899CA1"
c.colors.tabs.odd.bg = "#222222"
c.colors.tabs.selected.even.fg = "white"
c.colors.tabs.selected.even.bg = "#005f5f"
c.colors.tabs.selected.odd.fg = "white"
c.colors.tabs.selected.odd.bg = "#005f5f"
c.colors.tabs.indicator.start = "#222222"
c.colors.tabs.indicator.stop = "#222222"
c.colors.tabs.indicator.error = "#8A2F58"
c.colors.hints.bg = "#fce94f"
c.colors.hints.fg = "#000000"
c.colors.hints.match.fg = "#000"
c.colors.downloads.start.fg = "black"
c.colors.downloads.start.bg = "#BFBFBF"
c.colors.downloads.stop.fg = "black"
c.colors.downloads.stop.bg = "#F0F0F0"
c.colors.keyhint.fg = "#FFFFFF"
c.colors.keyhint.suffix.fg = "#FFFF00"
c.colors.keyhint.bg = "rgba(0, 0, 0, 80%)"
c.colors.messages.error.bg = "#8A2F58"
c.colors.messages.error.border = "#8A2F58"
c.colors.messages.warning.bg = "#BF85CC"
c.colors.messages.warning.border = c.colors.messages.warning.bg
c.colors.messages.info.bg = "#333333"
c.colors.prompts.fg = "#333333"
c.colors.prompts.bg = "#DDDDDD"
c.colors.prompts.selected.bg = "#4779B3"
c.colors.statusbar.private.bg = "#5f0000"
c.colors.statusbar.private.fg = "white"
# fonts
#c.fonts.monospace = "Noto Sans Mono", "DejaVu Sans Mono", "Liberation Mono", monospace
c.fonts.tabs = "11pt Noto Sans Mono"
c.fonts.statusbar = "11pt Noto Sans Mono"
c.fonts.downloads = c.fonts.statusbar 
c.fonts.prompts = c.fonts.statusbar
c.fonts.hints = "18px Noto Sans Mono"
c.fonts.messages.info = "8pt Noto Sans Mono"
c.fonts.keyhint = c.fonts.messages.info
c.fonts.messages.warning = c.fonts.messages.info
c.fonts.messages.error = c.fonts.messages.info
c.fonts.completion.entry = c.fonts.statusbar
c.fonts.completion.category = c.fonts.statusbar

# keybinds
config.bind('<Ctrl-h>', 'history', mode='normal')  

config.bind(',tg', 'tab-give', mode='normal')  # Tab Detach
config.bind(',op', 'spawn view-downloaded-pdf.sh', mode='normal')  # Open Pdf
config.bind(',tr', 'open --window https://translate.google.gr/#auto/el/\"{primary}\"', mode='normal')  # Translate

config.bind('<Space>', 'set-cmd-text :')
config.unbind('gb', mode='normal')
config.unbind('<Ctrl-B>', mode='normal')
config.bind('<Ctrl-r>', 'restart', mode='normal')
config.bind('r', 'reload', mode='normal')
config.bind('<Ctrl-s>', 'config-source', mode='normal')
config.bind('<l>', 'tab-next', mode='normal')
config.bind('<h>', 'tab-prev', mode='normal')
config.unbind('<Shift-j>', mode='normal')
config.unbind('<Shift-k>', mode='normal')
config.bind('<Ctrl-Shift-l>', 'tab-move +', mode='normal')
config.bind('<Ctrl-Shift-h>', 'tab-move -', mode='normal')
config.bind('t', 'set-cmd-text -s :open -t', mode='normal')
config.bind('w', 'set-cmd-text -s :open -w', mode='normal')
config.bind('<Ctrl-m>', 'set-cmd-text -s :quickmark-save', mode='normal')
config.bind('<Escape>', 'leave-mode', mode='passthrough')
config.bind('gi', 'enter-mode insert ;; jseval --quiet var inputs = document.getElementsByTagName("input"); for(var i = 0; i < inputs.length; i++) { var hidden = false; for(var j = 0; j < inputs[i].attributes.length; j++) { hidden = hidden || inputs[i].attributes[j].value.includes("hidden"); }; if(!hidden) { inputs[i].focus(); break; } }')
config.bind(',c', 'spawn openwithnvim $HOME/.config/qutebrowser/config.py', mode='normal')

