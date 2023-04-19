//post_draw.gml

//respawn platform
if (state == PS_RESPAWN || respawn_taunt > 0)
{
    draw_sprite_ext(sprite_get("plat_post"), game_time * plat_speed, x, y, 2, 2, 0, c_white, 1);
    }
if (is_attacking) switch (attack)
{
    case AT_NSPECIAL:
{
	if window == clamp(window, 1, 3){
		var guy = sprite_get("nspecial_start");
		var fx = chainfx
	   if chainaim != 1 && chainaim != 2{
	   	draw_sprite_ext(guy,-1 , x + 40 * spr_dir, y - 40, 0.40, 0.40, chainangle, c_white, 1)
	   }
	   else if chainaim = 1{
	   	draw_sprite_ext(guy,-1 , x , y - 90, 0.40, 0.40, chainangle, c_white, 1)
	   }
	    else if chainaim = 2{
	   	draw_sprite_ext(guy,-1 , x , y + 20, 0.40, 0.40, -90, c_white, 1)
	   }
   with (pHitBox){
   if player_id.chainaim == -1{
   if hitbox_timer != 33{ 
   draw_sprite_ext(sprite_get("chain"), floor(image_number*hitbox_timer/(image_number*7)), (x - 60 * spr_dir), (y + 5), 2, 1, player_id.chainangle, -1, 1);
   }
   if (spr_dir == 1 && x > player_id.x + 170 || spr_dir == -1 && x < player_id.x - 170){ 
   draw_sprite_ext(sprite_get("chain"), floor(image_number*hitbox_timer/(image_number*7)), (x - 140 * spr_dir), (y + 5), 2, 1, player_id.chainangle, -1, 1);
   }
   if (spr_dir == 1 && x > player_id.x + 220 || spr_dir == -1 && x < player_id.x - 220){ 
   draw_sprite_ext(sprite_get("chain"), floor(image_number*hitbox_timer/(image_number*7)), (x - 220 * spr_dir), (y + 5), 2, 1, player_id.chainangle, -1, 1);
   }
   }
   if player_id.chainaim == 1{
   if hitbox_timer >= 1{ 
   draw_sprite_ext(sprite_get("chain"), floor(image_number*hitbox_timer/(image_number*7)), (x + 7 * spr_dir), (y + 50), 2, 1, player_id.chainangle, -1, 1);
   }
   if y < player_id.y - 150{ 
   draw_sprite_ext(sprite_get("chain"), floor(image_number*hitbox_timer/(image_number*7)), (x + 7 * spr_dir), (y + 140), 2, 1, player_id.chainangle, -1, 1);
   }
   }
   if player_id.chainaim == 2{
   if hitbox_timer >= 1{ 
   draw_sprite_ext(sprite_get("chain"), floor(image_number*hitbox_timer/(image_number*7)), (x - 7 * spr_dir), (y - 50), 2, 1, -90 * spr_dir, -1, 1);
   }
   if y > player_id.y + 150{ 
   draw_sprite_ext(sprite_get("chain"), floor(image_number*hitbox_timer/(image_number*7)), (x - 7 * spr_dir), (y - 140), 2, 1, -90 * spr_dir, -1, 1);
   }}
   if player_id.chainaim == 3{
   if hitbox_timer >= 1{ 
   draw_sprite_ext(sprite_get("chain"), floor(image_number*hitbox_timer/(image_number*7)), (x - 46 * spr_dir), (y +46), 2, 1, player_id.chainangle, -1, 1);
   }
   if (spr_dir == 1 && x > player_id.x + 170 || spr_dir == -1 && x < player_id.x - 170){ 
   draw_sprite_ext(sprite_get("chain"), floor(image_number*hitbox_timer/(image_number*7)), (x - 96 * spr_dir), (y + 99), 2, 1, player_id.chainangle, -1, 1);
   }
   }
   if player_id.chainaim == 4{
   if hitbox_timer >= 1{ 
   draw_sprite_ext(sprite_get("chain"), floor(image_number*hitbox_timer/(image_number*7)), (x - 46 * spr_dir), (y - 24), 2, 1, player_id.chainangle - 10 * spr_dir, -1, 1);
   }}
    if player_id.chainaim == 5{
   if hitbox_timer >= 1{ 
   draw_sprite_ext(sprite_get("chain"), floor(image_number*hitbox_timer/(image_number*7)), (x - 27 * spr_dir), (y + 65), 2, 1, player_id.chainangle - 10 * spr_dir, -1, 1);
   }}
   }
}
}
break;

 case AT_DSPECIAL:
 {
 	if window == 3{
 	draw_sprite_ext(sprite_get("throwalert"),-1 , x + 50 * spr_dir, y - 70, 1.4, 1.4, 0, c_white, 1)	
 	}
 }
 break;
 case AT_USPECIAL:
 {
 var guy = sprite_get("nspecial_start");
 if window < 4{draw_sprite_ext(guy,-1 , x + 60 * spr_dir, y - 80, 0.40, 0.40, 45 * spr_dir, c_white, 1)}
 with (pHitBox){
 draw_sprite_ext(sprite_get("chain"), floor(image_number*hitbox_timer/(image_number*7)), (x -32 * spr_dir), (y + 32), 2, 1, 45 * spr_dir, -1, 1)}
 }
}

//written by muno
#define rectDraw(x1, y1, width, height, color)
{
    draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
}
#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)
{
    draw_set_font(asset_get(font));
    draw_set_halign(align);

    if outline {
        for (i = -1; i < 2; i++) {
            for (j = -1; j < 2; j++) {
                draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
            }
        }
    }

    if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

    if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
    else return;
}
muno_event_type = 4;
user_event(14);

//written by supersonic, modified by bar-kun
#define spawn_base_dust
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