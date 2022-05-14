//article1_init

init = 0;
sprite_index = sprite_get("empty");
mask_index = sprite_get("kunai_collision");

sprite_change_offset("kunai_grounded", 66, 88);

depth = -9;

stance = 0;
state = 0;
state_timer = 0;
idle_cycle = 0;
use_left = 1;
red_mode = 0;
k_grav = 0.2;
hit_timer = 0;
hsp_old = 0;
vsp_old = 0;
knockback_ease = false;

log_kunai = true;

hurtbox_vis = false;

wall = false;
dir = false;
wall_override = false;
_block = asset_get("par_block");

wobble = 0;
wobble_frame = 0;

indicator_anyway = false;
free = false;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;

fx_rhit_med = hit_fx_create( sprite_get( "_fx_rhit2" ), 18 );
fx_bhit_med = hit_fx_create( sprite_get( "_fx_bhit2" ), 18 );

//Supersonic's Hit Detection----------------------------------------------------
 
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