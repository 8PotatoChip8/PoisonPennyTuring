Window.Close(win2)
title := "Easter Egg"
para := "This is non existant"
para2 := ""
para3 := "Bye"
destruct := "This program will self destruct in..."
para4 := destruct
View.Set ("graphics")
win3 := Window.Open ("position:0;0,graphics:max;max")
colorback(black)
cls
View.Set ("offscreenonly")
loop
View.Update
Font.Draw(title, x1 + 20, maxy - 75, font2, 8)
Font.Draw(para, x1 + 20, maxy - 175, font1, 8)
Font.Draw(para2, x1 + 20, maxy - 210, font1, 8)
Font.Draw(para3, x1 + 20, maxy - 245, font1, 8)
Font.Draw(para4, x1 + 20, maxy - 450, font1, 8)
destroy
View.Update
exit when counter = -1
end loop