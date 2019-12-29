config = {
    player_sprite = 5,
    solid_flag = 0,
}

function _init()
    player = {}
    jump_timer = 4

    for y=0,63 do for x=0,127 do
        if (mget(x,y) == config.player_sprite) then
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

    -- wip camera
    camera_offset = 5 * 8
    camera(player.x * 8 - camera_offset , 0)

    -- slightly insane
    print(flr(jump_timer), player.x * 8 + 3, player.y * 8 - 1 * 8)

    draw_player(player)
end
