//La Reina article1_init.gml

init = 0;
sprite_index = sprite_get("chair_invisible");
sprite_visible_index = sprite_get("chair");
sprite_copy_index = sprite_get("chair");
sprite_outline_index = sprite_get("chair_outline");
outline_opacity = 0;
mask_index = sprite_get("chair_hurt");
pre_draw_index = 0;

chair_shine_index = sprite_get("chair_shine");
shine_timer = 0; shine_timer_max = 20;

chair_drangle = 0;

draw_x = 0; draw_y = 0;
drangle = 0; draw_frame = 0;
chair_color = c_white;

magnetring_sprite = sprite_get("magnetring");
magnetring_anim = 0;
magnetring_animax = 53;

//STATE MACHINE
lifetime = 0;
window = 0;
window_timer = 0;
window_length = [10, 4];
window_anim_frames = [5, 1];
window_start_frames = [0, 5];
chair_anim_speed = 0.5;

//Default variables
uses_shader = true;
can_be_grounded = true;
ignores_walls = false;
spr_dir = player_id.spr_dir;

//Movement
nspecial_initial_vspeed = -17; // vsp applied when thrown by Nspecial
give_initial_vspeed = true;
nspecial_hspeed = 2.2; // Base forward movement for Nspecial toss. Can be modified by holding right or left.
initial_dspecial_vspeed = -5
chair_gravity = 0.7; //vsp applied cumulatively
chair_max_fallspeed = 18;
tempfacing = player_id.spr_dir;
last_facing = player_id.spr_dir;
can_land = false;
vibecheck = false;

flytoward_x = player_id.x+1*player_id.spr_dir;
flytoward_y = player_id.y-100;
flyspeed_base = 0.1;
flyspeed = flyspeed_base;
flyspeed_accel = 1.2
flyspeed_max = 14;

stage_left = get_stage_data(SD_X_POS);
stage_right = room_width - get_stage_data(SD_X_POS);
stage_top = get_stage_data(SD_Y_POS);

//Hitting the chair
knockback_distance = 10;
knockback_speed_x = 20;
knockback_speed_y = 0;
knockback_angle = 0;

//Presently unused
chair_grab_x_right = 0;
chair_grab_x_left = 0;
chair_grab_y_top = 0;
chair_grab_y_bottom = 0;
//

blastzone_right = get_stage_data(SD_RIGHT_BLASTZONE_X);
blastzone_left = get_stage_data(SD_LEFT_BLASTZONE_X);
blastzone_top = get_stage_data(SD_TOP_BLASTZONE_Y);
blastzone_bottom = get_stage_data(SD_BOTTOM_BLASTZONE_Y);


//The hitbox that hits folx
hitboxlock = noone;
has_made_hitbox = false;
haslanded = false;

//Get hit stuff
is_a_La_Reina_chair = true;
is_hittable = true;
hittable_hitpause_mult = 1;
gethit_hitpause = 10;
gethit_angle = 45;
gethit_spr_dir = 1;
gethit_knockback = 10;
gethit_grabbed = noone;
gethit_postgrab = false;
gethit_hitlockouts = [0,0,0,0];
gethit_hitpause_countdown = 0;
recently_hit = false;
most_recent_hitbox = noone;

//SFX
sfx_spinlooptime = 15;
sfx_timer = sfx_spinlooptime;

//Death
chair_death_effect = hit_fx_create(sprite_get("chair_death"), 20);
spawn_death_effect = false;
