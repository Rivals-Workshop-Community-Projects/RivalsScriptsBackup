// article1_init
// This can really be anything / they're usually like objects
// This is where the character establishes all variables for this article
// can be article1, article2, article3, articlesolid, articleplatform

life_timer = 500;
wisp_alpha = 1;

state = 0;
state_timer = 0;

sprite_index = sprite_get("blank");
mask_index = sprite_get("curse_mask");

sprite_curse_active = sprite_get("curse");
sprite_curse_off = sprite_get("curse_off");
sprite_curse_morph = sprite_get("willo_morph");

sprite_curse_tip = sprite_get("willothunder_tip");
sprite_curse_segment = sprite_get("willothunder_segment");
sprite_curse_end = sprite_get("willothunder_end");

current_sprite_index = sprite_get("curse");

wisp_hitbox = noone;
wisp_explosion = noone;

active = false;
not_held = true;
cooldown_timer = 180;

orig_x = 0;
orig_y = 0;

lock_x = 0;
lock_y = 0;
lock_angle = 0;
travel_timer = 0;

uses_shader = true;

image_speed = 0.25;
image_ymovement = 0;
image_yup = true;

image_xmovement = 0;
image_xup = true;

explosion_timer = 0;
thunder_anim_timer = 0;
thunder_number = 0;
thunder_parent = noone;
thunder_part_length = 56;
part_length_change = false;

end_alpha = 0;