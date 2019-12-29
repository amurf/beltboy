function make_player(x, y)
    pl = {
        sprite = 1,
        x = x,
        y = y,
        speed_x = 0,
        speed_y = 0,
        jump_height = -0.4,
    }

    return pl
end

function update_player(player)
    player.grounded = fget(mget(player.x, player.y + 1), 0)

    if (btn(0)) then
        player.speed_x -= 0.01
    end

    if (btn(1)) then
        player.speed_x += 0.01
    end

    if (player.grounded) then
        if (flr(jump_timer) == 0) then
            player.speed_y = player.jump_height
            jump_timer = 4
        else
            player.speed_y = 0
            player.y = flr(player.y)
        end
    else
        player.speed_y += 0.05
    end

    player.x += player.speed_x
    player.y += player.speed_y
end

function draw_player(player)
    spr(player.sprite, player.x * 8, player.y * 8, 1, 1, false, false)
end
