Window.Close(win2)
title := "Credits"
para := "This game was created by: "
para2 := "Konner"
para3 := "and"
para4 := "William"
View.Set ("graphics")
win4 := Window.Open ("position:0;0,graphics:max;max")
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
loop
    Input.KeyDown (chars)
    if chars (chr (27)) then
    titlepro
    end if
end loop
