//Leaf Platform

sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("beanstalk_plat");

//Animation
current_sprite = sprite_get("leaf");
current_anim_frame = 0;
current_opacity = 1;

//Leaf-Specific

state_timer = 0;
leaf_lifetime = 720;