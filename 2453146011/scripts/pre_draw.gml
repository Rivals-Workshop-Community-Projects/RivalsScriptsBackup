

// Black screen effect
shader_start();

// Utilt rift
if(attack == AT_UTILT && window >=2 && state_timer >=14 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
{
	if((state_timer-13)/3 <8) draw_sprite_ext(sprite_get("utilt_rift"),(state_timer-13)/3,rift_location.x,rift_location.y,spr_dir,1,0,c_white,1)
}

if(lite){shader_end(); exit;}

// Parry fx
if(state == PS_PARRY && state_timer < 18)
{
    gpu_set_blendmode(bm_add);
    
    var statemax = 2;
    
    draw_sprite_ext(sprite_index,image_index,
    x+ (1 - cos((state_timer/5 * 3.14) / 2))*statemax*2,
    y + (1 - cos((state_timer/4 * 3.14) / 2))*statemax*2,
    spr_dir*2,2,0,monBlue,.5)
    
    draw_sprite_ext(sprite_index,image_index,
    x - (1 - cos((state_timer/5 * 3.14) / 2))*statemax*2,
    y - (1 - cos((state_timer/4 * 3.14) / 2))*statemax*2,
    spr_dir*2,2,0,monRed,.5)
    

    
    gpu_set_blendmode(bm_normal);
}

// Afterimage trail
if(state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_AIR_DODGE || state == PS_WAVELAND)
{
	gpu_set_blendmode(bm_zero);
    
    
    var startPos = max(0,arrayindex-3);
    var i = startPos;
    var a = 0;
    
    repeat(100-startPos)
    {
        var j = min(99,i+startPos);
        
        if(afterimage_array[j] != -1) draw_sprite_ext(afterimage_array[j].sprite_index,afterimage_array[j].image_index,afterimage_array[j].x,afterimage_array[j].y,spr_dir*2,2,0,afterimage_array[j].color,1-(j/100));  
        i++;
        a+=.1;
    }
    
    gpu_set_blendmode(bm_normal);
}

// // Portal line
// if(portal_1 != noone && portal_2 != noone ){
// 	if(portal_1.portal_white > 0 || portal_2.portal_white > 0){
	
// 		var pTime = portal_1.portal_white > portal_2.portal_white ? portal_1.portal_white : portal_2.portal_white;
	
// 		var FirstPort = last_pcolor == 2 ? portal_1 : portal_2;
// 		var SecondPort = last_pcolor == 1 ? portal_1 : portal_2;
		
// 		gpu_set_blendmode(bm_add);
// 		draw_set_alpha(pTime/15);
// 		draw_triangle(FirstPort.x - (FirstPort.rightWall ? 5 : FirstPort.leftWall ? -5 : 0), FirstPort.y - (FirstPort.isFloor ? 8 : FirstPort.isCeil ? -4 : 0), SecondPort.x - (SecondPort.rightWall ? 5 : SecondPort.leftWall ? -5 : 0), SecondPort.y- (SecondPort.isFloor ? 8 : FirstPort.isCeil ? -4 : 0), last_pcolor == 1 ? monRed : monLightBlue, last_pcolor == 2 ? monRed : monLightBlue,pTime/2);
// 		draw_set_alpha(1);
// 		gpu_set_blendmode(bm_normal);
// 	}
// }


// Fspecial line
if(fspec_line_timer > 0){
	
	var Obj1 = self;
	var Obj2 = last_hit_player;
	
	gpu_set_blendmode(bm_add);
	draw_set_alpha(fspec_line_timer/15);
	draw_triangle(Obj1.x , Obj1.y - Obj1.char_height/2, Obj2.x , Obj2.y - Obj2.char_height/2,  monRed, monLightBlue,fspec_line_timer/4);
	draw_set_alpha(1);
	gpu_set_blendmode(bm_normal);
}

// Knife line
if(knife_line_timer > 0){
	gpu_set_blendmode(bm_add);
	draw_set_alpha(knife_line_timer/15);
	draw_triangle(last_knife_pos.x , last_knife_pos.y , last_player_pos.x , last_player_pos.y,  monRed, monLightBlue,knife_line_timer/2);
	draw_set_alpha(1);
	gpu_set_blendmode(bm_normal);
}

// Teleport line
if(portal_line_timer > 0){
	gpu_set_blendmode(bm_add);
	draw_set_alpha(portal_line_timer/80);
	draw_triangle(current_teleport_x + (spr_dir*16), current_teleport_y-char_height/2-10, last_teleport_x , last_teleport_y-char_height/2, monLightBlue, monLightBlue,portal_line_timer);
	draw_set_alpha(1);
	gpu_set_blendmode(bm_normal);
}


 gpu_set_blendmode(bm_normal);
 
 shader_end();
 
#define draw_triangle(x1, y1, x2, y2,colour1, colour2,width)
{
	var dir = point_direction(x1, y1, x2, y2);
	var offsetX = lengthdir_x(width,dir+90);
	var offsetY = lengthdir_y(width,dir+90);
	
	draw_triangle_colour(x1-offsetX, y1-offsetY, x1+offsetX, y1+offsetY, x2, y2, colour1, colour1, colour2, false);
	draw_triangle_colour(x1-offsetX, y1-offsetY, x1+offsetX, y1+offsetY, x2, y2-1, colour1, colour1, colour2, false);
	//draw_triangle_colour(x1, y1+1, x2+offsetX, y2+1+offsetY, x2, y2+1, colour1, colour2, colour2, true);
}
