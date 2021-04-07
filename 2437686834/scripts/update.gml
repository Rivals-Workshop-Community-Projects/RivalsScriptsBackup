//update
if swallowed { //Kirby ability script starts here
swallowed = 0
//Define any assets kirby might need to grab from YOUR CHARACTER
var ability_spr = sprite_get("kirbytoss");
var ability_hurt = sprite_get("kirbytoss_hurt")
var ability_icon = sprite_get("kirby_icon") 
var cherry_spr = sprite_get("Cherry")
var toss_sound = sound_get("smallswing2")
with enemykirby { //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1);

//set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 47*3);
//set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 47);
//set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 1);
//set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 4);
//set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 4);
//set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 48);




//startup
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);


//charging window. The length of this window = the maximum charge time.
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 8); 
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, toss_sound);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

//charge release window. This window should be at least 2 frames long.
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 25);
set_window_value( AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 6 );
set_window_value( AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1 );
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.6);








set_num_hitboxes(AT_EXTRA_3, 1);
//Cherry
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 16);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 16);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, cherry_spr);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, .2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 5);
newicon = ability_icon //Optional, replaces the kirby ability icon
} //Kirby ability script ends here
}




//Dash Sound Effect
if (state == PS_DASH_START && state_timer == 1){
		sound_play(sound_get("dashstart"))
	}

//Brake Sound Effect
if (state == PS_DASH_TURN && state_timer == 1){
		sound_play(sound_get("screech"))
	}

    
    if state = PS_SPAWN and state_timer = 1
    if (get_player_color(player) == 8)
    {
        sound_play( sound_get( "jerma_enter" ) )
    }
    else
    {
    sound_play( sound_get( "enter" ) )
    }

if state == PS_HITSTUN
{
//sandstarred = true
}

if state_cat != SC_HITSTUN
sandstarred = false;



if (attack == AT_DSPECIAL && window == 1 && !free) {
vsp -= 10
}



if attack == AT_DTILT and window = 3
{
sound_stop( sound_get( "revup" ) )
}

if attack == AT_BAIR and has_hit and window = 1 and window_timer = 1
{
sound_play( sound_get( "itemslam" ) )
}

if attack == AT_NSPECIAL and window = 2 and ! (state == PS_PARRY)
{
				if window_timer = 1
				sound_play( sound_get( "charge1" ) )
				
				if window_timer = 21
				sound_play( sound_get( "charge2" ) );
				
				if window_timer = 41
				sound_play( sound_get( "charge3" ) );
				
				if window_timer = 62
				sound_play( sound_get( "s_wa" ) );
				
				if window_timer = 82
				sound_play( sound_get( "chargebell" ) );
				
				if window_timer = 103
				sound_play( sound_get( "chargeminipac" ) );
				
				if window_timer = 123
				sound_play( sound_get( "chargedig" ) );
				
				if window_timer = 144
				sound_play( sound_get( "charge2" ) );
				
				if window_timer = 164
				sound_play( sound_get( "chargebell2" ) );
}









//Retro Taunt



if(attack == AT_TAUNT && window == 1){
	
	

closeplayer = instance_nearest(x, y, asset_get("oPlayer"))
with (asset_get("oPlayer"))
{
if (id != other.id)
{
if (variable_instance_exists(id, "Namco_Taunt"))
{
other.Namco_Taunt = Namco_Taunt;
other.iscast = false
}
else
{

if (url != ""){
					if (real(url) < 20){ //cast
						other.Namco_Taunt = real(url) - 1;
						other.iscast = true
					}else if (real(url) == 1865940669){ //Sandbert
						other.Namco_Taunt = 15;
					}else if (real(url) == 1866016173){ //Guadua
						other.Namco_Taunt = 16;
					}
}


            }
}
}
}

if(attack == AT_TAUNT && window_timer == 20){
	
	

closeplayer = instance_nearest(x, y, oPlayer)
with (asset_get("oPlayer"))
{
if (variable_instance_exists(id, "Namco_Taunt_Sound"))
other.Namco_Taunt_Sound = Namco_Taunt_Sound;
}












            }







	