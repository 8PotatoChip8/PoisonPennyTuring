var programmer, title : string
var font1, font2, winID, x1 : int
var x2, y2 : int := 100
var chars : array char of boolean

font1:=Font.New("Ariel:32:bold")
x1 := maxx div 2 - 320
title := "Poison Penny"
programmer := ""

View.Set ("graphics")
winID := Window.Open ("position:0;0,graphics:max;max")
colorback(2)
cls
x1 := x1 + 1
font2:=Font.New("Ariel:64:bold")
Font.Draw(title, x1, maxy div 2 + 50, font2, 14)
Font.Draw(programmer, x1 + 190, maxy div 2 -50, font2, 14)
loop
    
    Input.KeyDown (chars)
    if chars (chr (27)) then
        exit
    end if
    cls
end loop
Window.Close (winID)