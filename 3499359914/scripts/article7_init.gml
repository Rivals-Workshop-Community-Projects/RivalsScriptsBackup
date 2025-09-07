//Chomp

sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("testball");

vsp = -0.5;
grav = 0.5;

//Drawing

spr_cur = sprite_get("chomphalf");
img_cur = 0;
img_scale = 0;
img_rot = 0;

depth = 32;
parallax_x = -get_bg_data( 4, BG_LAYER_PARALLAX_X );
parallax_y = -get_bg_data( 4, BG_LAYER_PARALLAX_Y );


//Function
state = 0;
state_timer = 0;

chomp_fall_delay = 150;
chomp_hitbox = noone;
chomp_parried = false;
chomp_fall_dir = 0;