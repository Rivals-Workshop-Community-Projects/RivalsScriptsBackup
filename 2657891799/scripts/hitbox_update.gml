//hitbox_update

//charged shuriken
if attack == AT_NSPECIAL && hbox_num == 3 {
    if hitbox_timer mod 6 == 3 {
        if multihit_counter <= 5 {
            var _hit = create_hitbox(AT_NSPECIAL, 4, x, y)
                _hit.vsp = vsp
                _hit.hsp = hsp
                _hit.spr_dir = spr_dir
                _hit.can_hit_self = was_parried
            multihit_counter++
        } else {
            var _hit = create_hitbox(AT_NSPECIAL, 5, x, y)
                _hit.vsp = vsp
                _hit.hsp = hsp
                _hit.spr_dir = spr_dir
                _hit.can_hit_self = was_parried
            destroyed = true;
        }
    }
}

if attack == AT_NSPECIAL && hbox_num <= 3 {
    if hitbox_timer mod 8 == 0 {
        player_id.shuriken_vfx_array[0] = player_id.shuriken_vfx_array[1]
        player_id.shuriken_vfx_array[1] = player_id.shuriken_vfx_array[2]
        player_id.shuriken_vfx_array[2] = [x, y, 1, image_index, sprite_index, spr_dir]
    }
}