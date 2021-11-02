procedure destroy
    View.Update
    cls
    counter := counter - 1
    Font.Draw(intstr(counter), x1 + 20, maxy - 500, font1, 8)
    delay(1000)
    View.Update
end destroy

procedure game
    total := 12
    loop
	loop
	    cls
	    for i : 1 .. total

		drawfilloval ((i * 50), 100, 20, 20, white)

	    end for
	    put play1, "'s turn"
	    get penny
	    if penny = 1 or penny = 2
		    then
		total := total - penny
		cls
		exit
	    end if
	end loop

	if total <= 0 then
	    put play2, " wins"
	    exit
	end if

	loop
	    cls
	    for i : 1 .. total

		drawfilloval (i * 50, 100, 20, 20, white)

	    end for
	    put play2, "'s turn"
	    get penny

	    if penny = 1 or penny = 2
		    then
		total := total - penny
		cls
		exit
	    end if
	end loop

	if total <= 0 then
	    put play1, " wins"
	    exit
	end if

    end loop
end game
procedure titlepro
    cls
    title := "Poison Penny"
    option1 := "1. Play Game"
    option2 := "2. Instructions"
    option3 := "3. Credits"
    option4 := "ESC. Exit"
    View.Set ("graphics")
    win2 := Window.Open ("position:0;0,graphics:max;max")
    Window.Close(win1)
    colorback(black)
    cls
    Font.Draw(title, maxx div 2 - 320, maxy div 2 + 200, font2, 8)
    Font.Draw(option1, maxx div 2 - 300, maxy div 2 + 50, font1, 8)
    Font.Draw(option2, maxx div 2 - 300, maxy div 2, font1, 8)
    Font.Draw(option3, maxx div 2 - 300, maxy div 2 - 50, font1, 8)
    Font.Draw(option4, maxx div 2 - 300, maxy div 2 - 100, font1, 8)
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
        elsif chars (chr (42)) then
            include "Egg.t"
            Window.Close(win1)
            Window.Close(win2)
            Window.Close(win3)
            Window.Close(win4)
            Window.Close(win5)
            Window.Close(win6)
        end if
    end loop
end titlepro
