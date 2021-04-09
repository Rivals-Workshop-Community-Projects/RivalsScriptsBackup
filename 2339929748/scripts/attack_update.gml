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
        
        var box = instance_create(x+70*spr_dir, y-50, "obj_article1");
        box.player_id = id;
        box.player = player;
        
    }
    with(asset_get("obj_article_solid")){
        instance_destroy();
    }
    with(asset_get("obj_article_platform")){
        instance_destroy();
    }
    move_cooldown[AT_FSPECIAL] = 60;
}

//USPECIAL block abilities
if(attack == AT_USPECIAL){
	if(window == 2 && window_timer == 9){
    switch(bl_select){
        case 0:
            //Increase djumps, maybe make baba floaty?
            hudv = 1;
            floatv = true;
            sinkv = false;
            firev = false;
        break;
        
        case 1:
            //teleport to box
            with(asset_get("obj_article1")){
                player_id.x = x;
                player_id.y = y;
            }
            spawn_dust_fx(x-40*spr_dir, y-60, sprite_get("teleffect"), 30);
            set_state(PS_PRATFALL);
        break;
        
        case 2:
        //sets baba on fire
        hudv = 4;
        firev = true;
        sinkv = false;
        floatv = false;
        break;
        
        case 3:
        //makes baba faster on the ground
        hudv = 2;
        walk_speed = 8;
        dash_speed = 11;
        firev = false;
        sinkv = false;
        break;
        
        case 4:
        //spawns destructive hitbox that can kill at 30. Still need to input a jigglypuff-esque stun
        create_hitbox(AT_DSPECIAL, 1, x+20, y+20);
        firev = false;
        sinkv = false;
        stunv = true;
        endtimer = 120;
        break;
        
        case 5:
        hudv = 3;
        sinkv = true;
        firev = false;
        break;
        
        case 6:
        //flips baba's direction in the air
        if(free){
        	spr_dir = -spr_dir;
        	hsp = 10*spr_dir;
        	vsp = 0;
        }
        hudv = 0;
        firev = false;
        sinkv = false;
        break;
        
        case 7:
        //neutralizer
        hudv = 0;
        firev = false;
        sinkv = false;
        break;
        
    }


    if(bl_select != 3){
        walk_speed = 3;
        dash_speed = 6.5;
        
        

    }

    move_cooldown[AT_USPECIAL] = 30;
    
}
}




if(sinkv){
	gravity_speed = 1.05;
    jump_speed = 9;
    short_hop_speed = 6;
    djump_speed = 9;
    knockback_adj = 0.5;
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
    move_cooldown[AT_DSPECIAL] = 30;
}










