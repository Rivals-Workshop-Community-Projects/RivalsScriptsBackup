//Blank
if spr_dir and sprite_index = sprite_get("taunt_left") sprite_index = sprite_get("taunt_right")
if !spr_dir and sprite_index = sprite_get("taunt_right") sprite_index = sprite_get("taunt_left")

if sprite_index = sprite_get("fspecial_down") hurtboxID.sprite_index = sprite_get("fspecial_down_hurt")
if sprite_index = sprite_get("fspecial") hurtboxID.sprite_index = sprite_get("fspecial_hurt")