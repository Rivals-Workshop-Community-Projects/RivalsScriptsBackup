//hitbox_update.gml
if (orig_player != player) exit;
//destroy dspecial hitboxes upon hitting the ground.
if (type == 2 && !in_hitpause) {

    switch (attack)  {
        case AT_FAIR:
            if (hsp == 0 || vsp == 0 || !free) { //(!free && place_meeting(x, y+1, asset_get("par_block")))) {
                destroyed = true;
            }
        break;
        case AT_DAIR:
            if (vsp == 0 || !free) { // (!free && place_meeting(x, y+1, asset_get("par_block")))) {
                destroyed = true;
                sound_play(sound_get("cs_machinegun_destroy"))
            }
        break;
        
        case AT_BAIR:
            if (hitbox_timer mod 3 == 1) {
                with (player_id) spawn_hit_fx(other.x, other.y, ralsei_fx_sonic).spr_dir *= -1;
            }
        break;
        
        case AT_NAIR:
            if (hitbox_timer <= 1) {
                hsp_not_zero = (hsp != 0);
                vsp_not_zero = (vsp != 0);
            }
            if ((hsp_not_zero && hsp == 0) || (vsp_not_zero && vsp == 0) || !free) {
                destroyed = true;
            }
        break;
        
        case AT_USPECIAL_GROUND:
            if (hitbox_timer > 40 && !free) { destroyed = true; sound_play(asset_get("sfx_ell_small_missile_ground")); break;}
            if (hitbox_timer <= 1) { 
                proj_angle = point_direction(0, 0, hsp, vsp); 
                ralsei_was_hit = false; break;
            }
            var sqrttimer = sqrt(hitbox_timer / 2);
            if (sqrttimer == floor(sqrttimer)) spawn_hit_fx(x, y, 14);
            
            //don't track the opponent if ralsei was attacked.
            //if (player_id.hitstun >= 1) { ralsei_was_hit = true; }

            if (hitbox_timer == 39) { // && !ralsei_was_hit) {
                walls = 0;
                grounds = 0;
                
                damage = 3;
                
                var xx;
                var yy;
                var track_player = player_id.ralsei_uspecial_ground_target_player_id;
                if (track_player == noone) {
                    xx = xstart + 150 * tracking_dir;
                    yy = ystart;
                }
                else {
                    xx = clamp(track_player.x, 32, room_width - 32);
                    yy = clamp(round(track_player.y - 30), 64, room_height - 64);
                }
                with (player_id) spawn_hit_fx(xx, yy, ralsei_fx_crosshair).depth = depth-1;
                var new_direction = point_direction(x, y, xx, yy);
                proj_angle = new_direction;
                var current_speed = -vsp;
                hsp = lengthdir_x(current_speed, new_direction);
                vsp = lengthdir_y(current_speed, new_direction);
            }
        break;
        case AT_FSPECIAL:
            //reduce damage at the tip of the minigun's range.
            if (hbox_num != 4) break; 
            switch (hitbox_timer) {
                case 14: 
                    damage = 1; 
                    hitpause = 2;
                break;
                case 16: 
                    kb_value = 8;
                    kb_scale = 0.8;
                    hitpause = 9;
                    hitpause_growth = 0.75;
                    kb_angle = 45;
                    no_other_hit = 5;
                    hitstun_factor = 0.75;
                    hit_effect = 305;
                    //sound_effect = ralsei_fspecial_minigun_sweetspot_sfx;
                break;
            }
        break;
    }
}