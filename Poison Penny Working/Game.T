Window.Close(win2)
winID := Window.Open ("position:0;0,graphics:max;max")
colorback (black)
color (white)
cls

put "player 1 name"
get play1
put ""
put "player 2 name"
get play2

game

put ""
put ""

loop
    put "would you like to play agan ('y'/'n')"
    get ans
    if ans = "y" then
	game

    elsif ans = "n" then
	exit

    else
	cls

    end if
end loop

Window.Close (winID)

