var otherexists;
otherexists = instance_exists(other_player_id)

if !otherexists exit;
if (otherexists and (!("lite" in other_player_id) or other_player_id.lite)) exit;

// Other pre draw
if(other_player_id == noone) exit;

shader_start();

// Small sprites check
var small = small_sprites+1;



// Hitstun fx
if(hit_player_obj == other_player_id && hitpause && !has_hit_player)
{
    
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_index,image_index,
    x+ (1 - cos((hitstop/5 * 3.14) / 2))*hitstop_full*2,
    y + (1 - cos((hitstop/5 * 3.14) / 2))*hitstop_full*2,
    spr_dir*small,small,0,other_player_id.monBlue,1)
    
    draw_sprite_ext(sprite_index,image_index,
    x - (1 - cos((hitstop/5 * 3.14) / 2))*hitstop_full*2,
    y - (1 - cos((hitstop/5 * 3.14) / 2))*hitstop_full*2,
    spr_dir*small,small,0,other_player_id.monRed,1)
    
    
    
    other_arrayindex = 0;
	var i = 0;
	repeat(100)
	{
	    other_afterimage_array[i] = -1;
	    i++;
	}
    
    
    gpu_set_blendmode(bm_normal);
}

other_afterimage_array[0] = {x:x,y:y,sprite_index:sprite_index,image_index:image_index,color:other_player_id.monDarkRed};

// Flying off fx
if(state == 12 && hit_player_obj == other_player_id && !hitpause)
{
    gpu_set_blendmode(bm_zero);
    
    
    var startPos = max(0,other_arrayindex-15);
    var i = startPos;
    
    repeat(100-startPos)
    {
        var j = min(99,i+startPos);
        
        if(other_afterimage_array[j] != -1) draw_sprite_ext(other_afterimage_array[j].sprite_index,other_afterimage_array[j].image_index,other_afterimage_array[j].x,other_afterimage_array[j].y,spr_dir*small,small,0,other_afterimage_array[j].color,1);  
        i++;
    }
    
    gpu_set_blendmode(bm_normal);
}

// Portal afterimage
if(portal_afterimage.timer > 0)
{
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(portal_afterimage.sprite_index,portal_afterimage.image_index,portal_afterimage.x,portal_afterimage.y,portal_afterimage.spr_dir*small,small,0,last_pcolor == 1 ? other_player_id.monLightBlue : other_player_id.monRed,portal_afterimage.timer / 20);
	gpu_set_blendmode(bm_normal);
}

gpu_set_blendmode(bm_normal);
shader_end();