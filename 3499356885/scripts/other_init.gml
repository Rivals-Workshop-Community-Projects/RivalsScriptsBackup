//Yoshi Egg Variables
is_yoshi_egged = false;
which_yoshi_egged = noone;
yoshi_egged_timer = 0;
yoshi_egged_timer_max = 0;
yoshi_egg_destroy = false;

//Yoshi Egg Compatibility
if "yoshi_egg_sprite" not in self{
    //print("Yoshi incompatible with Player " + string(player));
    yoshi_egg_sprite = -1;
}