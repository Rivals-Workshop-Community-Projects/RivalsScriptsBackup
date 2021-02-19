// HODAN'S POST DRAW

// Draw the flash sprite for a charged USPECIAL
if (attacking && attack == AT_USPECIAL && somersault_charged) {
	if (window < 4) {
    	draw_sprite_ext(sprite_get(type + "uspecialflash2"), image_index, x, y, spr_dir, flash_visible, 0, c_white, 1);
	}
}

if (attacking && (attack == AT_FSPECIAL || attack == AT_NSPECIAL) && sweatwhirl_charged) {
    draw_sprite_ext(sprite_get(type + "fspecialflash2"), image_index, x, y, spr_dir, flash_visible, 0, c_white, 1);
}

if (attacking && (attack == AT_DATTACK && dattack_strong) && window == 1 && window_timer >= get_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH) - 3) {
	draw_sprite_ext(sprite_get(type + "dattack_strong_flash"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
}

if (attacking && (attack == AT_FAIR && fair_strong) && window == 1 && window_timer >= get_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH) - 3) {
	draw_sprite_ext(sprite_get(type + "fair_strong_flash"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
}

var frames = get_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH) / get_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES);
if (attacking && (attack == AT_DSTRONG && dstrong_charged && !fake_dstrong_charge) && window == 2 && window_timer > frames && window_timer <= frames + 3) {
	// Make this flash when he first rises
	draw_sprite_ext(sprite_get(type + "dstrong_strong_flash"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
}

// Draw sweatwhirl projectiles
with (pHitBox) if (player_id == other && (player == other.player || was_parried) && (attack == AT_NSPECIAL || attack == AT_FSPECIAL) && hbox_num == 1) {
	var x_var = x;
	var y_var = y;
	var image_var = image_index;
	var mask_var = mask_index;
}

if (!paused) {
    sweatwhirl_held_frame += 1/sweatwhirl_anim_speed; // Ensures it will increment every sweatwhirl_anim_speed frames
}

shader_start();
if (sweatwhirl_level == 1) {
    draw_sprite(sprite_get("sweatwhirl_proj" + sweatwhirl_held_draw), image_var, x_var, y_var);
} else {
    draw_sprite(sprite_get("sweatwhirl_proj" + string(sweatwhirl_level) + sweatwhirl_held_draw), image_var, x_var, y_var);
}

if ((attack == AT_DSPECIAL || attack == AT_USPECIAL) && sweatwhirl_grabbed) {
    if (sweatwhirl_level == 1) {
        draw_sprite(sprite_get("sweatwhirl_proj" + "_held"), sweatwhirl_held_frame, x, y);
    } else {
        draw_sprite(sprite_get("sweatwhirl_proj" + string(sweatwhirl_level) + "_held"), sweatwhirl_held_frame, x, y);
    }
}
shader_end();

if (hitbox_view && practice_mode) {
    draw_sprite(mask_var, image_var, x_var, y_var);
}

if (gold_alt) {
	if (!paused) {
		// Creation
		// min y: 7
		// max y: 67
		// min x: -25
		// max x: 23
		var gold_x = ceil(random_func(4, 48, true) - 25) | 1;
		var gold_y = ceil(random_func(5, 60, true) + 7) | 1;
		if (random_func(12, gold_rng, true) == 1) {
			ds_list_add(gold_shines, create_gold_shine(x + gold_x * spr_dir, y - gold_y));
		}
	}
	// Drawing
	for (i = 0; i < ds_list_size(gold_shines); i++) {
		var shine = ds_list_find_value(gold_shines, i);
		if (!paused) {
			// Logic doesn't work when paused
			shine.lifetime++;
			if (shine.lifetime >= gold_shine_duration) {
				ds_list_remove(gold_shines, shine);
			}
		}
		var shine_frames = 4;
		draw_sprite(sprite_get("gold_shine"), (shine_frames/gold_shine_duration) * shine.lifetime, shine.x, shine.y);
	}
}

if (state == PS_PARRY && dstrong_parry && window == 1 && parry_debug_view) {
	draw_circle_colour(x + parry_x_offset, y - parry_y_offset, parry_radius, c_red, c_red, false);
}

paused = true;

// Runes

if "abysspostdrawenabled" not in self abysspostdrawenabled = true; // tell buddy you have post draw code
if "abyssPostDrawing" in self && abyssPostDrawing abyssPostDraw(); // actually do post draw code
#define abyssPostDraw 
/// abyssPostDraw()
/// draws text and images the player recieved from the abyss buddy.
if ("abyss_postDrawArray" in self && ds_list_valid(abyss_postDrawArray))  {
    if (ds_list_size(abyss_postDrawArray) > 0) {
        for (var _i = 0; _i < ds_list_size(abyss_postDrawArray);_i++) {
            var _text = abyss_postDrawArray[| _i];
            if draw_get_halign() != _text[6] {
                draw_set_halign(_text[6]);
            }
            switch (_text[0]) {
                case 0:
                    draw_debug_text(floor(_text[1]),floor(_text[2]),(_text[3]));
                    break;
                case 1:
                    draw_sprite_ext(_text[3],_text[5],_text[1],_text[2],1,1,0,_text[4],1);
                    break;
                case 2:
                    draw_text_plus(floor(_text[1]),floor(_text[2]),string(_text[3]),floor(_text[5]),floor(_text[4]));
                    break;
                case 3:
                    if draw_get_font() != 1 draw_set_font(1);
                    draw_text_ext_color(floor(_text[1]),floor(_text[2]),string(_text[3]),16,floor(_text[5]),_text[4],_text[4],_text[4],_text[4], 1);
                    break;
                default:
                break;
            }
        }
    }
    //finished drawing, so clear the table for the next frame.
    ds_list_clear(abyss_postDrawArray);
}

#define draw_text_plus
/// draw_text_plus(x, y, text, font, color = c_white)
/// draws outlined text in any in-game font.

if draw_get_font() != argument[3] {
    draw_set_font(argument[3]);
}
draw_text_color(argument[0]+2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1],argument[2],argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,1);

#define create_gold_shine(x, y)

var shine = {
	x: x,
	y: y,
	lifetime: 0
}

return shine;