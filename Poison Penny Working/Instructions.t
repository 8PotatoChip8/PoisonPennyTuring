Window.Close(win2)
title := "Insctructions"
para := "This game is called Poison Penny. "
para2 := "The way this game works is player 1 gets to go first he can click"
para3 := "1 or 2 pennies after he goes it is player 2's turn the person"
para4 := "who clicks on the poison penny lose's the game."
View.Set ("graphics")
win3 := Window.Open ("position:0;0,graphics:max;max")
colorback(black)
cls
View.Set ("offscreenonly")
cls
Font.Draw(title, x1 + 20, maxy - 75, font2, 8)
Font.Draw(para, x1 + 20, maxy - 175, font1, 8)
Font.Draw(para2, x1 + 20, maxy - 210, font1, 8)
Font.Draw(para3, x1 + 20, maxy - 245, font1, 8)
Font.Draw(para4, x1 + 20, maxy - 280, font1, 8)
Font.Draw(back, 10, 10, font3, 8)
View.Update
loop
    Input.KeyDown (chars)
    if chars (chr (27)) then
        titlepro
    end if
end loop
