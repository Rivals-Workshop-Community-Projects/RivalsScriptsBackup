// Init

// Article Variables
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                              //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.
through_platforms = true;

// Custom Variables
state = 0;
prev_state = 0;
state_timer = 0;
lifetime = 1;

rune_id = 0;

soundplayed = false;
createhitbox = true;

art_col = get_player_hud_color(player_id.player);
flash = false;
flash_timer = 0;

hbox = noone;

// Sprites
// Rune (Speed)
sprite[0]     = player_id.spr_speedrune_spawn;      // Summoning
sprite[1]     = player_id.spr_speedrune_active;     // Active
sprite[2]     = player_id.spr_speedrune_shatter;    // Shatter
sprite[3]     = asset_get("empty_sprite");          // Despawning

// Rune (Explosion)
/*
sprite[4]     = player_id.spr_boomrune_spawn;       // Summoning
sprite[5]     = player_id.spr_boomrune_active;      // Active
sprite[6]     = player_id.spr_boomrune_shatter;     // Shatter
sprite[7]     = asset_get("empty_sprite");          // Despawning
*/

is_eirlys_rune = true;

offscreen_track = 0;

// Animation Handling
// Speed Rune
anim_type[0] = 5;
anim_type[1] = 2;
anim_type[2] = 4;
anim_type[3] = 2;

// Boom Rune
anim_type[4] = 7;
anim_type[5] = 3;
anim_type[6] = 6;
anim_type[7] = 3;

//
image_index = 0;            // Animates the sprite
uses_shader = true;
