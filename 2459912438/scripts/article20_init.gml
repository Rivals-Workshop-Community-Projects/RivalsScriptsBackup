//player shadows/heart
timer = 0;

sprite_index = sprite_get("soul");
mask_index = sprite_get("soul_hurt");
image_alpha = 0;
image_angle = 180;
image_xscale = 1;
image_yscale = 1;

target_id = undefined; //id of target player

shadow_alpha = 0;
heart_alpha = 0;

fade = false;
fade_timer = 0;

can_deal_damage = false;

got_hit = false;
hit_timer = 0;