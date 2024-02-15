switch(attack){
    
    case AT_FSPECIAL:
        player_id.move_cooldown[AT_FSPECIAL] = 120;
        player_id.move_cooldown[AT_DSPECIAL] = 2;
        if(hitpause_timer > 0){
            in_hitpause = true;
            hitpause_timer--;
        }else if(hitpause_timer == 0){
            in_hitpause = false;
            hitpause_timer--;
        }
        if(hitbox_timer >= length - 4){
            hsp *= 0.5;
        }
        if((hitbox_timer == length || place_meeting(x + hsp, y, asset_get("par_block"))) && !was_parried){
            player_id.ring_out = instance_create(floor(x), floor(y + 14), "obj_article1");
            player_id.ring_out.spr_dir = 1;
            destroy_fx = 1;
            destroyed = true;
        }
        break;

    case AT_NSPECIAL_2:
        if(place_meeting(x, y + 20, asset_get("par_block")) && vsp > 0){
            vsp *= -1;
            proj_angle *= -1;
        }
        player_id.suppress_hud = true;
        /*if(place_meeting(x + hsp, y, asset_get("par_block"))){
            hsp *= -1;
            spr_dir *= -1;
            proj_angle = point_direction(x, y, x + hsp, y + vsp);
        }*/
        if(hitbox_timer == (length - 7) && !was_parried){
            var spawn_x = clamp(x, 0, room_width);
            var spawn_y = clamp(y, 0, room_height);
            player_id.ring_out = instance_create(floor(spawn_x), floor(spawn_y + 14), "obj_article1");
            player_id.ring_out.spr_dir = 1;
            player_id.ring_out.state = 2;
            player_id.ring_out.state_timer = 83;
            destroy_fx = 1;
            destroyed = true;
        }
        if(destroyed || hitbox_timer == length) player_id.suppress_hud = false;
        break;

    case AT_TAUNT:
        proj_angle += 10 * spr_dir;
        break;
}