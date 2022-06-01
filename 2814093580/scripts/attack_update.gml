// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


switch(attack)
{

    case AT_USPECIAL:
        if (window == 4){
        if (down_pressed){
        set_state(PS_PRATFALL);
        }
        can_wall_jump = true
    }
    break;

    case AT_BAIR:
    move_cooldown[AT_BAIR] = 40;
    bair_cool = 40;
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
        move_cooldown[AT_NSPECIAL] = 250
        nspecial_cool = 250;}
        
    }
    break;

    case AT_NSPECIAL_2:
    if window == 2
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

        //Samson does his finishing attack
        if attack_pressed
        {destroy_hitboxes();
        window = 5;
        window_timer = 0;
        hsp = 0;
        create_hitbox(AT_DATTACK, 3, x, y);}
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
     if window == 8 
    {
        can_jump = true;
        can_wall_jump = true;
    }
    if window == 8 and window_timer >= 10 and free
    {set_state(PS_PRATFALL);}

can_fast_fall = false;
    break;

    case AT_TAUNT:
    maypul_check();
    ralsei_check();
    if blushing == 1
    {set_attack( AT_TAUNT_2 );
    move_cooldown[AT_TAUNT] = 250;};
    else if fatblunt == 1 or get_player_color( player ) == 15
    {set_attack( AT_EXTRA_1 )};
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





//Everytime Samson taunts, check if he's fighting Maypul. If so, do his alternate taunt
//If not, check if he's fighting Ralsei, if so, do his third taunt, if not, do his defeault. 
#define maypul_check
{if get_char_info( 1, INFO_STR_NAME) == 'Maypul'
    {blushing = 1;}
    else if get_char_info( 2, INFO_STR_NAME) == 'Maypul'
        {blushing = 1;}
        else if get_char_info( 3, INFO_STR_NAME) == 'Maypul'
            {blushing = 1;}
            else if get_char_info( 4, INFO_STR_NAME) == 'Maypul'
                    {blushing = 1;}
                    else {blushing = 0;}
};

#define ralsei_check
{if get_char_info( 1, INFO_STR_NAME) == 'Ralsei'
    {fatblunt = 1;}
    else if get_char_info( 2, INFO_STR_NAME) == 'Ralsei'
        {fatblunt = 1;}
        else if get_char_info( 3, INFO_STR_NAME) == 'Ralsei'
            {fatblunt = 1;}
            else if get_char_info( 4, INFO_STR_NAME) == 'Ralsei'
                    {fatblunt = 1;}
                    else {fatblunt = 0;}
};