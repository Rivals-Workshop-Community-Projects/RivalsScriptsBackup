//got_hit.gml

true_dmg = enemy_hitboxID.damage * lerp(1, 1.6, strong_charge/60);

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

if (dark_hp_cur > 0) //hit with darkness
{
    dark_hp_cur -= floor(true_dmg);
    if (dark_hp_cur <= 0) dark_hp_cur = 0;

    if (dark_target == self)
    {
        if (has_rune("C")) take_damage(player, hit_player_obj.player, floor(true_dmg/2) * -1);

        var fx = spawn_hit_fx(floor(x), floor(y) - 32, hit_fx_create(sprite_get("fx_darkorb_hit"), 16));
        fx.depth = depth - 2;
        fx.draw_angle = point_direction(0, 0, old_hsp, old_vsp);
        fx.hsp = old_hsp;
        fx.vsp = old_vsp;
    }
}

if (graze_state != 2) //can't graze
{
    graze_state = 2;
    grazing_time = grazing_time_max;
    sound_stop(graze_sound);
}

graze_lockout = graze_lockout_max + floor(hitstop_full);


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