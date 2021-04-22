//post-draw N/A

shader_start()
if (attack == AT_USPECIAL && (state==PS_ATTACK_AIR || state==PS_ATTACK_GROUND)){
	if (window<=7){
		if (window<=3||window==4&&window_timer<1){//
			if (joy_pad_idle){
				var angle = (round(((spr_dir==1)?67.5:112.5) / 22.25) * 22.25) + ((spr_dir)?0:180);
			}else{
				var angle = (round(((spr_dir==-1&&joy_pad_idle)?180:joy_dir) / 22.25) * 22.25) + ((spr_dir)?0:180);
			}
		}else{
			var angle = usp_angle + ((spr_dir)?0:180)
		}
		if (get_player_color( player ) == 7){ //towerofheaven
			draw_sprite_ext( sprite_get("uspecial_dupli_ea"), image_index, x, y-24, spr_dir, 1, angle, c_white, 1 );
		}else{//normal
			draw_sprite_ext( sprite_get("uspecial_dupli"), image_index, x, y-24, spr_dir, 1, angle, c_white, 1 );
		}
	}
}

/*
if (get_player_color( player ) == 8){
	switch (state){
    case PS_IDLE:
    case PS_IDLE_AIR:
    case PS_LAND:
    case PS_JUMPSQUAT:
    case PS_FIRST_JUMP:
    case PS_CROUCH:
    case PS_WALK:
    case PS_DASH_START:
    case PS_DASH:
    case PS_DASH_STOP:
    case PS_WAVELAND:
    case PS_PARRY_START:
    case PS_PARRY:
    case PS_ROLL_BACKWARD:
    case PS_ROLL_FORWARD:
    case PS_SPAWN:
    case PS_RESPAWN:
    case PS_PRATLAND:
    case PS_PRATFALL:
    case PS_HITSTUN_LAND:
    case PS_LANDING_LAG:
		draw_sprite_ext( sprite_get("na_halo"), 0, x, y, spr_dir, 1, 0, c_white, 0.6 );
    break;
	}
}*/

shader_end()














//if (hsp!=0 && vsp==0|| hsp==0 && vsp!=0 || hsp!=0 && vsp!=0){
/*
var na_sp_i = asset_get("empty_sprite");
na_sp_i[sprite_get("idle")] = sprite_get("idle_eye");
na_sp_i[sprite_get("dash")] = sprite_get("dash_eye");
na_sp_i[sprite_get("dashstart")] = sprite_get("dashstart_eye");
na_sp_i[sprite_get("dashstop")] = sprite_get("dashstop_eye");
na_sp_i[sprite_get("doublejump")] = sprite_get("doublejump_eye");
na_sp_i[sprite_get("jump")] = sprite_get("jump_eye");
na_sp_i[sprite_get("jumpstart")] = sprite_get("jumpstart_eye");
na_sp_i[sprite_get("land")] = sprite_get("land_eye");


draw_sprite_ext( na_sp_i[sprite_index], image_index, x-round((hsp/2)/2), y-round((hsp/2)/2), spr_dir, 1, 0, c_white, 1 );
draw_sprite_ext( na_sp_i[sprite_index], image_index, x-round(hsp/2), y-round(vsp/2), spr_dir, 1, 0, c_white, 0.95 );
draw_sprite_ext( na_sp_i[sprite_index], image_index, x-round((hsp/2)+((hsp/2)/2)), y-round((vsp/2)+((vsp/2)/2)), spr_dir, 1, 0, c_white, 0.8 );
draw_sprite_ext( na_sp_i[sprite_index], image_index, x-round(hsp), y-round(vsp), spr_dir, 1, 0, c_white, 0.7 );

var goin_h=x-hsp;
var goin_v=y-vsp;

draw_sprite_ext( na_sp_i[sprite_index], image_index, goin_h-round(na_hsp_h[0]), goin_v-round(na_vsp_h[0]), spr_dir, 1, 0, c_white, 0.5 );
goin_h-=na_hsp_h[0];
goin_v-=na_vsp_h[0];
draw_sprite_ext( na_sp_i[sprite_index], image_index, goin_h-round(na_hsp_h[1]), goin_v-round(na_vsp_h[1]), spr_dir, 1, 0, c_white, 0.2 );
goin_h-=na_hsp_h[1];
goin_v-=na_vsp_h[1];
draw_sprite_ext( na_sp_i[sprite_index], image_index, goin_h-round(na_hsp_h[2]), goin_v-round(na_vsp_h[2]), spr_dir, 1, 0, c_white, 0.05 );
	
draw_debug_text( x, y+20, "waddup");
*/
//}