//ladder platform

can_be_grounded = false;                    
ignores_walls = true;                      
uses_shader = false;

hsp = 0;
vsp = 0;
hitstop = 0;

spr_dir = player_id.ladder_obj.spr_dir;

plat_size = player_id.ladder_obj.extension_size;

sprite_index = asset_get("empty_sprite");

switch (plat_size){
    case 0:
    mask_index = sprite_get("ladder_plat_med");
    break;
    case 1:
    mask_index = sprite_get("ladder_plat_big");
    break;
    case 2:
    mask_index = sprite_get("ladder_plat_huge");
    break;
    case 3:
    mask_index = sprite_get("ladder_plat_giganto");
    break;
}

depth = player_id.depth - 10;

image_index = 0; 

image_xscale = 2;
image_yscale = 2;

orig_depth = depth;

state = 1;
state_timer = 0;