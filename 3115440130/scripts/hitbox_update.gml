//hitbox_update

if attack == AT_NSPECIAL && hbox_num == 1 {
    if hitbox_timer mod 2 == 0 && player == player_id.player {
        spawn_hit_fx(x + 20*spr_dir, y + 20, player_id.vfx_nspec_rock)
    }
    var y_dist = y + 16
    var block_check = position_meeting(x, y_dist, asset_get("par_block"))
    var plat_check = position_meeting(x, y_dist, asset_get("par_jumpthrough"))
    var surface = undefined
    if block_check || plat_check {
        if block_check {
            var surface = instance_position(x, y_dist, asset_get("par_block"))
        } else if plat_check {
            var surface = instance_position(x, y_dist, asset_get("par_jumpthrough"))
        }
    }
    
    if surface != undefined && player == player_id.player {
        var surface_x = get_instance_x(surface)
        var surface_y = get_instance_y(surface)
        spawn_hit_fx(x, surface_y, player_id.vfx_rock_shatter)
        var rock = instance_create(x, surface_y, "obj_article2")
        if instance_exists(rock) {
            rock.spr_dir = spr_dir
        }
        instance_destroy()
        exit;
        //destroyed = true
    }
}

//absorb rock
if attack == AT_EXTRA_1 && hbox_num == 3 {
    //image_index = spr_type + (hitbox_timer >= 3)*3
    x = lerp(x, target.x, 0.15)
    y = lerp(y, target.y - 30, 0.15)
    if distance_to_object(target) <= 10 {
        destroyed = true
    }
}