//death.gml

//touhou death stuff lmao
sound_play(sound_get("sfx_death"));

fx_death_dir = point_direction(x, y, x + to_death_spd[0], y + to_death_spd[1]);
var spd = 10;
var spread = 11;
var amount = 6 + floor(get_player_damage(player) / 32); // 6 - 37
for (var i = 0; i < amount; i ++)
{
    var fx = spawn_hit_fx(x, y, temp_level == 0 ? fx_death[player] : fx_death[0]);
    var rng_x = (random_func(i, spread, true) - floor(spread/2)) / 2;
    var rng_y = (random_func(i + 12, spread, true) - floor(spread/2)) / 2;
    fx.hsp = rng_x + lengthdir_x(spd, fx_death_dir);
    fx.vsp = rng_y + lengthdir_y(spd, fx_death_dir);
    fx.spr_dir = 1;
}

//command grab release code
if (my_grab_id != noone)
{
    my_grab_id.hitstop = 0;
    my_grab_id = noone;
}

if (dark_cd > 0) dark_cd = 0;
dark_hp_temp = 0;

if (spell_bg) spell_bg = false;
if (has_superspell) superspell_cur /= 2;

//respawn halloween hat when she dies
if (alt_cur == 16 && get_match_setting(SET_SEASON) == 3 && get_player_stocks(player) > 1) koa_hat = true;