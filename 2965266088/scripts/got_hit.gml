//got_hit.gml

if (self_darkness)
{
    dark_shield_hp -= enemy_hitboxID.damage;
    //sound_play(sound_get("sfx_absorb"));
    var fx = spawn_hit_fx(x, y - 32, hit_fx_create(sprite_get("fx_darkorb_hit"), 16));
    fx.depth = depth - 2;
    fx.draw_angle = point_direction(0, 0, old_hsp, old_vsp);
    fx.hsp = old_hsp;
    fx.vsp = old_vsp;
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