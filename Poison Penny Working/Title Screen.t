procedure titlepro
    cls
    title := "Poison Penny"
    programmer := ""
    View.Set ("graphics")
    win2 := Window.Open ("position:0;0,graphics:max;max")
    Window.Close(win1)
    colorback(2)
    cls
    font2:=Font.New("Ariel:64:bold")
    Font.Draw(title, x1, maxy div 2 + 50, font2, 14)
    Font.Draw(programmer, x1 + 190, maxy div 2 -50, font2, 14)
    loop
        Input.KeyDown (chars)
        if chars (chr (49)) then
            include "Game.t"
            Window.Close(win1)
            Window.Close(win2)
            Window.Close(win3)
            Window.Close(win4)
            Window.Close(win5)
        elsif chars (chr (27)) then
            Window.Close(win2)
            Window.Close(win3)
        elsif chars (chr (50)) then
            include "Instructions.t"
            Window.Close(win1)
            Window.Close(win2)
            Window.Close(win3)
        elsif chars (chr (51)) then
            include "Credits.t"
            Window.Close(win1)
            Window.Close(win2)
            Window.Close(win3)
            Window.Close(win4)
        end if
    end loop
end titlepro