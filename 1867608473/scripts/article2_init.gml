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

hit_cool = 0;
damage_to_deal = 0;

soul_hit_vis = 0;

was_hit = false;

soundplayed = false;

lifetime = 0;
lifetime_max = 6000;

hitbox = noone;

hittable_hitpause_mult = 0;
hitstop = 0;
hitstun = 0;
damage = 0;
knockback_adj = 1;
orig_knock = 0;

offscreen_track = 8;

// Sprites
sprite[0]     = asset_get("empty_sprite");          //
sprite[1]     = asset_get("empty_sprite");          //
sprite[2]     = asset_get("empty_sprite");          //
sprite[3]     = asset_get("empty_sprite");          //
sprite[4]     = asset_get("empty_sprite");          //
sprite[5]     = asset_get("empty_sprite");          //
sprite[6]     = asset_get("empty_sprite");          //
sprite[7]     = asset_get("empty_sprite");          //
sprite[8]     = asset_get("empty_sprite");          //
sprite[9]     = asset_get("empty_sprite");          //
sprite[10]    = asset_get("empty_sprite");          //

real_sprite[0] = sprite_get("soul");
real_sprite[1] = sprite_get("soul");
real_sprite[2] = sprite_get("soul_pull");
real_sprite[3] = sprite_get("soul");
real_sprite[4] = sprite_get("soul");
real_sprite[5] = sprite_get("soul");
real_sprite[6] = sprite_get("soul_fspec_recover");
real_sprite[7] = sprite_get("soul_nspec_charge");
real_sprite[8] = sprite_get("soul_nspec_active");
real_sprite[9] = sprite_get("soul_nspec_recover");
real_sprite[10] = sprite_get("soul_flying");

offscreen_track = 0;

// Animation Handling
anim_type[0] = 0;
anim_type[1] = 0;
anim_type[2] = 0;
anim_type[3] = 0;
anim_type[4] = 0;
anim_type[5] = 0;
anim_type[6] = 7;
anim_type[7] = 5;
anim_type[8] = 5;
anim_type[9] = 6;
anim_type[10] = 0;


//
image_index = 0;            // Animates the sprite
mask_index = sprite_get("soulhurt");
uses_shader = true;