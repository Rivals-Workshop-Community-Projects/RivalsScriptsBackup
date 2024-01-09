shader_start()
with pHitBox{
	if other.hbox_view {
		if(player == other.player and attack == AT_FSPECIAL){
			draw_sprite_ext(mask_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,0.5);
		}
	}
	if(player == other.player and attack == AT_FSPECIAL and hbox_num == 1){
		draw_sprite_ext(sprite_get("slash_active"),image_index,x,y,spr_dir/(4-lvl),1,image_angle,c_white,1);
	}
}

if(attacking){
	if(attack == AT_DSPECIAL){
		var i_img_index = 5;
		if(image_index >= i_img_index and image_index < 30 and image_index > 6){
			draw_sprite_ext((spr_dir > 0)?sprite_get("multislash_fx_right") : sprite_get("multislash_fx_left"), image_index - i_img_index, x, y, 4*(spr_dir > 0)-2, 2, 0, c_white, 1);
		}
	}
	if(attack == AT_FSPECIAL and lvl > 2 and (window == 1 or window == 2)){
		var ini_frames = 10;
		if(state_timer <= ini_frames){ 
			var img = state_timer*9/ini_frames;
		}
		else{
			var img = 9 + (game_time*fspecial_lvl3_anim_speed)%4;
		}
		draw_sprite_ext(fspecial_lvl3_fx_spr, img, x -18*spr_dir, y-28, 2*spr_dir, 2, 0, c_white, 1);
	}
}

// var fspecial_hud_img = 0;
// fspecial_hud_img  = ((fspecial_hud_time - fspecial_hud_timer)*8/fspecial_hud_time) + (lvl-1)*8;
// draw_sprite_ext(fspecial_hud_spr, fspecial_hud_img, x, y + 20, 2, 2, 0, c_white, 1);

shader_end()

with oPlayer{
	if(state == PS_SLIDE and instance_exists(grind_id) and grind_id.player == other.player){
		sprite_index = hsp*spr_dir >= 0 ? bd_rail_grind_forward_spr : bd_rail_grind_backwards_spr;
		var startup_length = 5;
		if(state_timer < startup_length){
			image_index = state_timer * max(0, bd_rail_grind_startup_frames-1) / startup_length
		}else if(state_timer >= startup_length){
			var st = bd_rail_grind_startup_frames;
			var en = bd_rail_grind_active_frames;
			image_index = st + ( floor( state_timer*bd_rail_grind_anim_speed ) % en);
			
			// print(state_timer)
			// print(image_index)
		}

	}
	var endlag_length = 10;
}
//written by muno
#define rectDraw(x1, y1, width, height, color)
{
    draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
}

//text_draw(x, y, string, color, font, align, alpha, outline, line_alpha, line_col)
#define text_draw
{
    var x = argument[0];
    var y = argument[1];
    var string = argument[2];
    var color = argument[3];
    var font = argument[4];
    var align = argument[5];
    var alpha = argument_count > 6 ? argument[6] : 1;
    var outline = argument_count > 7 ? argument[7] : false;
    var line_alpha = argument_count > 8 ? argument[8] : 1;
    var line_col = argument_count > 9 ? argument[9] : c_black;

    draw_set_font(asset_get(font));
    draw_set_halign(align);

    if (outline && line_alpha > 0)
    {
        for (var i_x = -1; i_x < 2; ++i_x) for (var i_y = -1; i_y < 2; ++i_y)
        {
            draw_text_color(x + i_x * 2, y + i_y * 2, string, line_col, line_col, line_col, line_col, line_alpha * alpha);
        }
    }

    draw_text_color(x, y, string, color, color, color, color, alpha);
}

//written by supersonic, modified by bar-kun
#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0, angle = 0, win = -10, win_time = 0)
{
    // spawn_base_dust(x, y, name)
    // spawn_base_dust(x, y, name, ?dir, ?angle, ?window, ?window_timer)

    // This function spawns base cast dusts. Names can be found below.
    var dlen; //dust_length value
    var dfx; //dust_fx value
    var dfg; //fg_sprite value
    var dust_color = 0;
    var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;
var win = argument_count > 5 ? argument[5] : -10;
var win_time = argument_count > 6 ? argument[6] : 0;

    if (!hitpause && (win > 0 && win == window && win_time == window_timer || win == -10) ) //spawns it whenever we want for 1 frame
    {
        switch (name) {
            default: 
            case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
            case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
            case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
            case "doublejump": 
            case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
            case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
            case "land": dlen = 24; dfx = 0; dfg = 2620; break;
            case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
            case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
            //
            //bar-kun additions (note: idk how fg_sprite work)
            //
            case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
            case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
            case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
            case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
            case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
            case "doublejump_small": 
            case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
        }
        var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"), dlen);
        newdust.x = floor(x);
        newdust.y = floor(y);
        newdust.dust_fx = dfx; //set the fx id
        if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite

        newdust.dust_color = dust_color; //set the dust color

        if (dir != 0) newdust.spr_dir = dir; //set the spr_dir, if dir is 0 it will take the player's spr_dir
        else newdust.spr_dir = spr_dir;

        newdust.draw_angle = angle; //sets the angle of the dust sprite
        return newdust;
    }
}

#macro PS_SLIDE 69