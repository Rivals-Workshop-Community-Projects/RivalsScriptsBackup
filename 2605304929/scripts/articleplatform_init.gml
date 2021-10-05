// article platform init

// Get Sprites
platform_grow = sprite_get("platform_grow");
platform_idle = sprite_get("platform_idle");
platform_impact = sprite_get("platform_impact");
platform_vanish = sprite_get("platform_vanish");

// Get Sounds


// Set variables
sprite_index = platform_grow;
mask_index = platform_idle;
hurtbox_index = platform_idle;
image_blend = c_white;
image_index = 0;
image_xscale = 1;
image_yscale = 1;
can_be_grounded = false;
ignores_walls = true;
uses_shader = true;
free = true;

// Set State Variables
article_state = 1; // Grow
article_state_timer = 0;