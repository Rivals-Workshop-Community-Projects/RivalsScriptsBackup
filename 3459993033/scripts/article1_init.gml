state = PS_SPAWN
state_timer = 0;
lock_state = 0;
window = 0;

grabbed_players = []
cooldown = 0;

travel_direction = 0;
hitbox = noone;
zone_timer = 0;
zone_max_time = 140;

toadie_trajectory_direction = 0;
initial_direction = 50;
player_influence = 0.5; // X degrees a frame

depth = -8
//PS_IDLE -- idle
//PS_DEAD -- death anim

sprite_index = sprite_get("toady_spawn")

blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
ignores_walls = false;
target_player = noone;
target_player_position = {
    x: 0,
    y: 0
}

offscreen_arrow_enabled = true;             
article_offscreen = false;                  
offscreen_image = 0;                        
offscreen_x_pos = 0;                        
offscreen_y_pos = 0;

orig_depth = depth;

hud_col = get_player_hud_color(player);

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
 
kb_adj = 1.1;
kb_dir = 0;
orig_knock = 0;
 
hit_lockout = 0;
 
article_should_lockout = true; //set to false if you don't want hit lockout.