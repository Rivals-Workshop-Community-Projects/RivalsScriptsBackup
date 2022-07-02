//set_attack

if (attack == AT_DSPECIAL && meem_num != 0)
{
    attack = AT_DSPECIAL_2;
    if (call_count > 2)
    {
        attack = AT_DSPECIAL_AIR;
    }
}

effect_toggle = 1;

if (attack == AT_DATTACK && experimental = 1 && fourchan = 0)
{
	attack = AT_EXTRA_1;
}

if (attack == AT_TAUNT && down_down)
{
    if (dtaunt_toggle = 0)
    {
		dtaunt_mode = 1;
		dtaunt_toggle = 1;
		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
    	    spawn_hit_fx(x, y, weaponswitch);
    	    	sound_play(sound_get("2draw"));
    }
    else if (dtaunt_toggle = 1)
    {
        dtaunt_mode = 0;
        dtaunt_toggle = 0;
        window = 2;
    	window_timer = 0;
    	taunt_num = 1;
    }

}
if (attack == 49) {
    sprite_change_offset("finalsmash", 60, 62);
    window = 0;
    window_timer = 0;
}