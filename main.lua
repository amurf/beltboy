

function _init()
    player = {}
    jump_timer = 4

    for y=0,63 do for x=0,127 do
        if (mget(x,y) == 1) then
            player = make_player(x, y)
            mset(x, y, 0)
        end
    end end
end

function _update()
    jump_timer -= 1 / 30

    update_player(player)
end

function _draw()
    cls()
    map(0, 0, 0, 0)

    print(flr(jump_timer), 0, 0)
    draw_player(player)
end
