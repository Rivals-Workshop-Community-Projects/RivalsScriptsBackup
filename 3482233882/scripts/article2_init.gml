
// article2_init - runs once, when the article is created
// Message boxes.
// Reliant on creator to pass in certain fields, which are marked below.
// NOTE: Due to unstable text function behavior within articles, drawing is handled in pre_draw.gml

//Sprite and direction
sprite_index = sprite_get("null");
image_index = 0;
spr_dir = player_id.spr_dir;
uses_shader = false;
mask_index = sprite_get("null");

//State
state = 0;
state_timer = 0;
item_id = noone;
hitstop = 0;
hsp = 0;
vsp = -1;

//Terrain behavior
can_be_grounded = false;
ignores_walls = true;
free = true;
hit_wall = false;

// Visual
draw_alpha = 1;
draw_flash = 0;
is_hud_element = false;