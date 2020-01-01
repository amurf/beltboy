config = {
    player_sprite = 5,
    solid_flag = 0,
}

sprite_flags = {
  solid = 0,
  damage = 1,
  pickup = 2,
}


-- set this to game to skip title screen
state = "title"

function _init()
    game_init()
end

function _update()
    local update_functions = {
        game = game_update,
        title = title_update,
    }

    update_functions[state]()
end

function _draw()
    local draw_functions = {
        game = game_draw,
        title = title_draw,
    }

    draw_functions[state]()
end
