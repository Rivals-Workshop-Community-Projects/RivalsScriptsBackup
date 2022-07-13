//article1_update

if block {
    surface = block
} else if plat {
    surface = plat
}

if surface != undefined && surface != noone && !instance_exists(surface) {
    instance_destroy()
    exit;
}

surface_x_old = surface_x
surface_y_old = surface_y

surface_x = get_instance_x(surface)
surface_y = get_instance_y(surface)

surface_x_diff = surface_x - surface_x_old
surface_y_diff = surface_y - surface_y_old

//print(surface_x_diff)

if surface_x_diff != 0 || surface_y_diff != 0 {
    with obj_article1 if player_id == other.player_id {
        update_collisions++
    }
}

obj_l += surface_x_diff
obj_r += surface_x_diff
x += surface_x_diff
y += surface_y_diff

//check for other articles on same y level for collisions
if update_collisions > 0 {
    block = instance_position(x, y, asset_get("par_block"))
    plat = instance_position(x, y, asset_get("par_jumpthrough"))
    if !block && !plat {
        instance_destroy()
        exit;
    }
    update_collisions--
    var merged = false
    with obj_article1 if id != other.id && player_id == other.player_id && (block || plat) && !merged {
        if obj_y == other.y && other.obj_w >= obj_w { //original is larger or same size than comparison, can eat up if close enough
            if other.obj_l <= obj_l && other.obj_r >= obj_r { //compare is fully inside original
                merged = true
                other.update_collisions++
                instance_destroy(id)
                break;
            } else if other.obj_l <= obj_r+1 && other.obj_l >= obj_l-1 { //original overlaps with compare with original on the right
                other.obj_l = obj_l
                other.obj_w = other.obj_r - other.obj_l
                merged = true
                other.update_collisions++
                instance_destroy(id)
                break;
            } else if other.obj_r >= obj_l-1 && other.obj_r <= obj_r+1 { //original overlaps with compare with original on the left
                other.obj_r = obj_r
                other.obj_w = other.obj_r - other.obj_l
                merged = true
                other.update_collisions++
                instance_destroy(id)
                break;
            }
        }
    }
    
    //check for gaps underneath to account for separating moving plats
    if update_collisions == 0 {
        for (var i = 0; i < obj_w; i += 8) {
            if !position_meeting(obj_l + i, y, asset_get("par_block")) && !position_meeting(obj_l + i, y, asset_get("par_jumpthrough")) {
                var new_x = obj_l+i + (obj_w-i)/2
                var new_plat = instance_position(new_x, y, asset_get("par_jumpthrough"))
                //print(new_plat)
                if new_plat != noone {
                    var new_puddle = instance_create(floor((obj_r - 16)/8)*8, round(y), "obj_article1")
                    if instance_exists(new_puddle) {
                        new_puddle.obj_l = obj_l+i + 4 - surface_x_diff
                        new_puddle.obj_r = obj_r + 4 - surface_x_diff
                        new_puddle.obj_w = new_puddle.obj_r - new_puddle.obj_l
                        new_puddle.update_collisions = 0
                    }
                }
                obj_r = obj_l+i
            }
        }
    }
    x = clamp(floor(obj_l+2), obj_l, obj_r)
    block = instance_position(x, y, asset_get("par_block"))
    plat = instance_position(x, y, asset_get("par_jumpthrough"))
    if block {
        surface = block
    } else if plat {
        surface = plat
    }
    surface_x = get_instance_x(surface)
    surface_y = get_instance_y(surface)
    
    surface_x_diff = surface_x - surface_x_old
    surface_y_diff = surface_y - surface_y_old
}

if !block && !plat {
    instance_destroy()
    exit;
}

if split_pos != undefined {
    split_puddle(split_pos, true)
    split_pos = undefined
}

if decay_dir != 0 {
    decay_timer++
    var spawn_x = x
    if decay_dir == 1 {
        obj_l += 8
        spawn_x = obj_l
    } else if decay_dir == -1 {
        obj_r -= 8
        spawn_x = obj_r
    }
    //x = spawn_x
    if decay_timer mod 4 == 0 {
        var _fire = spawn_hit_fx(spawn_x, obj_y + 2, vfx_fire)
            _fire.spr_dir = decay_dir
            _fire.depth = -10
    }
    
    if decay_timer mod 2 == 0 {
        create_hitbox(AT_DSPECIAL, 3, spawn_x, obj_y - 20)
    }
    if decay_timer mod 12 == 0 {
        sound_play(asset_get("sfx_burnapplied"))
    }
}

obj_w = obj_r - obj_l
//print(decay_timer)

if obj_w <= 0 {
    instance_destroy()
    exit;
}

#define split_puddle(split_x, ignite)
var pos_x = round(split_x/8)*8 + 4
var new_l = obj_l
var new_r = clamp(pos_x - 16, obj_l, pos_x)
var new_w = new_r - new_l

if new_w > 0 {
    var new_puddle = instance_create(round(x), round(y), "obj_article1")
        if instance_exists(new_puddle) {
            new_puddle.obj_l = new_l
            new_puddle.y = y
            new_puddle.x = new_l
            new_puddle.obj_r = new_r
            new_puddle.obj_w = new_w
            new_puddle.update_collisions = 0
            
            if ignite {
                new_puddle.decay_dir = -1 //decay to the left
                new_puddle.decay_timer = decay_timer+1
            }
        }
}
obj_l = clamp(pos_x, pos_x, obj_r + 8)
obj_w = obj_r - obj_l
if ignite {
    decay_dir = 1
    if decay_timer == 0 sound_play(asset_get("sfx_zetter_fireball_fire"))
    
    var _fire = spawn_hit_fx(pos_x, obj_y, vfx_fire)
        _fire.spr_dir = 1
    create_hitbox(AT_DSPECIAL, 3, pos_x, obj_y - 20)
}