//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//NSPECIAL

if(attack == AT_NSPECIAL){
    bl_show = 1;
    if(special_pressed && bl_select < 7 && window == 1){
        bl_select += 1;
        clear_button_buffer(PC_SPECIAL_PRESSED);
    }else if(special_pressed && bl_select == 7 && window == 1){
        bl_select = 0;
        clear_button_buffer(PC_SPECIAL_PRESSED);
    }
    

}



//FSPECIAL
if(attack == AT_FSPECIAL){
    
    if (window == 2 && window_timer == 2){
        
        var box = instance_create(x+70*spr_dir, y-20, "obj_article1");
        box.player_id = id;
        box.player = player;
        move_cooldown[AT_FSPECIAL] = 90;
    }
    with(asset_get("onj_article_solid")){
        instance_destroy();
    }
    
}

//USPECIAL
var sinkv = false;
if(attack == AT_USPECIAL){
	if(window == 2 && window_timer == 9){
    switch(bl_select){
        case 0:
            //Increase djumps
            hudv = 1;
            max_djumps = 4;
            
        break;
        
        case 1:
            //teleport to box
            with(asset_get("obj_article1")){
                player_id.x = x;
                player_id.y = y;
            }
        break;
        
        case 2:
        
        create_hitbox(AT_USPECIAL, 1, x, y);
        break;
        
        case 3:
        hudv = 2;
        walk_speed = 8;
        dash_speed = 11;
        break;
        
        case 4:
        create_deathbox(x, y, 8, 8, -1, true, 0, 3, 2);
        break;
        
        case 5:
        hudv = 3;
        gravity_speed = 1.05;
        jump_speed = 9;
        short_hop_speed = 6;
        djump_speed = 9;
        knockback_adj = 0.5;
        sinkv = true;
        break;
        
        case 6:
        
        if(free){
        	spr_dir = -spr_dir;
        	hsp = 10*spr_dir;
        	vsp = 0;
        }
        break;
        
        case 7:
        
        break;
        
    }
    if(bl_select != 0){
        max_djumps = 1;
    }
    if(bl_select != 3){
        walk_speed = 4;
        dash_speed = 7.5;
        
        

    }
    if(bl_select != 5){
        jump_speed = 13;
        short_hop_speed = 8;
        djump_speed = 12;
        knockback_adj = 1.0;
        sinkv = false;
        gravity_speed = .70;
    }
    move_cooldown[AT_USPECIAL] = 180;
    
}
}

if(sinkv){
    set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 10);
    set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 10);
    set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 10);
    set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 10);
    set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 18);
    set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 18);
    set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 18);
}

if(attack == AT_DSPECIAL){
    if(window == 2 && window_timer == 8){
    with(asset_get("obj_article1")){
        state = 3;
        state_timer = 0;
    }
    
    }
    
        if(instance_exists(asset_get("obj_article_solid"))){
		        instance_destroy();
        }
}










