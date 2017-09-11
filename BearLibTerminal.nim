const
  TK_ESCAPE* = 0x29
  TK_CLOSE* = 0xE0

proc terminal_open*() {.importc, dynlib: "BearLibTerminal.dll".}
proc terminal_close*() {.importc, dynlib: "BearLibTerminal.dll".}
proc terminal_refresh*() {.importc, dynlib: "BearLibTerminal.dll".}
proc terminal_read*(): int {.importc, dynlib: "BearLibTerminal.dll".}
