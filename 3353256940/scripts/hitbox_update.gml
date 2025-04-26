
switch (attack){
    case AT_USPECIAL: // corpse
        destroyed = (place_meeting(x, y, asset_get("par_block")))
            || (place_meeting(x, y, asset_get("par_jumpthrough")) && vsp > 0);
        
        if (destroyed) sound_play(asset_get("sfx_abyss_hex_hit"));
        
        if (hbox_num == 2) proj_angle = point_direction(0, 0, hsp, vsp)-90;
        else pipewarp_cd = 0; // acts as initialization
        
        with obj_article1 if (!other.destroyed && other.pipewarp_cd <= 0 && "is_twenny_pipe" in self && place_meeting(x, y, other)) {
            with other {
                var warped_hbox = create_hitbox(AT_USPECIAL, 2, other.warpcoord_x, other.warpcoord_y);
                warped_hbox.hsp = (other.warpcoord_angle == 90) ? 0 : 9*other.warpcoord_dir;
                warped_hbox.vsp = (other.warpcoord_angle == 90) ? -18 : -12;
                if (hbox_num == 2) warped_hbox.hitbox_timer = max(hitbox_timer - 5, 0);
                warped_hbox.pipewarp_cd = 10;
                
                other.do_warp_effects = 1;
                other.warp_usages++;
                other.pipewarp_cd = other.pipewarp_cd_max;
                
                destroyed_next = true;
                pipewarp_cd = 1; // block additional warp checks
            }
        }
        
        if (pipewarp_cd > 0) pipewarp_cd--;
        if (hitbox_timer == length && !destroyed && !destroyed_next) {
            spawn_hit_fx(x, y, destroy_fx);
        }
        break;
    case AT_DSPECIAL: // livespark
        if (proj_angle == 0 && vsp < -2) vsp += 0.4;
        else if (abs(proj_angle) == 45 && vsp < -1.5) {
            hsp -= 0.3*spr_dir;
            vsp += 0.3;
        }
        if (hitbox_timer == length && !destroyed && !destroyed_next) {
            spawn_hit_fx(x, y, destroy_fx);
        }
        break;
}