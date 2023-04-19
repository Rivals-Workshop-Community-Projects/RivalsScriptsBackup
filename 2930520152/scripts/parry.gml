if(state != PS_PARRY && has_rune("K")){
    if(enemy_hitboxID.type > 0 && (((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL) || countering)){
        // hitpause = false;
        ike_grabbed_id = hit_player_obj;
        hitstop = enemy_hitboxID.hitpause;
        hitstop_full = enemy_hitboxID.hitpause;
        super_armor = false;
        hit_player_obj.hitstop = hitstop + 25;
        hit_player_obj.hitstop_full = hitstop + 25;
        invincible = true;
        invince_time = 10;
        orig_knock = 0;
        if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
            state = PS_ATTACK_GROUND - free;
        }
        if(hit_player_obj.x > x){
            spr_dir = 1;
        }
        if(hit_player_obj.x < x){
            spr_dir = -1;
        }
        with(hit_player_obj){
            set_state(PS_PRATFALL);
            hit_player_obj = other;
            old_vsp = 0;
            old_hsp = 0;
            vsp = 0;
            hsp = 0;
            orig_knock = 0;
            hitstun = 10;
            hitstun_full = 10;
        }
        sound_play(asset_get("sfx_abyss_explosion_start"), false, false, 200);
        set_attack(AT_DSPECIAL_2);
    	set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 190);
    	set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 150);
    	
    	countered = true;
    }
}