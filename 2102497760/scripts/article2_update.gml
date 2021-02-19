//article2_update

if (initi == 0) {
    initi = 1;
    playa_id = player_id;

}
mask_index = sprite_index;
state_timer++;
if state == 0 {
    image_index = image_number*(state_timer/build_time[state]);
    if (state_timer >= build_time[state]) {
        state = 1;
        state_timer = 0;
        sprite_index = idle_sprite;
    }
}

if state == 1 {
    image_index = image_number*(state_timer/build_time[state]);
    with (asset_get("pHitBox")) {
        if (place_meeting(x,y,other.id) && player_id == other.player_id && (other.target_attack == 0 || attack == other.target_attack) && (other.target_hbox == 0 || hbox_num = other.target_hbox)) {
            if (!other.from_ou || (type == 2 && attack != AT_FSPECIAL) && (!other.charge_strong || (player_id.attack == AT_USTRONG || player_id.attack == AT_DSTRONG || player_id.attack == AT_FSTRONG))) {
                sound_play(sound_effect);
                sound_play(asset_get("sfx_ice_shatter_big"));
                spawn_hit_fx(x+hit_effect_x,y+hit_effect_y,hit_effect);
                with player_id {
                    old_hsp = hsp;
                    old_vsp = vsp;
                    has_hit = true;
                    hitstop = other.hitpause+other.damage*other.hitpause_growth*.05-2;
                    hitpause = true;
                }
                other.state = 2;
                other.state_timer = 0;
                other.sprite_index = other.break_sprite;
            }
        }
    }
}


if state == 2 {
    image_index = image_number*(state_timer/build_time[state]);
    image_alpha = 1-(state_timer-40)/(build_time[state]*3);
    if (state_timer >= build_time[state]) {
        instance_destroy();
        exit;
    }
}