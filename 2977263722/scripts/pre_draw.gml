var pattern = false;
var doing_uspecial = false;
var parry_lock = false;

switch alt {

case 2:
    var pattern_spr = sprite_get("pattern_scuttle");
	var yoffs = y-32;
    pattern = true;
break;
case 1:
    var pattern_spr = sprite_get("pattern_chill");
	var yoffs = y-32;
    pattern = true;
break;
case 3:
    var pattern_spr = sprite_get("pattern_galoomber");
	var yoffs = y+68;
    pattern = true;
break;
case 12:
    var pattern_spr = sprite_get("pattern_bandage");
	var yoffs = y-32;
    pattern = true;
break;
case 13:
    var pattern_spr = sprite_get("pattern_puffer");
	var yoffs = y+50;
    pattern = true;
break;

case 14:
case 15:
case 16:
case 17:
        for (var i = w_ai_cur; i >= 0; i -= 1) {
			var ind = (w_ai_tot + w_ai_ind - i) % w_ai_tot;
			var ind_last = (ind - 1) % w_ai_tot;
			var ai = w_afterimages[ind];
			var ai_last = w_afterimages[ind];
			var alpha = ai.alpha * (1 - i / (w_ai_cur + 1));
			// draw trail
			    //draw_sprite_ext(ai.sprite, 0, ai.x, ai.y, ai.width, 1, ai.tilt, c_white, alpha );
				
				draw_sprite_pos(sprite_get("trails"), alt - 14, ai.cornerTX, ai.cornerTY, ai.cornerprevTX, ai.cornerprevTY, ai.cornerprevBX, ai.cornerprevBY, ai.cornerBX, ai.cornerBY, alpha);
				
			    //gpu_set_blendmode(bm_add);
                //draw_sprite_ext(ai.sprite, 0, ai.x, ai.y, ai.width, 1, ai.tilt, c_white, alpha );
				//gpu_set_blendmode(bm_normal);
        }
break;
}

//USPECIAL ROTATION ===========================================================================
if attack = AT_USPECIAL && window > 1 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)  {
    doing_uspecial = true;
    if alt != 3 shader_start();
    draw_sprite_ext(pattern? sprite_get("uspecial_"+string(alt)) : sprite_get("uspecial"), image_index, x, y, pattern? spr_dir : 2*spr_dir, pattern? 1 : 2, u_angle, alt = 26 ? c_red : c_white, 1);
	shader_end();
}

//DISABLE SHADER DURING PARRY =================================================================
if state = PS_PARRY && (image_index = 1 || image_index = 2) { parry_lock = true; }

//PATTERN SHADER ==============================================================================
if object_index = oPlayer && !(doing_uspecial || parry_lock) {

if pattern && object_index = oPlayer {
    maskHeader();
		draw_sprite_ext(doing_uspecial? sprite_get("uspecial_mask") : sprite_index, image_index, x, y, 2*spr_dir, 2, doing_uspecial? u_angle : 0, c_white, 1);
    maskMidder();
    if alt != 3 shader_start();
    	draw_sprite_tiled(pattern_spr, 0, x-32, yoffs);
	shader_start();
    maskFooter();
}

}

//=============================================================================================


#define maskHeader()
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
    draw_rectangle_color(0, 0, view_get_xview()+view_get_wview(), view_get_yview()+view_get_hview(), c_white, c_white, c_white, c_white, false);
}

#define maskMidder()
// Reenables draw but only within the region drawn between maskHeader and maskMidder.
// Lasts until maskFooter is called.
//================================================================================
{
    draw_set_alpha(1);
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}

#define maskFooter()
// Restores normal drawing parameters//================================================================================
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
}