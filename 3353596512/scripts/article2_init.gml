//jeb

can_be_grounded = false;                    
ignores_walls = true;                      
uses_shader = false;

hsp = 0;
vsp = 0;
hitstop = 0;

spr_dir = 1;

sprite_index = sprite_get("jeb_open");
mask_index = asset_get("jeb_mask");
image_index = 0; 
anim_speed = 0.35;

image_xscale = 2;
image_yscale = 2;
depth = player_id.depth + 15;
orig_depth = depth;

state = 1;
state_timer = 0;

scrap_instances = [
    {
        index : 0,
        pos : 0
    },
    {
        index : 0,
        pos : 0
    },
    {
        index : 0,
        pos : 0
    },
    {
        index : 0,
        pos : 0
    },
    {
        index : 0,
        pos : 0
    }
];

scrap_on_counter = [
];

scrap_total = 0;
base_bonus = 0;

hud_col = get_player_hud_color(player); 

jeb_sound = noone;
jeb_busy_timer = 0;
jeb_busy_timer_max = 480;
jeb_patience = random_func(11, 4, true) + 3;
jeb_has_hit = false;

items_taken = false;

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

offscreen_arrow_enabled = true;             
article_offscreen = false;                  
offscreen_image = 0;                        
offscreen_x_pos = 0;                        
offscreen_y_pos = 0;