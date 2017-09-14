import BearLibTerminal

discard terminal_open()

discard terminal_set("window.title='Hello world'")

discard terminal_print(1, 1, "[color=yellow]Hello world![/color]")

terminal_refresh()

var key = terminal_read()

while key != TK_CLOSE and key != TK_ESCAPE:
  key = terminal_read()

terminal_close()