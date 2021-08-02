// other init


var i = 0;
repeat(100)
{
    other_afterimage_array[i] = -1;
    i++;
}

other_arrayindex = 0;
black_screen = false;
other_array_cleared = true;

// Flicker stuff
other_flickercount = 0;
other_flickerback = false;


in_portal = false;
teleported = false;
last_pcolor = 0;
portal_timer = 2;
portal_cooldown = 0;
portal_afterimage = {x:x,y:y,sprite_index:sprite_index,image_index:image_index,spr_dir:spr_dir,timer:0};
portal_white = 0;
last_spr_dir = 1;
portal_delay = 0;
max_portal_delay = 15;

// Portal line stuff
port1x = 0;
port1y = 0;
port2x = 0;
port2y = 0;
port1  = 0;
port2  = 0;
portal_speed = 0;
denom  = 0;
line_A = 0;
line_B = 0;
line_C = 0;

last_teleport_x = 0;
last_teleport_y = 0;

has_monarch_variables = true;
last_monarch = noone;

