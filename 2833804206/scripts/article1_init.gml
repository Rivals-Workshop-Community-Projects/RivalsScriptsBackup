//article1_init

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

update_collisions = 1

obj_l = x
obj_r = x+8
obj_y = y
obj_w = obj_r - obj_l

obj_l2 = obj_l
obj_r2 = obj_r
obj_y2 = obj_y

block = instance_position(x, y, asset_get("par_block"))
plat = instance_position(x, y, asset_get("par_jumpthrough"))
//print(plat)

vfx_fire = hit_fx_create(sprite_get("oil_slick_fire"), 35)

if !block && !plat {
    instance_destroy()
    exit;
}

if block {
    surface = block
} else if plat {
    surface = plat
}

surface_x = get_instance_x(surface)
surface_y = get_instance_y(surface)

surface_x_old = surface_x
surface_y_old = surface_y

with obj_article1 if id != other.id {
    update_collisions = 1
}

if update_collisions > 0 {
    update_collisions--
    var merged = false
    with obj_article1 if id != other.id && player_id == other.player_id && (block || plat) && !merged {
        if obj_y == other.y && other.obj_w >= obj_w { //original is larger or same size than comparison, can eat up if close enough
            if other.obj_l <= obj_l && other.obj_r >= obj_r { //compare is fully inside original
                merged = true
                other.update_collisions++
                instance_destroy(id)
                break;
            } else if other.obj_l <= obj_r && other.obj_l >= obj_l { //original overlaps with compare with original on the right
                other.obj_l = obj_l
                other.obj_w = other.obj_r - other.obj_l
                merged = true
                other.update_collisions++
                instance_destroy(id)
                break;
            } else if other.obj_r >= obj_l && other.obj_r <= obj_r { //original overlaps with compare with original on the left
                other.obj_r = obj_r
                other.obj_w = other.obj_r - other.obj_l
                merged = true
                other.update_collisions++
                instance_destroy(id)
                break;
            }
        }
    }
}

split_pos = undefined

decay_dir = 0 //-direction of fire decay
decay_timer = 0