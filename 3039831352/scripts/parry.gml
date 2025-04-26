//parry.gml

var true_damage = floor(enemy_hitboxID.damage * lerp(1, 1.6, hit_player_obj.strong_charge/60));

//boost gain
boost_cur += boost_parrygain[boost_mode];
combo_push(boost_parrygain[boost_mode]);
if (boost_cur >= boost_max) boost_cur = boost_max;

blast_cur += true_damage * (4 + (4 * boost_mode));

//combo counter
combo_timer = combo_time_gain_big;
combo_timer_full = combo_timer;
comboing = true;
combo_hits ++;

#define combo_push(reward)
{
    if (array_find_index(combo_boost_display, noone) > -1) //add combo display view
    {
        var temp_index = array_find_index(combo_boost_display, noone);
        combo_boost_display[temp_index] = reward;
    }
    else array_push(combo_boost_display, reward);

    if (array_find_index(combo_display_time, noone) > -1) //reset timers/add new ones
    {
        var temp_index = array_find_index(combo_display_time, noone);
        combo_display_time[temp_index] = combo_display_time_max;
    }
    else array_push(combo_display_time, combo_display_time_max);
}