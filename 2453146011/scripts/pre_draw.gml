

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



 gpu_set_blendmode(bm_normal);
 
 shader_end();