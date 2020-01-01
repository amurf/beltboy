function end_game_update()
    if (btn(4)) then
        reload()
        state = "game"
    elseif (btn(5)) then
        load()
        state = "game"
    end
end

function end_game_draw()
    camera()
    cls()
    print("<put end_game screen here>", 20, 63)
    print("press z to begin", 34, 70)
    print("press x to reload", 34, 77)
end
