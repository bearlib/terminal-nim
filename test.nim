import BearLibTerminal

terminal_open()

terminal_refresh()

var key = 0

while key != TK_CLOSE and key != TK_ESCAPE:
  key = terminal_read()

terminal_close()