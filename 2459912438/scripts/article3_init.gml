//mettaton sprites
depth = 7;
sprite_index = asset_get("empty_sprite");
image_xscale = 3;
image_yscale = 3;

type = undefined; //can be different body parts

timer = 0;

randomise_rate = 0; //if greater than 0, randomise poses every x frames
randomise_frames = 0; //number of frames to randomise

yoffset = 0;

leg_anim_mode = 0; //0 = squish, 1 = rotate

draw_shadow = false;
shadow_alpha = 0;
can_draw_heart = true;

leg_height = 0;

pose_index = 0; //used in conjunction with image_index, updates a frame before

shocked_face = false;

heart2heart = false;

arms_on = true;
legs_on = true;

change_face = true;

max_leg_height = 0;

legs_on_timer = 0;
last_hitbox = undefined;

shake = false; //shake when got hit
shake_timer = 0;

smile = false; //displays a smiley face
old_image_index = undefined;

can_deal_damage = false;