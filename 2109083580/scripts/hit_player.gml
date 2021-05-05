//#region Specials

	//#region Nspecial
	
if(my_hitboxID.attack == AT_NSPECIAL){
	if(!nspec_directset){
		nspec_directset = true;
		if(spr_dir = 1){
			nspec_direct = point_direction(x,y,hit_player_obj.x,hit_player_obj.y)+180
		}else{
			nspec_direct = point_direction(x,y,hit_player_obj.x,hit_player_obj.y)*-1
		}
	}
}

	//#endregion


    //#region Fspecial
if ( my_hitboxID.attack == AT_FSPECIAL) {
	if((my_hitboxID.hbox_num == 1 ||  my_hitboxID.hbox_num == 2)  && hit_player_obj.clone == false){
		hit_player_obj.should_make_shockwave = false;
    	if(hit_player_obj.soft_armor <= 0 && hit_player_obj.super_armor == false){
    	    fspec_airgrab = true;
    	    fspec_id = hit_player_obj;
    	    fspec_hit = true;
    	}
    	if(my_hitboxID.hbox_num == 2){
    	    var pop = spawn_hit_fx( hit_player_obj.x + 30*my_hitboxID.spr_dir, hit_player_obj.y -45, lightningpop );
    	    pop.depth = -10;
    	}
    }
    /*if(my_hitboxID.hbox_num == 2){
    	FtoU_timer = 0;
    }*/
    fspec_jc = true;
    can_attack = true;
    set_window_value(attack, 3, AG_WINDOW_LENGTH, 4)
}
    //#endregion
    
    //#region Uspecial
if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1){
    my_hitboxID.player_id.USPpow = true;
    set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 20)
    var pop = spawn_hit_fx( hit_player_obj.x + 10*my_hitboxID.spr_dir, hit_player_obj.y -45, lightningpop );

    pop.depth = -10;
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1){
    
    var pop = spawn_hit_fx( hit_player_obj.x + 30*my_hitboxID.spr_dir, hit_player_obj.y -45, lightningpop );
    pop.depth = -10;
}

if (my_hitboxID.attack == AT_NSPECIAL && (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 2)){
    hit_player_obj.should_make_shockwave = false;
}
    

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 3){
    my_hitboxID.player_id.USPpow = false;
    var pop = spawn_hit_fx( hit_player_obj.x + 30*my_hitboxID.spr_dir, hit_player_obj.y -45, lightningpop );
    pop.depth = -10;
    uspec_cancel = true;
    
}

if ( my_hitboxID.attack == AT_USPECIAL && (my_hitboxID.hbox_num == 1 ||  my_hitboxID.hbox_num == 2) && hit_player_obj.clone == false) {
    hit_player_obj.should_make_shockwave = false;
    if(hit_player_obj.soft_armor <= 0 && hit_player_obj.super_armor == false){
        uspec_grab = true;
        uspec_id = hit_player_obj;
    }
    
}


    //#endregion
    
    //#region Dspecial_2
if ( my_hitboxID.attack == AT_DSPECIAL_2 || my_hitboxID.attack == AT_DSPECIAL_AIR) {
        if(my_hitboxID.hbox_num != 5){
            var pop = spawn_hit_fx( hit_player_obj.x + 30*my_hitboxID.spr_dir, hit_player_obj.y -45, SL_lightningpop );
            pop.depth = -10;
        }
}
    //#endregion
    
    
    //#region Dspecial_air
    
if (my_hitboxID.attack == AT_DSPECIAL_AIR && my_hitboxID.hbox_num == 5 && (hit_player_obj.soft_armor <= 0 && hit_player_obj.super_armor = false)){
    dspec_airgrab = true;
    dspec_id = hit_player_obj;
    set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HIT_SFX, 0);
    
    hit_player_obj.should_make_shockwave = false;
    
}
    //#endregion
    
    
//#endregion


//#region Strongs

    //#region Ustrong
if(my_hitboxID.attack == AT_USTRONG && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) && (hit_player_obj.soft_armor <= 0 && hit_player_obj.super_armor == false)){
    //move_cooldown[AT_USTRONG] = 100;
    hit_player_obj.should_make_shockwave = false;
    hit_player_obj.ustrong_vic = true;
    if(!slActive && stun_timer > stun_limit){
        hit_player_obj.throwlock = 0;
        hit_player_obj.throwid = id;
    }
            //hit_player_obj.x = x + (15 * spr_dir)
            //hit_player_obj.y = y - 85

    
    
    
    window = 6;
    window_timer = 0;
}

if(my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 4){
	hit_player_obj.ustrong_vic = false;
	
	
        //#region summon sparks
     for (var spark = 1; spark <= 8; spark++)
     {
         var obSpark;
         obSpark = create_hitbox(AT_USTRONG, 3, hit_player_obj.x + (-38 + random_func(spark, 70, true)) * spr_dir, hit_player_obj.y - 20 + random_func_2(15-spark, 50, true))

        //#endregion)
    
        //#region Spark Movement
        var spark_speed = 1;
        var spark_speed_var = 3;

        obSpark.vsp = (spark_speed + random_func_2(spark, spark_speed_var, true)) * sin(degtorad(random_func(spark, 360, true))) * -1
        obSpark.hsp = (spark_speed + random_func_2(spark, spark_speed_var, true)) * cos(degtorad(random_func(spark, 360, true))) * 3
    
    
        //#endregion
    
        //#region Spark angle
        obSpark.image_angle = random_func(spark, 360, true)
        //#endregion
     }
}

if(my_hitboxID.attack != AT_USTRONG || (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 4)){
	hit_player_obj.throwlock += 60;
}
    //#endregion
    
    //#region Dstrong
if(my_hitboxID.attack == AT_DSTRONG && (my_hitboxID.hbox_num == 1) && hit_player_obj.clone == false){
    hit_player_obj.should_make_shockwave = false;
    if(hit_player_obj.soft_armor <= 0 && hit_player_obj.super_armor == false){
        dspec_grab = true;
        dspec_id = hit_player_obj;
    }
    
    /*if(get_player_damage(hit_player_obj.player) > 150 && !slActive){
        set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 135)
        set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8)
        set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.7)
        dstrong_cap = true;
    }*/
}
    
if(my_hitboxID.attack == AT_DSTRONG && (my_hitboxID.hbox_num == 2)){
	if(!slActive){
    	hit_player_obj.should_make_shockwave = false;
	}
    //#region Sparks
     //#region summon sparks
     for (var spark = 1; spark <= 14; spark++)
     {
         var obSpark;
         obSpark = create_hitbox(AT_USTRONG, 3, hit_player_obj.x + (-30+ random_func(spark, 70, true)) * spr_dir, hit_player_obj.y - 50+ random_func_2(15-spark, 50, true))

        //#endregion)
    
        //#region Spark Movement
        var spark_speed = 1;
        var spark_speed_var = 3;

        obSpark.vsp = (spark_speed + random_func_2(spark, spark_speed_var, true)) * sin(degtorad(random_func(spark, 360, true))) * -1
        obSpark.hsp = (spark_speed + random_func_2(spark, spark_speed_var, true)) * cos(degtorad(random_func(spark, 360, true)))
    
    
        //#endregion
    
        //#region Spark angle
        obSpark.image_angle = random_func(spark, 360, true)
        //#endregion
        //#endregion
     }
     
     if(!slActive && dstrong_cap == false && stun_timer > stun_limit){
        hit_player_obj.hitstop_full += 10 + floor(get_player_damage(hit_player_obj.player)/5) + floor(strong_charge * 10 / 15)
        hit_player_obj.hitstop = hit_player_obj.hitstop_full;
        /*id.move_cooldown[AT_DSTRONG] = hit_player_obj.hitstop_full; //Lock out Cooldown
        id.move_cooldown[AT_FSTRONG] = hit_player_obj.hitstop_full;*/   
     }
    
    var pop = spawn_hit_fx( hit_player_obj.x + 30*my_hitboxID.spr_dir, hit_player_obj.y -45, lightningpop );
    pop.depth = -10;
}

    //#endregion

    //#region Fstrong
if(my_hitboxID.attack == AT_FSTRONG){
    
    
	set_window_value(attack, 3, AG_WINDOW_LENGTH, 10)
	/*if(!slActive
	&& my_hitboxID.hbox_num > 4
	&& my_hitboxID.hbox_num != 6
	&& my_hitboxID.hbox_num != 7){*/
	if(my_hitboxID.hbox_num != 1 &&my_hitboxID.hbox_num != 3 && my_hitboxID.hbox_num != 6 ){
    	var pop = spawn_hit_fx( hit_player_obj.x + 30*my_hitboxID.spr_dir, hit_player_obj.y -45, lightningpop );
    	pop.depth = -10;
			if(!slActive){
		    	hit_player_obj.should_make_shockwave = false;
			}
	}
	//}
	id.fstronghit = true;
    //id.window = 7;
    //id.window_timer = 0;
    //id.image_index = 0;
    id.move_cooldown[AT_FSTRONG] = 55;
}

    //#endregion

    //#region ZSS Stun fix
if(!slActive && (my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_FSTRONG || (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 2))){
    stun_timer = 0;
    stun_shift();
}
    
    
    //#endregion


//#endregion


//#region Aerials

    //#region Dair
if(my_hitboxID.attack == AT_DAIR){
    if(my_hitboxID.hbox_num == 1){
        id.window = 4;
        id.window_timer = 0;
        id.image_index = 0;
        if(dair_spike <= 2){
        	var pop = spawn_hit_fx( hit_player_obj.x + 30*my_hitboxID.spr_dir, my_hitboxID.y -0, lightningpop );
        }
        pop.depth = -10;
		/*if(get_player_damage(hit_player_obj.player) <= 70)
		{
			hit_player_obj.old_vsp *= -1;
		}*/
    }
    
    if(my_hitboxID.hbox_num == 1){
        if(get_player_damage(hit_player_obj.player) <= 50 && hit_player_obj.free){
            //hit_player_obj.dairflip = 0;
            //hit_player_obj.oldvsp = hit_player_obj.oldvsp * -1.5
            
        }
        /*else{
            reset_hitbox_value(AT_DAIR, 1, HG_ANGLE);
            reset_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING);
        }*/
    }
    
}

    //#endregion
    
    //#region Bair
if (my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 1) {
    var pop = spawn_hit_fx( hit_player_obj.x + 30*my_hitboxID.spr_dir, hit_player_obj.y -45, lightningpop );
    pop.depth = -10;    
}
    //#endregion
    
    //#region Fair
    
if(my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 4){
    var pop = spawn_hit_fx( hit_player_obj.x + 30*my_hitboxID.spr_dir, hit_player_obj.y -45, lightningpop );
    pop.depth = -10;    
}
    //#endregion

//#endregion


//#region Tilts

    //#region Dtilt
/*if(my_hitboxID.attack == AT_DTILT){
    id.dtiltjumpcancel = true;
}*/
    //#endregion
//#endregion

//#region Dattack

if(my_hitboxID.attack == AT_DATTACK){
	//DA_jcancel = true;
	if(my_hitboxID.hbox_num == 1){
		var pop = spawn_hit_fx( hit_player_obj.x + 10*my_hitboxID.spr_dir, hit_player_obj.y -45, lightningpop );

    	pop.depth = -10;
	}
}

//#region SL Add
if(my_hitboxID.attack != AT_DSPECIAL_2 && my_hitboxID.attack != AT_DSPECIAL_AIR ){
slTimer += (slActive?5:8) * floor(my_hitboxID.damage) * (runeG?3:1);
//miniSL_timer += (slActive?5:0) * floor(my_hitboxID.damage) * (runeG?3:1);
}

//#endregion


#define stun_shift
if(stun_timer > stun_limit){
	
	reset_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_DSTRONG, 2, HG_ANGLE);
	reset_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING);
	
	for(var i = 2; i <= 12; ++i){
		reset_hitbox_value(AT_FSTRONG, i, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_FSTRONG, i, HG_ANGLE);
		reset_hitbox_value(AT_FSTRONG, i, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_FSTRONG, i, HG_EXTRA_HITPAUSE);
	}
	
	reset_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER);
}
else{
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 135);
	set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.4);
	
	for(var i = 2; i <= 12; ++i){
		set_hitbox_value(AT_FSTRONG, i, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_FSTRONG, i, HG_ANGLE, 55);
		set_hitbox_value(AT_FSTRONG, i, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_FSTRONG, i, HG_EXTRA_HITPAUSE, 0);
	}
	
	set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 18)
	set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.8)
	set_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER, 0.5)
}