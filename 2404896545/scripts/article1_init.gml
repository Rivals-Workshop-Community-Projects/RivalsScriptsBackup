//article1_init 
sprite_index = sprite_get("shell");
state_timer = 0;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
become_transparent = false;
transparent_change = 5;
transparent_timer = 0;
death_timer = 0;
vsp = 0;
hsp = 0;

shell_tilt = 0;
futurehsp = 10;
futurevsp = -20;

give_shelled = false;

state = 0;

hitangle = 0;
hitpausing = 0;
hitstrength = 0;

hitplayer = 0;
hitconnect = false;
playerhitpause = false;