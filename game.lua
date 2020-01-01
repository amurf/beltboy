player = {}

function game_init()
    jump_timer = 4

    for y=0,63 do for x=0,127 do
        if (mget(x,y) == config.player_sprite) then
            player = make_player(x, y)
            mset(x, y, 0)
        end
    end end
end

function game_update()
    jump_timer -= 1 / 30
    update_player(player)
end

function game_draw()
    cls()
    map(0, 0, 0, 0)

    -- wip camera
    camera_offset = 3 * 8
    camera(player.x * 8 - camera_offset , 0)

    -- slightly insane
    print(flr(jump_timer), player.x * 8 + 3, player.y * 8 - 1 * 8)

    draw_player(player)
end
