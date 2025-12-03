//update
if get_match_setting(SET_PRACTICE){
    if up_down && taunt_pressed && jestermode == false{
        jestermode = true;
        sound_play(asset_get("mfx_coin"));
    }
}

if tokens < 3 && !free && state != PS_ATTACK_GROUND{
    token_recharge++;
    tokens += token_recharge>=40;
    token_recharge %= 40;
}

if instance_exists(fx_stop) && state_cat != SC_HITSTUN && hitstop fx_stop.step_timer--;

//if state == PS_FIRST_JUMP && (vsp = -short_hop_speed && window_timer <= 3) && (down_down || down_pressed){
//    set_attack(AT_EXTRA_1);
//    hsp = -6*spr_dir;
//    vsp = -short_hop_speed;
//}


if get_gameplay_time() <= 15 set_attack(2);