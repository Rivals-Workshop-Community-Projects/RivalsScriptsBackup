//hitbox_update

if (attack == AT_USPECIAL){
    if (!free){
        var misobody = instance_create(x, y+4, "obj_article1");
        misobody.player_id = player_id;
        misobody.player = player;
        misobody.spr_dir = spr_dir;
        misobody.image_index = 0;
        with (player_id){
            sound_play(asset_get("sfx_land"));
        }
        
        instance_destroy();
        exit;
    }
    
    //蓋に当たる
    if (free and player_id.hutahit = true and player_id.hutahit2 = true){
        var misobody = instance_create(x, y+4, "obj_article1");
        misobody.player_id = player_id;
        misobody.player = player;
        misobody.spr_dir = spr_dir;
        misobody.image_index = 0;
        instance_destroy();
        exit;
    }
    
    
    //画面外
    if (y > room_height + 100){
        sound_play(asset_get("sfx_death1"));
        
        if(player_id.bodyless) player_id.bodyloss = true;
        player_id.headdie = false;
        instance_destroy();
        exit;
    }
}


//頭NB自爆
if(attack == AT_NSPECIAL_2 && hbox_num == 1){
     can_hit_self = true;
}


//-----------------------------------------------------------------------------
//NB 瓶
if (attack == AT_NSPECIAL){
	with (player_id){
		move_cooldown[AT_NSPECIAL] = 12;
	}
	
	NB_length -= 1;
	player_id.NB_length2 = NB_length;
	player_id.NB_charge2 = NB_charge;
	player_id.NBalive = 2;
	if( NB_recast > 0) NB_recast -= 1;
	
    if (!free or NB_length == 0 or y > room_height + 100 or x > room_width + 100 or  x < -100){
        with (player_id){
        	if(NB_charge2 < 2){
            	sound_play(asset_get("sfx_ice_nspecial_hit_ground"));
        	}
        	if(NB_charge2 >= 2){
        		sound_play(asset_get("sfx_ell_uspecial_explode"));
        	}
            hutahit  = false;
			hutahit2 = false;
			hutahit3 = false;
			NB_cast = false;
			NBhit = false;
        }
        if(NB_charge < 2){
	        spawn_hit_fx( x, y, 119 );
	        create_hitbox(AT_NSPECIAL_2, 2, x, y);
        }
        if(NB_charge >= 2){
	        spawn_hit_fx( x, y, 143 );
	        create_hitbox(AT_NSPECIAL_2, 1, x, y);
        }
        instance_destroy();
        exit;
    }
    

    
	if(NB_charge == 0){
			sprite_index = sprite_get("nspe_proj");
			if((NB_length mod 4) == 1)  spawn_hit_fx(x, y, hit_fx_create(sprite_get("nspe_dust"), 12));
			
			damage = 6;//HG_DAMAGE
			kb_value = 4;//HG_BASE_KNOCKBACK
			kb_scale = 0.1;//HG_KNOCKBACK_SCALING
			hitpause = 3;//HG_BASE_HITPAUSE
			hitpause_growth = 0.1;//HG_HITPAUSE_SCALING
			
			with (player_id){
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 6);
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 4);
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.1);
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 3);
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.1);
			}
			
	}else if(NB_charge == 1){
			sprite_index = sprite_get("nspe_proj2");
			if((NB_length mod 4) == 1)  spawn_hit_fx(x, y, hit_fx_create(sprite_get("nspe_dust2"), 12));
			
			damage = 9;//HG_DAMAGE
			kb_value = 7;//HG_BASE_KNOCKBACK
			kb_scale = 0.4;//HG_KNOCKBACK_SCALING
			hitpause = 6;//HG_BASE_HITPAUSE
			hitpause_growth = 0.3;//HG_HITPAUSE_SCALING
			
			with (player_id){
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 9);
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 7);
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.4);
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 6);
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.3);
			}
	}else if(NB_charge >= 2){
			if(NB_charge < 3){
				sprite_index = sprite_get("nspe_proj3");
			}
			if(NB_charge == 3){
				sprite_index = sprite_get("nspe_proj4");
			}
			if((NB_length mod 4) == 1)  spawn_hit_fx(x, y, hit_fx_create(sprite_get("nspe_dust3"), 12));
			
			hit_effect = 143;
			sound_effect = asset_get("sfx_ell_strong_attack_explosion");
			damage = 12;//HG_DAMAGE
			kb_value = 9;//HG_BASE_KNOCKBACK
			kb_scale = 0.6;//HG_KNOCKBACK_SCALING
			hitpause = 8;//HG_BASE_HITPAUSE
			hitpause_growth = 0.5;//HG_HITPAUSE_SCALING
			
			with (player_id){
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 12);
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 9);
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.6);
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 8);
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.5);
			}
	}
    
    
    if(free){
    	//攻撃でお手玉
    	if( NB_recast == 0 and place_meeting(x,y, asset_get("pHitBox"))){
    		NB_recast = 8;//攻撃が当たる間隔
	    	NB_length = 90;//持続時間
	    	if(NB_max > NB_charge) NB_charge += 1;//一段回強化
	    	
	    	if(NB_charge == 1) sound_play(asset_get("sfx_orcane_fspecial_pud"));
	    	if(NB_charge == 2) sound_play(asset_get("sfx_orcane_fspecial"));
	    	if(NB_charge == 3) sound_play(asset_get("sfx_orca_snow_evaporate"));
	    	if(NB_charge == 4){
	    		spawn_hit_fx( x, y, 143 );
	        	create_hitbox(AT_NSPECIAL_2, 1, x, y);
	        	instance_destroy();
				exit;
	    	}
	    	
	    	
	        grav = .4;
	    	
	    	/*
    		if (player_id.attack == AT_FSTRONG or player_id.attack == AT_USTRONG){
		        sound_play(asset_get("sfx_blow_heavy1"));
		        sound_play(asset_get("sfx_ice_nspecial_hit_ground"));
    			spawn_hit_fx( x, y, 119 );
		        instance_destroy();
        		exit;
    		}else{
    		*/
    		if (player_id.attack == AT_UTILT){
		        vsp = -10;
    		}else if (player_id.attack == AT_FSTRONG){
    			hsp = 12*player_id.spr_dir;
		        vsp = -2;
    		}else if (player_id.attack == AT_USTRONG){
		        vsp = -10;
    		}else if (player_id.attack == AT_UAIR ){
		        vsp = -12;
    		}else if (player_id.attack == AT_NAIR or player_id.attack == AT_JAB ){
	    		hsp = 6*player_id.spr_dir;
		        vsp = -6;
    		}else if (player_id.attack == AT_BAIR){
    			//effect = 1;//burn
	    		hsp = -14*player_id.spr_dir;
		        vsp = -6;
    		}else if (player_id.attack == AT_FAIR){
	    		hsp = 12*player_id.spr_dir;
		        vsp = 2;
    		}else if (player_id.attack == AT_DATTACK){
    			NB_recast = 12;
	    		hsp = 12*player_id.spr_dir;
		        vsp = -4;
    		}else if (player_id.attack == AT_FTILT){
	    		hsp = 10*player_id.spr_dir;
		        vsp = -5;
    		}else if (player_id.attack == AT_DTILT){
	    		hsp = 3*player_id.spr_dir;
		        vsp = -9;
    		}else if (player_id.attack == AT_DSPECIAL){
	    		hsp = 12*player_id.spr_dir;
		        vsp = -2;
    		}else if (player_id.attack == AT_DSPECIAL_AIR){
	    		hsp = 10*player_id.spr_dir;
		        vsp = 10;
    		}else if (player_id.attack == AT_USPECIAL and player_id.window >= 5){
	    		hsp = 10*player_id.spr_dir;
		        vsp = -5;
    		}
    		else{
    		    hsp = 4*player_id.spr_dir;
    			vsp = -4;
    		}
    		sound_play(asset_get("sfx_blow_medium1"));
    		spawn_hit_fx( x, y, 117 );
    		}
    	}
    	
    	if (player_id.hutahit = true and player_id.hutahit3 = true){
	        NB_length += 60;
	        if(NB_max > NB_charge) NB_charge += 1;//一段回強化
	        vsp = -16;
	        if(hsp != 0) hsp = spr_dir*6;
	        grav = 1;
	        
	        if(NB_charge == 1) sound_play(asset_get("sfx_orcane_fspecial_pud"));
	    	if(NB_charge == 2) sound_play(asset_get("sfx_orcane_fspecial"));
	    	if(NB_charge == 3) sound_play(asset_get("sfx_orca_snow_evaporate"));
	    }
    }
