//Muno template

user_event(3); //Echo t/f init


//TEMP

note_sfx = 0;   //Index of the sound to play
note_not = 1;   //Note(s) to play in the key; use array for multiple; starts at 1 (so that fifths = 5, etc)
note_key = 0;   //Key; 0 = A
note_sca = 0;   //Choose the scale; 0 chromatic, 1 major, 2 minor (minor doesnt work lol)
note_oct = 0;   //Octave
note_vol = 1;   //Volume



//Sprites

spr_fspecial_2 = sprite_get("fspecial_2");
spr_dspecial_2 = sprite_get("dspecial_2");

//Air Guitar
spr_guitar_hurtbox = sprite_get("guitar_hurtbox");
spr_guitar_idle = sprite_get("guitar_idle");
spr_guitar_upright = sprite_get("guitar_upright");
spr_guitar_hitbox = sprite_get("guitar_hitbox");
spr_guitar_hitbox_charged = sprite_get("guitar_hitbox_charged");
spr_guitar_hurt = sprite_get("guitar_idle");
spr_guitar_spin_passive = sprite_get("guitar_idle");
spr_guitar_bounce = sprite_get("guitar_idle");
spr_guitar_attack = sprite_get("guitar_idle");
spr_guitar_thunder = sprite_get("guitar_idle");

//HUD
spr_hud_fspecial_cooldown = sprite_get("hud_fspecial_cooldown");
spr_hud_chord_icons = sprite_get("hud_chord_icons");
spr_hud_chord_bar = sprite_get("hud_chord_bar");
spr_hud_chord_bar_grey = sprite_get("hud_chord_bar_grey");
spr_hud_chord_bar_fill = sprite_get("hud_chord_bar_fill");
spr_hud_chord_bar_sparks = sprite_get("hud_chord_bar_sparks");
spr_hud_chord_cd_end_1 = sprite_get("hud_chord_cd_end_1");
spr_hud_chord_cd_end_2 = sprite_get("hud_chord_cd_end_2");
spr_hud_notes = sprite_get("hud_notes");

//VFX
spr_vfx_chord_change = sprite_get("vfx_chord_change");
spr_vfx_fspecial_start = sprite_get("vfx_fspecial_start");
spr_vfx_fspecial_full = sprite_get("vfx_fspecial_full");

//Misc.
spr_empty = sprite_get("empty");









//Temp



//Coda general

do_turn_thing = false; //fix dash turnaround

fspecial_charge = 0;
fspecial_charge_max = 16;

can_uspecial_bounce = true;

// special_cooldown = 0;
special_cooldown_max = 150;
chord_handler_timer = 0;



//Power Chords

num_chords = 5;

//chord_color[0] = make_color_rgb(200, 200, 200);

var alt_cur = get_player_color(player);
var white_r = get_color_profile_slot_r(alt_cur, 7);
var white_g = get_color_profile_slot_g(alt_cur, 7);
var white_b = get_color_profile_slot_b(alt_cur, 7);

if echo chord_color = [
    make_color_rgb(white_r, white_g, white_b),
    make_color_rgb(243, 21, 107),
    make_color_rgb(139, 242, 30),
    make_color_rgb(255, 105, 12),
    make_color_rgb(21, 243, 200),
    make_color_rgb(90, 21, 243),
    c_white];

else chord_color = [
    make_color_rgb(white_r, white_g, white_b),
    make_color_rgb(33, 243, 21),
    make_color_rgb(30, 130, 242),
    make_color_rgb(240, 188, 39),
    make_color_rgb(131, 88, 241),
    make_color_rgb(239, 45, 39),
    c_white];

chord_notes = [
    [1, 3, 5],
    [1, 4, 6],
    [2, 5, 7],
    [2, 4, 6],
    [3, 5, 7],
    [4, 5, 0]
];



chord_angle_range = (360 / num_chords);

for (var i = 1; i <= num_chords; i++){
    var temp_angle = 90 + chord_angle_range * i;
    if (temp_angle <= 0) temp_angle += 360;
    
    chord_menu_angle[i] = temp_angle;
    chord_menu_test[i] = 0;
}

chord_menu_distance = 90;

chord_menu_timer_length = 10; //open and close dur

chord_menu_cursor = 0;
chord_menu_cursor_timer = 0;
chord_menu_state = 0;
chord_menu_timer = 0;
chord_menu_idle_timer = 0;

 chord_active = 0; //inherited from article
   prev_chord = 0;
  shown_chord = 0; //HUD
   jump_chord = false;
  speed_chord = false;
 shield_chord = false;
 buster_chord = false;
  smash_chord = false;
  float_chord = false;
  slide_chord = false;
  dodge_chord = false;
   stun_chord = false;
reverse_chord = false;



//Chord afterimages

afterimg_num = 5;
afterimg_timer = 0;
afterimg_timer_max = 10;
afterimg_linger = 20;

for (i = 0; i < afterimg_num; i++){
    afterimg_x[i] = 0;      //x
    afterimg_y[i] = 0;      //y
    afterimg_sprite[i] = sprite_get("idle"); //sprite_index
    afterimg_frame[i] = 0;  //image_index
    afterimg_angle[i] = 0;  //image_angle
    afterimg_dir[i] = 0;    //spr_dir
    afterimg_col[i] = 0;    //color
    afterimg_time[i] = 0;
}

chord_flourish_timer = 0;
chord_flourish_timer_max = 26;



//Stats

chord_objs = [];

for (i = 0; i <= num_chords; i++){
    chord_objs[i] = {
        //size
        knockback_adj:          1,
        
        //ground
        walk_speed:             3.25,
        initial_dash_speed:     6.5,
        dash_speed:             6,
        moonwalk_accel:         1,
        ground_friction:        0.5,
        dash_turn_accel:        2,
        dash_stop_percent:      .35,
        
        //air
        leave_ground_max:       6.5,
        max_jump_hsp:           6.5,
        air_max_speed:          4.5,
        air_accel:              0.3,
        air_friction:           0.04,
        max_fall:               10,
        fast_fall:              14,
        gravity_speed:          0.6,
        jump_change:            3,
        
        //jumps
        jump_speed:             12,
        short_hop_speed:        8,
        djump_speed:            10,
        djump_accel:            0,
        djump_accel_end_time:   0,
        djump_sound:            asset_get("sfx_jumpair"),
        walljump_hsp:           5,
        walljump_vsp:           7,
        
        //landing
        wave_land_adj:          1,
        wave_friction:          0.15,
        
        //misc
        damage_multiplier:      1,
        launch_multiplier:      1,
        dtaken_multiplier:      1,
        extra_hitpause:         0,
        dodge_active_frames:    1,
        dodge_recovery_frames:  3,
        roll_forward_max:       7.5,
        roll_backward_max:      7.5,
        air_dodge_speed:        7.5,
        techroll_speed:         7.5
    };
}

damage_multiplier = 	chord_objs[0].damage_multiplier;
launch_multiplier = 	chord_objs[0].launch_multiplier; 
dtaken_multiplier = 	chord_objs[0].dtaken_multiplier;



if echo{

    with chord_objs[1]{ //Float
        knockback_adj =         1.2;
        air_max_speed =         7;
        air_accel =             0.4;
        max_fall =              7;
        fast_fall =             11;
        gravity_speed =         0.2;
        jump_speed =            6;
        short_hop_speed =       4;
        djump_speed =           -3; // -7
        djump_accel =           -1.05; // -1.3
        djump_accel_end_time =  14;
        djump_sound =           asset_get("sfx_absa_jump");
        walljump_hsp =          5;
        walljump_vsp =          5;
    }
    
    with chord_objs[2]{ //Slide
        ground_friction =       0.025;
        dash_turn_accel =       1;
        dash_stop_percent =     1;
        wave_friction =         0;
        leave_ground_max =      100;
        max_jump_hsp =          100;
        air_friction =          0;
        dash_speed =            4;
        damage_multiplier =     0.9;
        launch_multiplier =     0.9;
    }
    
    with chord_objs[3]{ //Dodge
        knockback_adj =         1.2;
        roll_forward_max =      15;
        roll_backward_max =     15;
        air_dodge_speed =       12;
        techroll_speed =        15;
    }
    
    with chord_objs[4]{ //Stun
        knockback_adj =         1.1;
        damage_multiplier =     1.2; // 1.1
        launch_multiplier =     0.6; // 0.9
        dtaken_multiplier =     1.3;
        
        // walk_speed =            2;
        // initial_dash_speed =    4;
        // dash_speed =            4;
        // moonwalk_accel =        0.8;
        leave_ground_max =      4;
        max_jump_hsp =          4;
        air_max_speed =         3;
        air_accel =             0.2;
        jump_speed =            10;
        short_hop_speed =       6;
        djump_speed =           9;
        walljump_hsp =          4;
        walljump_vsp =          5;
        // wave_land_adj =         0.8;
    }
    
    with chord_objs[5]{ //Reverse
        // knockback_adj = 1.2;
        // damage_multiplier = 0.7;
        // launch_multiplier = 0.9;
        knockback_adj = 1.2;        //community patch
        dtaken_multiplier = 1.1;    // |
        launch_multiplier = 0.6;    // V
    }
    
}



else{
    
    with chord_objs[1]{ //Jump
        knockback_adj =         1.2;
        dtaken_multiplier =     1.2; // 1
        damage_multiplier =     0.8; // 1
        //air_max_speed =         8;
        //air_accel =             0.4; // 0.5
        max_fall =              12;
        fast_fall =             17;
        gravity_speed =         0.8;
        //jump_speed =            17; // 19
        short_hop_speed =       9; // 11
        //djump_speed =           16; // 18
        air_max_speed =           7;    //community patch
        air_accel =             0.35;   // |
        jump_speed =            16;     // |
        djump_speed =           15;     // V
        walljump_hsp =          8;
        walljump_vsp =          10;
    }
    
    with chord_objs[2]{ //Speed
        walk_speed =            6;
        initial_dash_speed =    9; // 10
        dash_speed =            9;
        moonwalk_accel =        1.5;
        leave_ground_max =      10; // 11
        max_jump_hsp =          10;
        air_max_speed =         8;
        air_accel =             0.4;
        jump_speed =            10;
        short_hop_speed =       6;
        djump_speed =           9;
        walljump_hsp =          4;
        walljump_vsp =          5;
        wave_land_adj =         1.5;
        damage_multiplier =     0.8;
        launch_multiplier =     0.8;
    }
    
    with chord_objs[3]{ //Shield
        knockback_adj =         0.6;
        walk_speed =            2;
        initial_dash_speed =    4;
        dash_speed =            4;
        moonwalk_accel =        0.8;
        leave_ground_max =      4;
        max_jump_hsp =          4;
        air_max_speed =         3;
        air_accel =             0.2;
        jump_speed =            10;
        short_hop_speed =       6;
        djump_speed =           9;
        walljump_hsp =          4;
        walljump_vsp =          5;
        wave_land_adj =         0.8;
        dtaken_multiplier =     0.75;
        damage_multiplier =     0.5;
        launch_multiplier =     0.5;
        dodge_active_frames =   3;
        dodge_recovery_frames = 1;
    }
    
    with chord_objs[4]{ //Buster
        knockback_adj = 1.1;
        //damage_multiplier = 1.5;
        damage_multiplier = 1.4;    //community patch
        launch_multiplier = 0.7;
        dtaken_multiplier = 1.3;
    }
    
    with chord_objs[5]{ //Smash
        knockback_adj = 1.2;
        damage_multiplier = 0.7;
        launch_multiplier = 1.3;
        dtaken_multiplier = 1.1;
    }
    
}



//Physical size
char_height = 60;
knockback_adj = chord_objs[0].knockback_adj;

//Animation speeds (who cares)
idle_anim_speed = .13;
crouch_anim_speed = .1;
walk_anim_speed = .13;
dash_anim_speed = .26;
pratfall_anim_speed = .25;

//Ground movement
walk_speed = chord_objs[0].walk_speed;
walk_accel = 1;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = chord_objs[0].initial_dash_speed;
dash_speed = chord_objs[0].dash_speed;
dash_turn_time = 10;
dash_turn_accel = chord_objs[0].dash_turn_accel;
dash_stop_time = 6;
dash_stop_percent = chord_objs[0].dash_stop_percent;
ground_friction = chord_objs[0].ground_friction;
moonwalk_accel = chord_objs[0].moonwalk_accel;
    
//Air movement
leave_ground_max = chord_objs[0].leave_ground_max;
max_jump_hsp = chord_objs[0].max_jump_hsp;            
air_max_speed = chord_objs[0].air_max_speed;           
jump_change = chord_objs[0].jump_change;               
air_accel = chord_objs[0].air_accel;
prat_fall_accel = 0.8;         
air_friction = chord_objs[0].air_friction;
max_fall = chord_objs[0].max_fall;                 
fast_fall = chord_objs[0].fast_fall;                
gravity_speed = chord_objs[0].gravity_speed;
hitstun_grav = .5;

//Jumps
jump_start_time = 5;
jump_speed = chord_objs[0].jump_speed;
short_hop_speed = chord_objs[0].short_hop_speed;
djump_speed = chord_objs[0].djump_speed;
djump_accel = chord_objs[0].djump_accel;
djump_accel_end_time = chord_objs[0].djump_accel_end_time;
max_djumps = 1;
double_jump_time = 32;          //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = chord_objs[0].walljump_hsp;
walljump_vsp = chord_objs[0].walljump_vsp;
walljump_time = 32;
wall_frames = 2;                //anim frames before you leave the wall

//Landing and wavelanding
land_time = 4;                  //normal landing frames
prat_land_time = 16;
wave_land_time = 12;
wave_land_adj = chord_objs[0].wave_land_adj;           //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = chord_objs[0].wave_friction;            //grounded deceleration when wavelanding



spr_plat_behind = sprite_get("plat_behind");




//Animation Frames

//Crouch
crouch_startup_frames = 3;
crouch_active_frames = 8;
crouch_recovery_frames = 1; //must be 1 less than actual num of frames

//Parry
dodge_startup_frames = 1;
dodge_active_frames = chord_objs[0].dodge_active_frames;
dodge_recovery_frames = chord_objs[0].dodge_recovery_frames;

//Tech
tech_active_frames = 2;
tech_recovery_frames = 1;

//Tech roll
techroll_startup_frames = 1
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 10;

//Airdodge
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = chord_objs[0].air_dodge_speed;

//Roll
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = chord_objs[0].roll_forward_max;
roll_backward_max = chord_objs[0].roll_backward_max;



//Misc.

//SFX init
sfx_guitar_ready = sound_get("guitar_ready");
sfx_guitar_note = sound_get("guitar_note");

//VFX init
vfx_chord_flash = hit_fx_create(spr_guitar_upright, 30);
vfx_chord_flourish = hit_fx_create(spr_vfx_chord_change, 25);
vfx_fspecial_start = hit_fx_create(spr_vfx_fspecial_start, 15);
vfx_fspecial_full = hit_fx_create(spr_vfx_fspecial_full, 15);

//Hurtbox sprites
hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//Victory
set_victory_bg(sprite_get("victory"));
set_victory_theme(sound_get("win_coda"));

//SFX
land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_med");
waveland_sound = asset_get("sfx_waveland_ran");
jump_sound = asset_get("sfx_jumpground");
djump_sound = chord_objs[0].djump_sound;
air_dodge_sound = asset_get("sfx_quick_dodge");

//Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;



var theres_guitar = false;

with obj_article1 if player_id == other.id theres_guitar = true;

if !theres_guitar guitar = instance_create(x, y - 500, "obj_article1"); //make guitar



user_event(14);