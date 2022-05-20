var str;
draw_self()
if global.lobbyLocked
    str = "Spectator"
else
    str = "Player"
draw_set_halign(fa_right)
draw_text((x - 12), (y + 6), ("Lobby State: " + str))
draw_set_halign(fa_left)
