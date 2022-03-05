//PEARL SYSTEM (DELTA PARALLAX)
shader_start()

//If vars haven't been loaded, exit the script.
if "nspecial_projectile" not in self exit;

//If you are in cooldown, disregard whether you have a pearl out.
var img;
img = instance_exists(nspecial_projectile)

if (move_cooldown[AT_NSPECIAL] != 0 and !img) img = 2;

//Draw hud sprite.
draw_sprite_ext(sprite_get("hud_voidling"),img,temp_x+196,temp_y-12,1,1,0,img == 2 ? c_gray : c_white,1);
shader_end()