//sword blade

sprite_index = sprite_get("article_sword");
mask_index = sprite_get("article_sword_hurt");

is_reckless = true

can_be_grounded = true;
timer = 0;

can_pickup = false

angle = 0;

depth = 10

age = 0

with obj_article1 if ("is_reckless" in self) && player_id == other.player_id && id != other.id {
    age = id
}

destroyed = false

wiggle_timer = 0

surface = noone
surface_x = undefined
surface_y = undefined

sound_delay = 10 //delay to prevent repeated sound plays

block = noone 
plat = noone

uses_shader = true