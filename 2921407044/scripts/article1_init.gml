//article1_init.gml

//Set Variables
sprite_index = sprite_get("suitcase_bomb");
//sprite_index = sprite_get("suitcase_bomb_hurt");
mask_index = sprite_get("suitcase_bomb_hurt");
//mask_index = sprite_get("crouch_hurtbox");
depth = -3;
image_blend = c_dkgray;
image_index = 0;
image_xscale = player_id.spr_dir;
image_yscale = 1;

// Other Article Functions
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;

// Set Timers
article_timer = 0; // Initalize Total Timer
total_lifetime = 60 * 4;
priming_timer = 30;
flash_timer = 0;

// Set State Data
state = 0;
state_timer = 0;

// Set Priming time on article
hitbox_created_ID = 0;

//Set initial speed variables if thrown on the floor
if(!player_id.free){
    vsp = -3;
    hsp = 3 * player_id.spr_dir;
}

// Set initial speed variables if thrown in the air
if(player_id.free){
    vsp = -3;
    hsp = 3 * player_id.spr_dir;
}

// Set the rate of speed loss variables and adjust them by what direction you are facing.
vsp_rate_of_change = .075 * -1;
hsp_rate_of_change = .045 * player_id.spr_dir; 

// Variables for suitcase ticking sound Need to change this
//article1_sound_ID = sound_play(sound_get("suitcase_ticking"));


///SUPERSONIC Hit Detection
 
///      article[index]_init.gml
//You may put this code anywhere in your article init.
 
//make hbox_group array (the old version was really bad because the array actually affected all players no matter what lol)
hbox_group = array_create(4,0);
var i1 = 0;
var i2 = 0;
repeat(4) {
    hbox_group[@i1] = array_create(50,0);
    repeat(50) {
        hbox_group[@i1][@i2] = array_create(10,0);
        i2++;
    }
    i2 = 0;
    i1++;
}
 
hitstun = 0;
hitstun_full = 0;
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;
 
hit_lockout = 0;
 
article_should_lockout = true; //set to false if you don't want hit lockout.
