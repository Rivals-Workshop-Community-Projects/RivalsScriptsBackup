type = "";
life_timer = 0;

// Uspecial smear
if (player_id.article2_type == 0)
{
    type = "uspec_smear";
    sprite_index = sprite_get("uspecial_smear");
    mask_index = sprite_get("uspecial_smear");
    image_alpha = 1;
    //image_speed = 0.7;
    depth = player_id.depth + 1;
    
    spr_dir = player_id.spr_dir;
    
    image_xscale = 1;
    image_yscale = 1;
    
    die_trigger = 0;
}
// After-images
if (player_id.article2_type == 1)
{
    type = "after_image";
    image_alpha = 0.8;
    sprite_index = player_id.sprite_index;
    image_index = player_id.image_index;
    image_speed = 0;
    depth = player_id.depth + 1;
    
    spr_dir = player_id.spr_dir;
    
    image_xscale = 1;
    image_yscale = 1;
}
// Down B hit fx
if (player_id.article2_type == 2)
{
    type = "dspec_hit_fx";
    image_alpha = 0.83;
    
    //image_angle = player_id.last_dspec_angle;
    spr_dir = player_id.last_dspec_spr_dir;
    
    down_b_timer = 0;
    if (player_id.sage_mode == 1) sprite_index = sprite_get("sage_projectile_endlag") else sprite_index = sprite_get("projectile_endlag");
    depth = player_id.depth + 1;
    
    image_speed = 0;
    
    image_xscale = 1;
    image_yscale = 1;
}