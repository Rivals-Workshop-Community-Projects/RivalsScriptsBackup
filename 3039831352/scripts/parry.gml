//parry.gml

var true_damage = floor(enemy_hitboxID.damage * lerp(1, 1.6, hit_player_obj.strong_charge/60));

//boost gain
boost_cur += boost_parrygain[boost_mode];
if (boost_cur >= boost_max) boost_cur = boost_max;

blast_cur += true_damage * (4 + (4 * boost_mode));

//combo counter
combo_timer = combo_time_gain_big;
comboing = true;