// ------------- death.gml -------------------
// this file runs for one frame on death

with (obj_article1)
{
    if (other.id == player_id) state = 3;
}

if (my_hitboxID.attack == AT_JAB and (my_hitboxID.hbox_num == 2)) 
{
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.transcendent = 1;
}
if (my_hitboxID.attack == AT_DSPECIAL_2 and (my_hitboxID.hbox_num == 1)) 
{
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.transcendent = 1;
}
if (my_hitboxID.attack == AT_NSPECIAL) 
{
    window = 3;
    window_timer = 0;
}
//sound_play(ssl_death_sound); //this plays when you die, change it in init for a different sound!