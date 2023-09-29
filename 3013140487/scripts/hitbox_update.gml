//hitbox_update
if attack == AT_NSPECIAL && hbox_num == 1{
    if(sprite_index == handle_spr_big){
        if free proj_angle = point_direction(x, y, x + hsp * spr_dir, y + vsp * spr_dir);
    }
    if hitbox_timer >= 16 && !was_parried {
        hsp = clamp(hsp - .15*spr_dir, -30*(spr_dir == -1), 30*(spr_dir == 1));
        vsp += .5;//1
    }
    if(was_parried){
        damage = 5;
    	kb_angle = 60;
    	kb_value = 6;
    	kb_scale = .5;
    	hitpause = 5;
    	hitpause_growth = .4;
    	force_flinch = 0;
        can_tech = 0;
        hitstun_factor = 1;
        vsp = 0;
        hsp = abs(hsp)/hsp * 15;
    }
    if destroyed{
        sound_play(asset_get("sfx_blow_weak1"), 0, noone, 1, 1.4);
        if sprite_index == handle_spr_big var ang = round(proj_angle);
        else var ang = -60*spr_dir;
        if(has_rune("E")) var dec = .01;
        else var dec = .1;
        array_push(player_id.lwfx_buffer, {xpos:x, ypos:y, sprite:handle_spr, frame:0, alpha:20, decay:dec, layer:-1, blend:c_white, fog:0, shade:1, frame_adv:0, angle:ang, dir:spr_dir});
    }
}

if(attack == AT_NSPECIAL_2 && hbox_num < 3){
    if(!was_parried){
        if(!has_bounced_vertical && prev_vsp > 0 && vsp <= 0){
            grounds = -1;
            has_bounced_vertical = true;
            if(hitbox_timer >= 3){
                if(hbox_num == 1) sound_play(asset_get("sfx_blow_weak2"), 0, noone, 1, 1.4); else sound_play(asset_get("sfx_blow_medium1"), 0, noone, 1, 1.2);
            	var hfx = spawn_hit_fx(x, y, 301);
            	hfx.pause = 6;
            }
        }
    } else {
        grounds = 2;
    }
    if destroyed{
        if(hbox_num == 1) sound_play(asset_get("sfx_blow_weak2"), 0, noone, 1, 1.4); else sound_play(asset_get("sfx_blow_heavy2"), 0, noone, 1, 1.4);
        if(has_rune("E")) var dec = .01;
        else var dec = .1;
        array_push(player_id.lwfx_buffer, {xpos:x, ypos:y, sprite:handle_spr, frame:0, alpha:stored_alpha, decay:dec, layer:-1, blend:c_white, fog:0, shade:1, frame_adv:0, angle:-60*spr_dir, dir:spr_dir});
    }
    prev_hsp = hsp;
    prev_vsp = vsp;
}