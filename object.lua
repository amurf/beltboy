function make_object(sprite, flags, x, y)
    local obj = {
        sprite = sprite,
        flags = flags,
        x = x,
        y = y,
    }

    return obj
end

function update_object(object)
    foreach(objects, check_collision)
end

function draw_object(object)
    spr(object.sprite,
    object.x * 8,
    object.y * 8, 1, 1, false, false)
end

function check_collision(obj)
    if (player==obj) then return end
    local dx = player.x - obj.x
    local dy = player.y - obj.y

    if (abs(dx) < 1 ) then
        if (abs(dy) < 1 ) then
            if (obj.flags == sprite_flags.pickup) then -- coin/pickup
                pickup_collision(obj)
            elseif (obj.flags == sprite_flags.damage) then
                damage_collision(obj)
            end
        end
    end
end


function pickup_collision(obj)
    -- this maps sprite id to pickup type
    local pickup = {
        coin = 6,
    }

    if (obj.sprite == pickup.coin) then
        player.score += 1
        mset(obj.x, obj.y, 0)
        del(objects, obj)
    end
end


function damage_collision(obj)
    -- handle deaths
end
