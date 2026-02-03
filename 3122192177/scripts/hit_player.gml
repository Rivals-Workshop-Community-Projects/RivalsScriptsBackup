// sfx
if(my_hitboxID.attack == AT_JAB){
        if(my_hitboxID.hbox_num == 1){
    sound_play(sound_get("impact1"), 0, noone, 1, 1);   
    }   if(my_hitboxID.hbox_num == 3){
    sound_play(sound_get("impact1"), 0, noone, 1, 0.7);  
    }
    
        if(my_hitboxID.hbox_num == 2){
    sound_play(sound_get("se_common_magic_hit_s"), 0, noone, 0.5, 1);   
    }   if(my_hitboxID.hbox_num == 4){
    sound_play(sound_get("se_common_magic_hit_s"), 0, noone, 0.5, 0.95);   
    }
}

if(my_hitboxID.attack == AT_UTILT){
    sound_play(sound_get("se_common_magic_hit_s"), 0, noone, 0.5); 
}

if(my_hitboxID.attack == AT_DTILT){
    sound_play(sound_get("se_common_magic_hit_m"), 0, noone, 0.5); 
}

if(my_hitboxID.attack == AT_USTRONG){
    sound_play(sound_get("se_common_magic_hit_ll"), 0, noone, 0.75); 
}

if(my_hitboxID.attack == AT_DSTRONG){
    if(my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 5){
    sound_play(sound_get("se_common_magic_hit_m"), 0, noone, 0.5); 
    sound_play(asset_get("sfx_absa_kickhit"), 0, noone, 0.5); 
    }
    
    if(my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 6){
    sound_play(sound_get("se_common_magic_hit_l"), 0, noone, 0.75); 
    sound_play(asset_get("sfx_absa_uair"), 0, noone, 0.75);
    }
    
    //make finisher large
    if(my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3){
    	set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 150);
		set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 75);
    	
    }
}

if(my_hitboxID.attack == AT_BAIR){
    if(my_hitboxID.hbox_num == 1){
    sound_play(sound_get("se_common_magic_hit_m"), 0, noone, 0.5); 
    }if(my_hitboxID.hbox_num == 2){
    sound_play(sound_get("impact1"), 0, noone, 1, 1); 
    }
}

if(my_hitboxID.attack == AT_FAIR){
        if(my_hitboxID.hbox_num < 3){
    sound_play(sound_get("impact1"), 0, noone, 1, 1);   
    }
        if(my_hitboxID.hbox_num == 3){
    //sound_play(sound_get("lightrod"), 0, noone, 0.7, 1);   
    sound_play(sound_get("SE_HAMMERHITL"), 0, noone, 2);  
    }
}

if(my_hitboxID.attack == AT_NAIR || my_hitboxID.attack == AT_UAIR){
        if(my_hitboxID.hbox_num < 3){
    sound_play(sound_get("se_common_magic_hit_s"), 0, noone, 0.5);   
    }
        if(my_hitboxID.hbox_num == 3){
    sound_play(sound_get("se_common_magic_hit_m"), 0, noone, 0.5);    
    }
}

if(my_hitboxID.attack == AT_DAIR){
    sound_play(sound_get("se_common_magic_hit_ll"), 0, noone, 0.5); 
    sound_play(sound_get("big_impact"), 0, noone, 1); 
}

if(my_hitboxID.attack == AT_FSTRONG){
    sound_play(sound_get("rod_hit"));
}
if(my_hitboxID.attack == AT_FTILT){
    //sound_play(sound_get("lightrod"), 0, noone, 1, 0.8); 
    sound_play(sound_get("impact3"), 0, noone, 1.1); 
}
if(my_hitboxID.attack == AT_DATTACK){
        if(my_hitboxID.hbox_num == 1){
    sound_play(sound_get("impact2"), 0, noone, 1.5);   
    }
}

if(my_hitboxID.attack == AT_NSPECIAL){
        if(my_hitboxID.hbox_num == 1){
    sound_play(sound_get("holy_impact"), 0, noone, 1, 1);   
    }   if(my_hitboxID.hbox_num == 2){
    sound_play(sound_get("holy_impact"), 0, noone, 1, 0.8);   
    }   if(my_hitboxID.hbox_num == 7){
    sound_play(sound_get("gravity_erupt"));   
    }   if(my_hitboxID.hbox_num == 8){
    sound_play(sound_get("gravity_bigerupt"));   
    }
}

//stuff that does stuff

if(my_hitboxID.attack == AT_NSPECIAL){
    if(my_hitboxID.hbox_num == 3){
    sound_play(sound_get("se_common_magic_hit_s"), 0, noone, 0.5); 
    sound_stop(sound_get("death_small"));  
    sound_play(sound_get("death_small"), 0, noone, 0.75);     
    }
    if(my_hitboxID.hbox_num == 4){
        if(was_parried == false && hit_player_obj.clone == false){
    sound_play(sound_get("death"));   
    sound_play(sound_get("se_common_magic_hit_s"), 0, noone, 0.5);
    death_target = hit_player_obj;   
    death_timer = 45;
        }
    }
    if(my_hitboxID.hbox_num == 5){
    sound_play(sound_get("se_common_magic_hit_s"), 0, noone, 0.5); 
    }    if(my_hitboxID.hbox_num == 6){
    sound_play(sound_get("se_common_magic_hit_m"), 0, noone, 0.5); 
    }
}

//gain meter from hitting the big attacks
if(my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_DAIR){
    if(in_range_of_field){
    activate_field();
    }
    if(nspec_charge < 12*15){
    nspec_charge += 5*15;    
    }
}
if(my_hitboxID.attack == AT_DTILT || my_hitboxID.attack == AT_UTILT){
    if(in_range_of_field){
    activate_field();
    }
    if(nspec_charge < 12*15){
    nspec_charge += 4*15;    
    }
}
if(my_hitboxID.attack == AT_UAIR){
    if(nspec_charge < 12*15){
    nspec_charge += 2*15;    
    }
    if(my_hitboxID.hbox_num == 3){
        if(in_range_of_field){
        activate_field();
        }
    }
}
if(my_hitboxID.attack == AT_BAIR){
    if(my_hitboxID.hbox_num == 1){
        if(in_range_of_field){
    activate_field();
        }
    if(nspec_charge < 12*15){
    nspec_charge += 4*15;    
    }
    }
}
if(my_hitboxID.attack == AT_NAIR){
    if(nspec_charge < 12*15){
    nspec_charge += 2*15;    
    }
    if(my_hitboxID.hbox_num == 3){
        if(in_range_of_field){
        activate_field();
        }
    }
}
if(my_hitboxID.attack == AT_DSTRONG){
    if(my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 6){
        if(in_range_of_field){
        activate_field();
        }
    if(nspec_charge < 12*15){
    nspec_charge += 4*15;    
    }
    }else{
    if(nspec_charge < 12*15){
    nspec_charge += 2*15;    
    }        
    }
}
if(my_hitboxID.attack == AT_JAB){
    if(my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 4){
    if(nspec_charge < 12*15){
    nspec_charge += 3*15;    
    }
    }
}
if(my_hitboxID.attack == AT_DSPECIAL){
    if(my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3){
    if(nspec_charge < 12*15){
    nspec_charge += 3*15;    
    }
    }
}

//article stuff

if(hit_player_obj == break_id){
	if (instance_exists(materia_field) && materia_field != 0){
		materia_field.state_timer = 30+90;
	}
}

if(my_hitboxID.attack == AT_DSPECIAL){
    if(my_hitboxID.hbox_num == 3){
    	if (instance_exists(materia_field) && materia_field != 0){
    		if(was_parried == false && hit_player_obj.clone == false){
    		materia_field.break_has_hit = 90;
    		break_id = hit_player_obj;
    		hit_player_obj.x = materia_field.x;
    		hit_player_obj.y = materia_field.y+20;
    		materia_field.depth = -10;
    		sound_play(sound_get("break_petrify"), 0, noone, 1, 1);  
    		}
    	}
    }if(my_hitboxID.hbox_num == 4){
    	sound_play(sound_get("break_shatter"));
    	spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, break_vfx);
    }
}

//oh boy, here we go
//frogsong
if(my_hitboxID.attack == AT_DSPECIAL){
    if(my_hitboxID.hbox_num == 8){
    	if(was_parried == false && hit_player_obj.clone == false && get_player_hud_color(hit_player_obj.player) != get_player_hud_color(player)){
    		if(hit_player_obj.is_frog == false){
    			//oh god
    			hit_player_obj.is_frog = true;
    			switch (hit_player_obj.player){
    				case 1:
    				print("I am player 1");
    				frog1_id = instance_create(hit_player_obj.x, hit_player_obj.y, ("obj_article2"));
    				frog1_id.frog_id = hit_player_obj;
    				frog1_id.spr_dir = hit_player_obj.spr_dir;
    				frog1_id.vsp = -10;
    				frog1_id.frog_hitstun = 10;
    				frog1_id.hitstop = 10;
    				frog1_id.frog_player_num = "1";
    				frog1_id.frog_color1 = hit_player_obj.frog_color1;
    				frog1_id.frog_color2 = hit_player_obj.frog_color2;
    				frog1_id.frog_color3 = hit_player_obj.frog_color3;
    				break;
    				
    				case 2:
    				print("I am player 2");
    				frog2_id = instance_create(hit_player_obj.x, hit_player_obj.y, ("obj_article2"));
    				frog2_id.frog_id = hit_player_obj;
    				frog2_id.spr_dir = hit_player_obj.spr_dir;
    				frog2_id.vsp = -10;
    				frog2_id.frog_hitstun = 10;
    				frog2_id.hitstop = 10;
    				frog2_id.frog_player_num = "2";
    				frog2_id.frog_color1 = hit_player_obj.frog_color1;
    				frog2_id.frog_color2 = hit_player_obj.frog_color2;
    				frog2_id.frog_color3 = hit_player_obj.frog_color3;
    				break;
    				
    				case 3:
    				print("I am player 3");
    				frog3_id = instance_create(hit_player_obj.x, hit_player_obj.y, ("obj_article2"));
    				frog3_id.frog_id = hit_player_obj;
    				frog3_id.spr_dir = hit_player_obj.spr_dir;
    				frog3_id.vsp = -10;
    				frog3_id.frog_hitstun = 10;
    				frog3_id.hitstop = 10;
    				frog3_id.frog_player_num = "3";
    				frog3_id.frog_color1 = hit_player_obj.frog_color1;
    				frog3_id.frog_color2 = hit_player_obj.frog_color2;
    				frog3_id.frog_color3 = hit_player_obj.frog_color3;   				
    				break;
    				
    				case 4:
    				print("I am player 4");
    				frog4_id = instance_create(hit_player_obj.x, hit_player_obj.y, ("obj_article2"));
    				frog4_id.frog_id = hit_player_obj;
    				frog4_id.spr_dir = hit_player_obj.spr_dir;
    				frog4_id.vsp = -10;
    				frog4_id.frog_hitstun = 10;
    				frog4_id.hitstop = 10;
    				frog4_id.frog_player_num = "4";
    				frog4_id.frog_color1 = hit_player_obj.frog_color1;
    				frog4_id.frog_color2 = hit_player_obj.frog_color2;
    				frog4_id.frog_color3 = hit_player_obj.frog_color3;  				
    				break;
    			}
    			sound_play(sound_get("frogtransform_2"));
    		}
    	}
    }
}
if(my_hitboxID.attack == AT_DSPECIAL){
    if(my_hitboxID.hbox_num == 9 || my_hitboxID.hbox_num == 10){
    sound_play(sound_get("frog_hit"));
    
    switch (my_hitboxID.player){
    	case 1:
		frog1_id.artificial_hitstop = 10; 
		frog1_id.frog_has_hit = true; 
    	break;
    	case 2:
		frog2_id.artificial_hitstop = 10; 
		frog2_id.frog_has_hit = true; 
    	break;
    	case 3:
    	frog3_id.artificial_hitstop = 10; 
    	frog3_id.frog_has_hit = true; 
    	break;
    	case 4:
    	frog4_id.artificial_hitstop = 10; 
    	frog4_id.frog_has_hit = true; 
    	break;
    }
    
    }
}

#define activate_field()
		materia_field.state = 2;
		materia_field.state_timer = 0;
		materia_field.field_damage = my_hitboxID.damage;
		materia_field.field_kb = my_hitboxID.kb_value;
		materia_field.field_kbscale = my_hitboxID.kb_scale;
		materia_field.field_hitpause = my_hitboxID.hitpause;
		materia_field.field_hitscale = my_hitboxID.hitpause_growth;
		materia_field.field_angle = my_hitboxID.kb_angle;