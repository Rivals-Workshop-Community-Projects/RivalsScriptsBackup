//PEARL SYSTEM (DELTA PARALLAX)
shader_start()

//If vars haven't been loaded, exit the script.
if "voltorb_obj" not in self exit;

//If you are in cooldown, disregard whether you have a pearl out.
var img;
img = instance_exists(voltorb_obj)

if (move_cooldown[AT_NSPECIAL] != 0 and !img) img = 2;
if (instance_exists(voltorb_obj) and voltorb_obj.inactive_timer != 0) img = 3;

//Draw hud sprite.
draw_sprite_ext(sprite_get("hud_voltorb"),min(img,2),temp_x+196,temp_y-12,1,1,0,img == 2 ? c_gray : c_white,1);

if img == 3
{
    draw_debug_text(temp_x + 182, temp_y-10, string( ceil(voltorb_obj.inactive_timer / 60) ))
}

shader_end();