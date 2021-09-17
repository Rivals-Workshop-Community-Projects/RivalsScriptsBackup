//article1_init

//particle generation
can_be_grounded = false;
ignores_walls = true;
free = true;
uses_shader = true;
hitstop = 2;

state = 0;
sub_state = 0;

//theikos check
golden = false;
if ((player_id.theikos_active || get_player_color(player) == 31 || player_id.od_already_active || player_id.godpower)  && !player_id.is_8bit) golden = true;
else golden = false;

//particle stuff
particletime = 0;
anim_speed = 0.22;
vsp = 0;
hsp = 0;

text_letter = random_func(3, 15, true);