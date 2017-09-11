# BearLibTerminal
# Copyright (C) 2017 Apromix
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
# of the Software, and to permit persons to whom the Software is furnished to do
# so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

const
  TK_ESCAPE* = 0x29
  TK_CLOSE* = 0xE0

type
  dimensions_t* = object
    width*: int
    height*: int  

# Open  
proc terminal_open*() {.importc, dynlib: "BearLibTerminal.dll".}

# Close
proc terminal_close*() {.importc, dynlib: "BearLibTerminal.dll".}

# Clear
proc terminal_clear*() {.importc, dynlib: "BearLibTerminal.dll".}

# Refresh
proc terminal_refresh*() {.importc, dynlib: "BearLibTerminal.dll".}

# Print
proc terminal_print_ext8*(x: int; y: int; w: int; h: int; align: int; s: ptr int8; out_w: ptr int; out_h: ptr int) {.importc, dynlib: "BearLibTerminal.dll".}

proc terminal_print_ext*(x, y, w, h: int, alignment: int, s: cstring) : dimensions_t =
  #var result : dimensions_t
  terminal_print_ext8(x, y, w, h, alignment, cast[ptr int8](s), addr(result.width), addr(result.height))
  #return ret
  
proc terminal_print*(x: int; y: int; s: cstring): dimensions_t {.inline.} =
  return terminal_print_ext(x, y, 0, 0, 0, s)

# Read
proc terminal_read*(): int {.importc, dynlib: "BearLibTerminal.dll".}
