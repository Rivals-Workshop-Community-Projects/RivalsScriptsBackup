// a2 pre draw

// Flying off fx
gpu_set_blendmode(bm_add);


var i = max(0,arrayindex-20);
var a = 0;

repeat(20)
{
    a++;
    var j = i;
    
    if(afterimage_array[j] != -1 && i%2==0) draw_sprite_ext(afterimage_array[j].sprite_index,afterimage_array[j].image_index,afterimage_array[j].x,afterimage_array[j].y,afterimage_array[j].spr_dir,1,0,
    a < 9 ? player_id.monRed : 
    a < 12 ? player_id.monDarkPurple : 
    a < 15 ? player_id.monPurple : 
    a < 18 ? player_id.monBlue	:
    player_id.monLightBlue
    ,(a/40));
    i++;
}


// Portal afterimage
if(portal_afterimage.timer > 0)
{
	draw_sprite_ext(portal_afterimage.sprite_index,portal_afterimage.image_index,portal_afterimage.x,portal_afterimage.y,spr_dir,1,0,last_pcolor == 1 ? player_id.monLightBlue : player_id.monRed,portal_afterimage.timer / 20);
}

gpu_set_blendmode(bm_normal);
