// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 4;
user_event(14);

shader_start();

if(phone_attacking){
    if(attack == AT_USPECIAL){
        if(instance_exists(uspec_pipe))draw_sprite_ext(pipesprite,1,uspec_pipe.x,uspec_pipe.y,spr_dir,1,uspec_pipe.proj_angle,-1,1);
    }
    if(attack == AT_FSTRONG){
        if(window == 1){
            if(strong_flashing)draw_masked_sprite(sprite_get("useless creature"),0,x-45*spr_dir,y-45,spr_dir,1,0,c_yellow,.5);
        }
    }    
}
shader_end();
if((state == PS_RESPAWN || attack == AT_TAUNT) && respawnplat == 1){
	if(get_player_color(player) == 8){
		draw_sprite_ext(sprite_get("plat_smb"), 0, x, y, 2*spr_dir, 2, 0, -1, 1)
	}
}


#define draw_masked_sprite(sprite,img,x,y,xscale,yscale,rot,col,alpha)
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);
//draw the sprite
draw_sprite_ext(sprite,img,x,y,xscale,yscale,rot,col,alpha);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
//draw the fill
draw_rectangle_color(x-sprite_get_width(sprite),y-sprite_get_yoffset(sprite),x+sprite_get_width(sprite),y+sprite_get_height(sprite),col,col,col,col,false);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);

#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);

#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

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