//got_hit.gml

if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && attack = AT_DSPECIAL && super_armor)
{
    buy_vfx = spawn_hit_fx(hit_player_obj.x + random_func(0, 20, false) - 10, hit_player_obj.y + random_func(1, 20, false) - hit_player_obj.char_height - 10, buy_fx);
    buy_vfx.depth = depth - 1;	
    buy_vfx.spr_dir = 1;
    sound_play(sound_get("bcm_buy"));
    money += enemy_hitboxID.damage * 5;
    dspecial_hit = true;
}

if ((prev_state = PS_ATTACK_GROUND || prev_state = PS_ATTACK_AIR) && attack = AT_TAUNT && taunt_hit = false)
{
    money -= 50
    money_lost = 50;
    money_lost_gui_timer = 50;
    taunt_hit = true;
}