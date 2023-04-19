set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
should_cancel_shine = false;
if grabbedid != noone 
{
    grabbedid.invincible = false;
    grabbedid.wrap_time = 0;
    grabbedid.ungrab = 0;
    grabbedid = noone;
}
move_cooldown[AT_USPECIAL] = 0; //Krankees Stuff
