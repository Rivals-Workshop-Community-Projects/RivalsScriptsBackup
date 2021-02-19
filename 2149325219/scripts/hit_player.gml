
if(my_hitboxID.attack == AT_DAIR){
    id.old_vsp = -6
}

if(my_hitboxID.attack == AT_NAIR){
    attack_end();
    if(my_hitboxID.hbox_num == 1 && my_hitboxID.hbox_num == 2){
        set_hitbox_value(attack, 1, HG_HIT_SFX, 0);
    }else{
        reset_hitbox_value(attack,1,HG_HIT_SFX);
    }
}



if(my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 2){
    my_hitboxID.source.hsp *= 0.45;
    my_hitboxID.source.vsp *= 0.85;
    my_hitboxID.source.fuse -= 60;
    sound_play(asset_get("sfx_blow_weak1"))
    my_hitboxID.source.smackT = 0;
    
    //push boxes
    if(my_hitboxID.source.vsp < 0){
        hit_player_obj.vsp = my_hitboxID.source.vsp * 1.3
    }else{
        hit_player_obj.vsp = my_hitboxID.source.vsp *0.4
    }
    if(hit_player_obj.free = false){
        hit_player_obj.hsp = my_hitboxID.source.hsp * 1.5
    }else{
        hit_player_obj.hsp = my_hitboxID.source.hsp * 0.9
        
    }
    
    if(hit_player_obj.state == PS_PRATFALL){
        hit_player_obj.state = PS_IDLE_AIR;
    }
    if(hit_player_obj.has_walljump == false){
        hit_player_obj.has_walljump = true;
    }
}

if(my_hitboxID.attack == AT_UAIR 
|| (my_hitboxID.attack == AT_FAIR && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 3))
|| my_hitboxID.attack == AT_JAB
|| my_hitboxID.attack == AT_FSPECIAL
|| (my_hitboxID.attack == AT_BAIR && (my_hitboxID.hbox_num = 2 || my_hitboxID.hbox_num = 3))
|| (my_hitboxID.attack == AT_UTILT && my_hitboxID.hbox_num = 2)
|| (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num = 2)){
    
    if(fuse > 240 || fuse <= 120){
        if(prime){
    		fuse -= 120
    	}else{
        	fuse -= 60;
    	}
    }
    else{
        fuse = 120;
    }
}

if(my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 2){
    
	if(!fair_spike){
		set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 285)
		set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 0)
		fair_spike = true;
	}
}

if(my_hitboxID.attack == AT_BAIR ){
    
	if(!bair_launch){
		set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 90)
		set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 0)
		bair_launch = true;
	}
}
if((my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 2)
|| (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num > 7)){
    if(fuse > 240 || fuse <= 120){
    	if(prime){
    		fuse -= 120
    	}else{
        	fuse -= 90;
    	}
    }
    else{
        fuse = 120;
    }
    
}

if(my_hitboxID.attack == AT_DATTACK){
    if(fuse > 240 || fuse <= 120){
        if(prime){
    		fuse -= 120
    	}else{
        	fuse -= 60;
    	}
    }
    else{
        fuse = 120;
    }
    window = 3;
    window_timer = 30;
    sound_stop(asset_get("sfx_spin"))
    destroy_hitboxes();
}

if(my_hitboxID.attack == AT_NAIR && my_hitboxID.hbox_num == 2){
    if(fuse > 140 || fuse <= 120){
        if(prime){
    		fuse -= 50
    	}else{
        	fuse -= 20;
    	}
    }
    else{
        fuse = 120;
    }
}

if(my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 1
|| (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num = 1)){
    if(fuse > 180 || fuse <= 120){
        if(prime){
    		fuse -= 60
    	}else{
        	fuse -= 30;
    	}
    }
    else{
        fuse = 120;
    }
    
    set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("empty_sprite1"));
    set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 0);
    set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0);
}

if(my_hitboxID.attack == AT_BAIR){
    if(my_hitboxID.hbox_num == 1){
        handsx = (hit_player_obj.x - x)*spr_dir - 15
        handsy = -hit_player_obj.y + y + 25
        
    }else{
        handsx = (hit_player_obj.x - x)*spr_dir
        handsy = -hit_player_obj.y + y + 10
    }
}

if(my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){
    vsp *= 0.7;
}

if(my_hitboxID.attack == AT_USPECIAL && uspec_low == true){
    uspec_lowcancel = true;
    fuse = fuse_max + 20;
}

if(my_hitboxID.attack == AT_FSPECIAL){
    fspec_cancel = true;
    fuse = fuse_max + 20;
}



ovenhands = 0;

