var pennys : int := 13
var num, winID : int
var yn : string
winID := Window.Open ("position:0;0,graphics:max;max")
colorback (black)
color (white)
cls

procedure game
    pennys := 13
    loop

	put pennys
	put "player 1"
	get num

	if num = 2 then
	    pennys := pennys - 2
	else
	    pennys := pennys - 1
	end if

	if pennys <= 0
		then
	    cls
	    put "player 1 loses"
	    exit
	end if

	cls

	put pennys
	put "player 2"
	get num

	if num = 2 then
	    pennys := pennys - 2
	else
	    pennys := pennys - 1
	end if

	if pennys <= 0
		then
	    cls
	    put "player 2 loses"
	    exit
	end if

	cls

    end loop
end game

game

loop
put ""
put ""
put "want to play agin"
get yn
if yn = "y" then
    cls
    game
else
    put "bye"
    delay (1000)
    Window.Close (winID)
end if
end loop





