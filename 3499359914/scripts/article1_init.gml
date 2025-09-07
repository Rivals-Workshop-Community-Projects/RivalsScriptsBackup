    //Flying Cloud

//Visuals
sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("cloud_mask");

cloud_spr = sprite_get("cloud_fly");
cloud_img = 0;
cloud_anim_spd = 0.15;

//Function
state = 0;
state_timer = 0;
cloud_dir = 1;
cloud_destroy = false;
cloud_effect = 0;
cloud_effect_go = false;

//Hittability
is_hittable = true;
cloud_hit = false;