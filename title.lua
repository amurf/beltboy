function title_update()
    if (btn(2)) then
        state = "game"
    end
end

function title_draw()
    cls()
    print("<put title screen here>", 20, 63)
    print("press up to begin", 34, 70)
end
