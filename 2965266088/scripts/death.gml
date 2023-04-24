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


spell_bg = false;


//darkness reset
has_darkness = false;
darkness_cd = 0;
dark_state = -1;
dark_shield_hp = max_dark_shield_hp;

//if rumia dies and is the owner of a darkness orb that's on the field
if (darkness_id != noone) 
{
    darkness_id.dark_state = 4;
    darkness_id = noone;
}

//if rumia has an owner that died, for some reason the code in update doesn't wanna run for her too
if (darkness_owner != noone)
{
    darkness_owner.darkness_id = noone;
    dark_state = -1;
    darkness_owner = noone;
}