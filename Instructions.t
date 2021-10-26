var para, para2, para3, para4, title : string
var font1, font2, winID, x1: int
var x2, y2 : int := 100

font1:=Font.New("Ariel:32:bold")
font2:=Font.New("Ariel:64:bold")
x1 := maxx div 2 - 320
title := "Insctructions"
para := "This game is called Poison Penny. "
para2 := "The way this game works is player 1 gets to go first he can click"
para3 := "1 or 2 pennies after he goes it is player 2's turn the person"
para4 := "who clicks on the poison penny lose's the game."
View.Set ("graphics")
winID := Window.Open ("position:0;0,graphics:max;max")
colorback(2)
cls
View.Set ("offscreenonly")
cls
Font.Draw(title, x1 + 20, maxy - 75, font2, 14)
Font.Draw(para, x1 + 20, maxy - 175, font1, 14)
Font.Draw(para2, x1 + 20, maxy - 210, font1, 14)
Font.Draw(para3, x1 + 20, maxy - 245, font1, 14)
Font.Draw(para4, x1 + 20, maxy - 280, font1, 14)
View.Update
