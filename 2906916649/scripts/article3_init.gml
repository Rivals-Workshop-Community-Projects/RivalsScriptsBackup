//p2 init
//sprite/mask
sprite_index = sprite_get("dspecial_bobblehat");
mask_index = asset_get("ex_guy_hurt_box");
spr_dir = player_id.spr_dir

//base article stuff
can_be_grounded = true;
ignores_walls = false;

//state, window and timer for the anim/states
state = 1; //1 is active 2 is dead
window = 1; //window
window_timer = 0; //window timer
window_length = 6; //length of the window
anim_frame_start = 0; //animation frame the window starts at
anim_frames = 1; //how many animation frames the window has
last_window = 3; //last window number of the state

//other
i_do_not_control_the_speed_at_which_lobsters_die = false; //whether the die is controlled or not
bullet = noone;
