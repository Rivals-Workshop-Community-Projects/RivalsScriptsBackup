//got_hit.gml

//print ("got hit - " + string(game_time/60))

if (self_darkness)
{
    dark_shield_hp -= enemy_hitboxID.damage;
    if (has_rune("C")) take_damage(player, player, floor(enemy_hitboxID.damage/2) * -1);
}
if (enemy_hitboxID.player_id == darkness_id) dark_shield_hp -= ceil(enemy_hitboxID.damage/2);

if (graze_delay > 0)
{
    graze_failed = true;
    sound_stop(sound_get("sfx_graze"));
    with (hit_fx_obj) if (player == other.player && hit_fx == other.fx_graze || hit_fx == other.msg_graze) step_timer = hit_length;
}

if (temp_dark_shield_hp > 0)
{
    dark_shield_hp = floor(temp_dark_shield_hp);
	darkness_id = self;
	darkness_owner = self;
	dark_state = 0;
    temp_dark_shield_hp = 0;
}

//uspec wings disrupt
with (hit_fx_obj) if (hit_fx == other.fx_uspec_wings[0])
{
    with (other)
    {
        var new_fx = spawn_hit_fx(x, y, fx_uspec_wings[2])
        new_fx.spr_dir = other.spr_dir;
    }
    step_timer = hit_length;
}

if (state_cat == SC_HITSTUN)
{
    spell_bg = false;

    if (my_grab_id != noone)
    {
        my_grab_id.hitstop = 0;
        my_grab_id = noone;

        if (enemy_hitboxID.kb_value == 0) set_state(PS_IDLE);
    }
}