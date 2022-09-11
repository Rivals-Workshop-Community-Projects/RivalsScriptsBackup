

if(attack == AT_NSPECIAL and hbox_num == 1 and vsp > 0 and (collision_point(x, y + vsp, asset_get("par_block"), true, true) or collision_point(x, y + vsp, asset_get("par_jumpthrough"), true, true))){
    
    if(collision_point(x, y + vsp, asset_get("par_jumpthrough"), true, true) and collision_point(x, y-vsp, asset_get("par_jumpthrough"), true, true)){
        if(vsp > 4){
            destroyed = true;
        }
    } else {
        destroyed = true;
    }
    if(destroyed){
        destroy_fx = player_id.hfx_egg;
        sound_play(asset_get("sfx_blow_heavy1"), false, false, .5, 1.1)
        sound_play(asset_get("sfx_mol_spark_explode2"), false, false, 1, 1)
        sound_play(asset_get("sfx_ice_shatter"), false, false, .4, 1)
        var hb = create_hitbox(AT_NSPECIAL, 2, x, y);
        if(spr_dir == 1){
            if(hsp < 0){
                hb.kb_angle = 140;
            } else if (hsp == 0){
                hb.hit_flipper = 3;
            }
        } else {
            if(hsp > 0){
                hb.kb_angle = 140;
            } else if (hsp == 0){
                hb.hit_flipper = 3;
            }
        }
        hb.spr_dir = spr_dir;
        hb.player = player;
    }
} else if (attack == AT_NSPECIAL and hbox_num == 1 and hitbox_timer == 60){
        spawn_hit_fx(x, y, player_id.hfx_egg);
        
        sound_play(asset_get("sfx_blow_heavy1"), false, false, .5, 1.1)
        sound_play(asset_get("sfx_mol_spark_explode2"), false, false, 1, 1)
        sound_play(asset_get("sfx_ice_shatter"), false, false, .4, 1)
        var hb = create_hitbox(AT_NSPECIAL, 2, x, y);
        if(spr_dir == 1){
            if(hsp < 0){
                hb.kb_angle = 140;
            } else if (hsp == 0){
                hb.hit_flipper = 3;
            }
        } else {
            if(hsp > 0){
                hb.kb_angle = 140;
            } else if (hsp == 0){
                hb.hit_flipper = 3;
            }
        }
        hb.spr_dir = spr_dir;
        hb.player = player;
}