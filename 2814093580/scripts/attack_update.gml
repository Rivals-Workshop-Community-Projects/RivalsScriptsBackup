// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
	trigger_b_reverse();
}


switch(attack){
	
    case AT_USPECIAL:
		if window == 1 && window_timer == 1{
			upspecial_used = 1;
			clear_button_buffer(PC_SPECIAL_PRESSED)
		}
		if has_rune("O") && free{
			iasa_script();
		}
        if (window == 4){
        if (down_pressed){
        set_state(has_rune("K")? PS_IDLE_AIR:PS_PRATFALL);
        }
        can_wall_jump = true
    }
    break;
    
    case AT_DSTRONG:
    	if has_rune("H"){
    		set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 10);
    		if window == 2 && !hitstop{
    			hsp = clamp(hsp + ((right_down - left_down) * ((strong_charge + 60) / 90)), -7, 7);
    		}
    	}
    	if has_rune("I"){
    		set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
    		if window == 2 && !hitstop{
    			vsp = (-3 - (strong_charge / 20)) + (window_timer / 5);
    		}
    	}
    break;

    case AT_BAIR:
    move_cooldown[AT_BAIR] = 20;
    bair_cool = 20;
    // Samson can't fast fall on every window except 4
    if window != 4 
    {can_fast_fall = false;}
    break;

    case AT_DAIR:
    can_fast_fall = false;
    var random = random_func( 0, 10, true );

    //If Samson whiffs the attack, there's a 10% chance of spawning a doughnut
if (window == 2 and window_timer == 7 and !has_hit) {
    if (random == 5) {
    sound_play(asset_get("sfx_diamond_small_collect"));
    create_hitbox(AT_DAIR, 2, x, y);
	}
    
    }
    break;

    case AT_USTRONG:
//Funky FX stuff, you should play Patapon one day. 
    if((window == 2))
    {ustrongtimer = true;
    }
    if((window == 4))
    {ustrongtimer = false;
    }
    // Spawn PATA and make sure it's always facing forward
    if ((window == 1 and window_timer == 1))
    {
        patafx = spawn_hit_fx( x, (y + 25), hit_fx_create( sprite_get("pata"), 24 ) );
        patafx.spr_dir = 1;
    }
    break;

    case AT_NSPECIAL:
// Samson spawns his Jar
if (window == 2 && window_timer == 1 && hitpause == false && jar_is_out == false)
    {

    jar = instance_create(x + (25*spr_dir), y-10, "obj_article1");
    jar.jar_hitbox_num = jar_hitbox_num;
    jar.player_id = id;
	jar.player = player; 
        
    }
    // Turn it into NSPECIAL if his Jar is already out 
    if window == 1 and (window_timer == 1) and jar_is_out == true  
    {if jar.grounded >= 1 and jar.jar_health > 0

        {set_attack(AT_NSPECIAL_2);
        hurtboxID.sprite_index = sprite_get("nspecial2_hurt");
          if phone_cheats[CHEAT_JAR] == 0
        {
        move_cooldown[AT_NSPECIAL] = 250
        move_cooldown[AT_NSPECIAL_AIR] = 250
        nspecial_cool = 250;}
        }
    }
    if window == 1 && window_timer == 1 && free{
    	set_attack(AT_NSPECIAL_AIR)
    }
    break;
    case AT_NSPECIAL_AIR:
// Samson spawns his Jar
if (window == 2 && window_timer == 1 && hitpause == false && jar_is_out == false)
    {

    jar = instance_create(x, y + 30, "obj_article1");
    jar.jar_hitbox_num = jar_hitbox_num;
    jar.player_id = id;
	jar.player = player; 
        
    }
    // Turn it into NSPECIAL if his Jar is already out 
    if window == 1 and (window_timer == 1) and jar_is_out == true  
    {if jar.grounded >= 1 and jar.jar_health > 0

        {set_attack(AT_NSPECIAL_2);
        hurtboxID.sprite_index = sprite_get("nspecial2_hurt");

        if phone_cheats[CHEAT_JAR] == 0
        {
        move_cooldown[AT_NSPECIAL] = 250
        move_cooldown[AT_NSPECIAL_AIR] = 250
        nspecial_cool = 250;
        }
        }
        
    }
    break;

    case AT_NSPECIAL_2:
    if window == 2 || has_rune("L")
    {
    jar.manual_boom = 1;
    }
//Funky FX Stuff
    if window == 1 and window_timer == 1
    stagelight = spawn_hit_fx( jar.x, jar.y, hit_fx_create( sprite_get( "stagelight" ), 30 ) ); 
    stagelight.x = jar.x;
    stagelight.y = jar.y;
    break;

    case AT_DATTACK:

    

    // Samson will end the attack prematurely if he was parried
   if was_parried         
        {
        if window = 2 and window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ) 
        {set_state(PS_PRATLAND);}
        else if window = 4 and window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ) 
        {set_state(PS_PRATLAND);}
            else if window = 5 and window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ) 
        {set_state(PS_PRATLAND);}
        }
    if window == 4 and !was_parried
    {
		if has_rune("A") && (right_down - left_down = spr_dir) && window_timer == 20 && state_timer < 80{
			window_timer = 0;
		}
		if has_rune("B") && has_hit{
			can_attack = true;
		}
        //Samson does his finishing attack
        if attack_pressed && can_attack == false{
        	destroy_hitboxes();
        	window = 5;
        	window_timer = 0;
        	create_hitbox(AT_DATTACK, 3, x, y);
        }
        
        if window = 4 and !hitpause and window_timer % 5 == 0 
        {
            create_hitbox( AT_DATTACK, 2, x, y);
        }

        // Dash-canceling 
        if window = 4 and window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH )  
        {set_state(PS_DASH);
        attack_end();
        }
    can_jump = true;

    }

    if window == 4 and window_timer == 1 and free
{
hsp = 0;
attack_end();
destroy_hitboxes();
}

    break;

    case AT_FSPECIAL:
    can_fast_fall = false;
     if window >= (2) 
    {
        can_wall_jump = true;
    }
	if has_rune("M") && window == 3 && window_timer == 12 && special_down{
		attack_end();
		window_timer = 0;
	}
	if window >= (5) 
    {
        can_jump = true;
    }

    break;

    case AT_TAUNT:

            with asset_get( "oPlayer" )
            {
                switch(url)
                {
                case 2249417003: //ralsei w/ gun
                with other
                //set_attack( AT_EXTRA_1 )
                break;

                case CH_MAYPUL: //maypul my beloved
                //set_attack( AT_TAUNT_2 );
                other.move_cooldown[AT_TAUNT] = 250;
                break;
                }
            }
    break;




    case 49:
    if get_player_color(player) > 0
        {set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, sprite_get("butterflysamson"));}
        else
        {set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, sprite_get("butterflysamsondef"));}

    if (window == 4 && window_timer == 1 && hitpause == false)
    {
        
        butterfly = create_hitbox( 49, 1, x + (spr_dir * 60), y - 90 );
        stage_x = get_stage_data( SD_SIDE_BLASTZONE );

        

    }

    if ((butterfly.x >= get_stage_data(SD_RIGHT_BLASTZONE_X)) ||(butterfly.x <= get_stage_data(SD_LEFT_BLASTZONE_X)))
    {
        instance_destroy(butterfly);
    window = 6;
    sound_play( sound_get( "gameandwatchend" ));

    }

    if window == 4
    {
            shake_camera( 8, 10 );
    }

    break;

//Samson makes honey when landing the move
    case AT_DSPECIAL_AIR:

 if window == 2 and window_timer = 1 and !hitpause
    {dipper = create_hitbox( AT_DSPECIAL_AIR, 4, x, y );}

     if window == 4 and window_timer = 2 and !hitpause and plungerboom = false
    {smallhoneyshock = create_hitbox( AT_DSPECIAL_AIR, 1, x + (80 * spr_dir), y );
    othersmallhoneyshock = create_hitbox( AT_DSPECIAL_AIR, 2, x + (10 * spr_dir), y );
    }
    
    // Switches the attack when Samson hits the ground. 
    {if window == 3 && !free
    {
        destroy_hitboxes();
        window = 4;
        window_timer = 0;
    }
    }
    if window == 1
    {hit_player_obj = noone;
    plungerboom = false;}

    if window == 4 and window_timer == 0 and !hitpause
    {plunger = create_hitbox( AT_DSPECIAL_AIR, 3, x, y );


 }


    break;

    case AT_DSPECIAL:
    if window == 1{
    	plungerboom = false;
    }
    if free 
    {
    set_attack( AT_DSPECIAL_AIR );
    hurtboxID.sprite_index = sprite_get("dspecial_air_hurt");
    can_fast_fall = false;
    }

    //Samson can explode the honey Jar with DSpecial
    if window == 2 and window_timer == 1 and !hitpause
    {plunger = create_hitbox( AT_DSPECIAL, 3, x, y ); }

         if window == 2 and window_timer = 2 and !hitpause and plungerboom == false
    {smallhoneyshock = create_hitbox( AT_DSPECIAL_AIR, 1, x + (80 * spr_dir), y );
    othersmallhoneyshock = create_hitbox( AT_DSPECIAL_AIR, 2, x + (10 * spr_dir), y );
    }
 break;

}




if attack == AT_DSPECIAL_AIR
{ if window == 3
	{
	with (asset_get("oPlayer")) 
		{
			if ("samson_dipper_grab" in self)
			{			
				if (samson_dipper_grab == true) 
				{
				if y + 10 >= (get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE) )
				{ y = (get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE)) + 999;
                samson_dipper_grab = false;
                 }
				else 
				{hitstop = 2;
				hitpause = true;
				x = other.dipper.x
				if place_meeting( other.x, other.y + char_height-24, asset_get("par_jumpthrough") )
                {
                    y = y;
                }
                else
                {y = other.dipper.y + char_height;}}

				}
			}
		}

}
else if window == 4 || window == 1
{ with (asset_get("oPlayer")) 
	{
		if ("samson_dipper_grab" in self)
		{
			{samson_dipper_grab = false;}
		}
	}
}
}

// MvC Samson
if secret_code_input == true

{
    if get_player_color( player ) == 18
    {


        if (attack == AT_FTILT and has_hit) or (attack == AT_DTILT and has_hit) or (attack == AT_UTILT and has_hit) or (attack == AT_DATTACK and has_hit) or (attack == AT_NAIR and has_hit) or (attack == AT_BAIR and has_hit) or (attack == AT_FAIR and has_hit) or (attack == AT_DAIR and has_hit) or (attack == AT_UAIR and has_hit)
        {
        can_special = true;
        can_strong = true;
        }

        if (attack == AT_FSTRONG and has_hit) or (attack == AT_DSTRONG and has_hit) or (attack == AT_USTRONG and has_hit)
        {
        can_special = true;
        }

        if attack == AT_UTILT {
        set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
        if has_hit
        {
        can_jump = true;
        }
        }
    }

}


if (attack == 49 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if (window >= 4 && grabbedid != noone){
	grabbedid.ungrab = 0;
        window_timer = 999; //DELETE THIS LINE TO LIMIT HOW LONG THE GRAB IS TO THE WINDOW LENGTH
        grabbedid.invincible = true; //DELETE THIS LINE TO MAKE THE GRABBED PLAYER HITTABLE
        //grabbedid.visible = false; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
        grabbedid.x = butterfly.x + spr_dir * 70; //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
        grabbedid.y = butterfly.y; //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
        grabbedid.wrap_time = 6000;
        grabbedid.state = PS_WRAPPED;
        if((butterfly.x >= get_stage_data(SD_RIGHT_BLASTZONE_X)- 100) ||(butterfly.x <= get_stage_data(SD_LEFT_BLASTZONE_X) + 100)){ //REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
create_deathbox(
grabbedid.x, // x
grabbedid.y, // y
100, // w
100, // h
grabbedid.player, // player
true, // free
1, // shape
1, // lifespan
2 // bg_type
);
grabbedid.state = PS_TUMBLE;
            grabbedid = noone;
        }
    }
};


