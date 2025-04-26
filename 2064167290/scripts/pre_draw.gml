// pre-draw

var turntable_exist = false;
with (obj_article1)
{
    if (player_id == other)
    {
        turntable_exist = true;
        var inst = self;
    }
}

if (turntable_exist)
{
    
    
       
    // B:G:R
    switch (inst.col){
        case 0:
        	var col = $000000 // black
        break;
        case 1:
        	var col = $db9d3e; // BLUE
        break;
        case 2:
            var col = $0d9113; // GREEN
        break;
        case 3:
        	var col = $01feff; // YELLOW
        break;
        case 4: 
            var col = $106aff // ORANGE
        break;
        case 5:
         	var col = $2105ec; // RED     	 
        break;
        case 6:
         	var col = $99288c; // PURPLE       	 
        break;
    }
    
    
    
    
    if (!holding_turntable)
    {
        if (inst.sprite_index == sprite_get("turntable"))
        {
             var spr = sprite_get("turntable_hightlight");   
        }
        
        if (inst.sprite_index == sprite_get("turntable_spinning"))
        {
             var spr = sprite_get("turntable_spinning_hightlight");   
        }
        
        if (inst.sprite_index == sprite_get("uspecial_turntable"))
        {
            var spr = sprite_get("uspecial_turntable_hightlight"); 
        }
        
        
        if (inst.col != 0)
        {
            draw_sprite_ext(spr,inst.image_index,inst.x - 2,inst.y - 2,inst.spr_dir,1,0,col,1);
            draw_sprite_ext(spr,inst.image_index,inst.x + 2,inst.y - 2,inst.spr_dir,1,0,col,1);
            draw_sprite_ext(spr,inst.image_index,inst.x - 2,inst.y + 2,inst.spr_dir,1,0,col,1);
            draw_sprite_ext(spr,inst.image_index,inst.x + 2,inst.y + 2,inst.spr_dir,1,0,col,1);
        }
        
    }
    
}