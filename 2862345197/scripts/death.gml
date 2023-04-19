deathsfxnum = random_func( 0, 7, true ) + 1;
sound_play(sound_get("shelly_die"));
if !isrobot {
sound_play(sound_get("death_" + string(deathsfxnum)));
}
respawnsound = true;

if attack = AT_TAUNT_2 {
spawn_hit_fx( x, y, sd_2);
spawn_hit_fx( x, y, sd_1);
shake_camera( 100, 20 )
}

// destroy nodes
with obj_article1 if player_id == other.id {
    state = PS_DEAD;
}
node_connected = noone;