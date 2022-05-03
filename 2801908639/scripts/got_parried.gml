//got_parried.gml

with obj_article1
{
    if player_id == other.id{
        belongsto = other.hit_player;
    }
}
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
if grabbedid != noone 
{
    grabbedid.invincible = false;
    grabbedid.wrap_time = 0;
    grabbedid.ungrab = 0;
    grabbedid = noone;
}
