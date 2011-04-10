#!/usr/bin/newlisp
;;this goes with C++ program that communicates via text files. Try and figure out better way 
;;later.
;;works with 
;; frameless-demo.lsp - frameless and transparent (on MacOS X)

(set-locale "C")
(load (append (env "NEWLISPDIR") "/guiserver.lsp")) 

(gs:init) 

(gs:window 'Window 500 100 800 200)
(gs:set-background 'Window 0 0 0.5 0.2)
(gs:set-border-layout 'Window)
(gs:label 'Time " ") 
(gs:set-font 'Time "Mono Spaced" 40 "bold")
(gs:set-foreground 'Time 1 1 0 )
(gs:add-to 'Window 'Time "center")

(gs:label 'Time2 " ")
(gs:set-font 'Time2 "Mono Spaced" 40 "bold")
(gs:set-foreground 'Time2 1 1 0 )
(gs:add-to 'Window 'Time2 "north")

(gs:button 'Button 'button-handler "close")
(gs:add-to 'Window 'Button "south")
(gs:set-visible 'Window true)

(define (button-handler) (exit))

(while (gs:check-event 10000)
;;(set 'file (open "localhost" "read"));;communication with CSCI144_lab1_mod.cpp
(define str (get-url "http://macbookpro/~wendybegley/communication.txt"));;let the mac server do the communication work and leave the rest to newlisp
	(sleep 2000)
(if str
	(gs:set-text 'Time2 str)))
;;	(gs:set-text 'Time (date (date-value) 0 str))))

;; eof
