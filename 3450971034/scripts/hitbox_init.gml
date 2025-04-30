//hitbox_init.gml

if (destroy_fx == 0) destroy_fx = hit_effect;

if (attack == AT_NSPECIAL) {
    if(hbox_num == 3){
        draw_xscale *= 2;
        draw_yscale *= 2;
        if (player_id.ptooie_swarm_timer && player_id.ptooie_swarm_timer < player_id.ptooie_swarm_timer_max - 6){
            spr_dir = (x > room_width/2) ? -1 : 1;
            vsp = -18 - random_func_2(69, 10, true);
            hsp = spr_dir * (8 + random_func_2(42, 8, true));
            sound_play(asset_get("sfx_hod_flip2"), false, -spr_dir, 2);
        } else {
            hit_priority = 0;
            vsp = -2;
            hsp = -2 * player_id.spr_dir;
        }
    }
}