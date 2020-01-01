config = {
    player_sprite = 5,
    solid_flag = 0,
}

state = "game"

function _init()
    local init_functions = {
        game = game_init,
    }

    init_functions[state]()
end

function _update()
    local update_functions = {
        game = game_update,
    }

    update_functions[state]()
end

function _draw()
    local draw_functions = {
        game = game_draw,
    }

    draw_functions[state]()
end
