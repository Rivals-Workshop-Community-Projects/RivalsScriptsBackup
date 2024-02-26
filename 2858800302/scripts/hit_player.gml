if (my_hitboxID.attack == AT_DATTACK){
    if (my_hitboxID.hbox_num == 2){
        has_hit = true;
    }
}

if (my_hitboxID.attack == AT_USTRONG){
    if (my_hitboxID.hbox_num == 2){
        has_hit = true;
    }
}

if (my_hitboxID.hit_effect == petal_tipper && my_hitboxID.kb_scale > 0 && (my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_DSTRONG || my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_NSPECIAL)){
    sound_play(sound_get("crit"));
}

//fspecial on-hit cancel
if (my_hitboxID.attack == AT_FSPECIAL){
    if (my_hitboxID.hbox_num == 1){
        destroy_hitboxes();
        move_cooldown[AT_FSPECIAL] = fspec_bounce_cooldown;
        window = 7;
        window_timer = 0;
        can_fast_fall = false;
        //x = hit_player_obj.x + 18*hit_player_obj.spr_dir;
        //y = hit_player_obj.y - 10;
        //old_hsp = fspec_bounce_hsp*spr_dir;
        if (state != PS_HITSTUN){
            old_hsp = (hit_player_obj.old_hsp)*1.4;
            old_vsp = fspec_bounce_vsp*0.8;
        }
        djumps = 0; //restore djumps
    }
}

//nspecial status effect
if (my_hitboxID.attack == AT_NSPECIAL /*&& hit_player_obj.flower_crowned == false*/){
    hit_player_obj.flower_crowned = true;
    hit_player_obj.flower_crown_id = id;
    hit_player_obj.flower_crown_timer = flower_crown_effect_length;
}
