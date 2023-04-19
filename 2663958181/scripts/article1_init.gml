is_squr_cloud = true;

// Init
// Article Variables
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                              //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.
through_platforms = true;

full_move = 128;
stage_x = get_stage_data(SD_X_POS);
stage_x_right = room_width - stage_x;
stage_y = round(get_stage_data(SD_TOP_BLASTZONE) / 3);
move_amt = .05;

hsp = 0;
vsp = 0;

// Custom Variables
state = 0;
prev_state = 0;
state_timer = 0;
lifetime_max = 1200;
lifetime = 0;

soundplayed = false;

art_col = get_player_hud_color(player_id.player);
flash = false;
flash_timer = 0;

// Fancy Particle (thanks rioku);

// spr_raindrop is in init.gml btw
// call it with player_id.spr_raindrop (just in case I want to change it to like snow on a skin or something).

//rain_particles = {x:x + i * 9.5, y:y, sprite_index:player_id.spr_raindrop, color:c_white}  
rain_particle_count = 20;
rain_particle_rate = 5; //frames to wait between rain particles
rain_particles[0] = {x:x, y:y, sprite_index:player_id.spr_raindrop, visible:false, fall_speed:5}
for(var i = 1; i <= rain_particle_count; i++){
   rain_particles[i] = {x:x, y:y, sprite_index:player_id.spr_raindrop, visible:false, fall_speed:5} 
}

// Sprites
sprite[0]     = player_id.spr_rain_summon;    // Creating
sprite[1]     = player_id.spr_rain_active;    // Raining
sprite[2]     = player_id.spr_rain_active;    // Moving
sprite[3]     = player_id.spr_rain_vanish;    // Disappearing

offscreen_track = 0;

// Animation Handling
anim_type[0] = 3;
anim_type[1] = 2;
anim_type[2] = 2;
anim_type[3] = 4;

mask_index = sprite_get("rainmask");

//
image_index = 0;            // Animates the sprite
uses_shader = true;