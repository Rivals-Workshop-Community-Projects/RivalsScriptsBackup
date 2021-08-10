//

//sound_play(sound_get("turnLong02"));

var nr = random_func(0, 4, true)+1;
if(nr < 10)
    nr = "0"+string(nr);
else
    nr = string(nr);
sound_play(sound_get("hurt" + nr));
//TODO: different hurts based on dmg?



var mul = 0;
//enemy_hitboxID.damage
//get_player_damage(player)
//state_cat == SC_HITSTUN
//enemy_hitboxID.kb_value
//enemy_hitboxID.kb_scale

//mul += enemy_hitboxID.damage * 0.05;
//mul += get_player_damage(player) * 0.0025;
mul += enemy_hitboxID.kb_value * 0.025;
mul += enemy_hitboxID.kb_scale * get_player_damage(player) * 0.0025;

traumaX += random_func(0,2,false) * mul;
traumaY += random_func(1,2,false) * mul;