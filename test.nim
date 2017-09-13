import BearLibTerminal

discard terminal_open()

discard terminal_print(1, 1, "Hello world![color=dark gray]ппррыыыіііїїїї")

discard terminal_print(1, 3, """
   ┌────────┐  
   │!......s└─┐
┌──┘........s.│
│............>│
│...........┌─┘
│<.@..┌─────┘  
└─────┘        
""")

terminal_refresh()

var key = terminal_read()

while key != TK_CLOSE and key != TK_ESCAPE:
  key = terminal_read()

terminal_close()