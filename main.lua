function _init()
    player = {}

    for y=0,63 do for x=0,127 do
        if (mget(x,y) == 1) then
            player = make_player(x, y)
            mset(x, y, 0)
        end
    end end
end

function _update()
    update_player(player)
end

function _draw()
    cls()
    map(0, 0, 0, 0)

    draw_player(player)
end
