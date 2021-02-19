//play sound
if (window == 1 && window_timer == 1)
{
	if(!shield_down && GAUGE_NAME_CURRENT >=55)
	{
	TIMED = 1;
        if (attack_pressed 
        || special_pressed 
        || left_strong_pressed
        || right_strong_pressed
        || up_strong_pressed
        || down_strong_pressed
        || taunt_pressed) && (GAUGE_NAME_CURRENT >=55) 
        {
	            switch (MUS_NOTE)
                {
            	    case 0: sound_play( sound_get("C")); break;
            	    case 1: sound_play( sound_get("D")); break;
            	    case 2: sound_play( sound_get("E")); break;
            	    case 3: sound_play( sound_get("F")); break;
            	    case 4: sound_play( sound_get("G")); break;
                    case 5: sound_play( sound_get("3")); break;
                	case 6: sound_play( sound_get("2")); break;
                	case 7: sound_play( sound_get("1")); break;
                   
                }   
                if  (attack != AT_DSPECIAL)
                {
                MUS_NOTE +=1
                }
                if (attack = AT_DSPECIAL && MUS_NOTE == 8)
                {
                MUS_NOTE +=1;
                }
                
                EXTRA_TIME = 0;
                GAUGE_NAME_CURRENT = 0;
            }
        }
	}

if (get_player_color( player ) == 13) {
  outline_color = [ 6, 1, 35 ];
  init_shader();
}
if (get_player_color( player ) == 12)
{
    set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, large_clock_hfx);
    large_clock_hfx = hit_fx_create(sprite_get("hfx_clock_specialt"), 30);
}
else
{
    set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, large_clock_hfx);
    large_clock_hfx = hit_fx_create(sprite_get("hfx_clock_large"), 30);
}
if used_aird = true && (state != PS_AIR_DODGE) 
{
 
    if  state = PS_WAVELAND || state == PS_DEAD || state == PS_RESPAWN
    {
        used_aird = false;
        max_djumps = 1;
    }
    else if state != PS_WAVELAND
        {
            used_aird = false;
            if state != PS_HITSTUN
            {
            state = PS_PRATFALL
            }
            max_djumps = 1;
        }
}
if(grabbedid != noone){
	grabbedid.ungrab++;
	if(grabbedid.ungrab == 2){
		grabbedid.visible = true; //Feel free to remove this line if the grab does not make the opponent invisible.
		grabbedid.invincible = false; //Feel free to remove this line if the grab does not make the opponent invincible.
		grabbedid.state = PS_TUMBLE;
		grabbedid.ungrab = 0;
		grabbedid = noone;
	}
}



if MUS_NOTE = 8 
{
  if get_player_color( player ) != 12
  {
  outline_color = [ 72, 14, 111 ];
  init_shader();
  }
  else
  {
    outline_color = [ 72, 76, 114 ];
    init_shader();      
  }
}
else
{
if get_player_color( player ) != 13{
   outline_color = [ 0, 0, 0 ];   
}
}

//trummel
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 10;
    trummelcodecsprite1 = sprite_get("lizt");
    trummelcodecsprite2 = sprite_get("lizt");

    //Page 0
    trummelcodecspeaker[0] = 1; //Alto
    trummelcodecexpression[0] = 2; //Alto's "thoughtful" face

    trummelcodecline[0,1] = "A fighter from another";
    trummelcodecline[0,2] = "dimension huh? She";
    trummelcodecline[0,3] = "seems to like anything";
    trummelcodecline[0,4] = "music related.";


    //Page 1
    trummelcodecspeaker[1] = 3; //Liz
    trummelcodecexpression[1] = 0; 

    trummelcodecline[1,1] = "¿Una nube que habla?";
    trummelcodecline[1,2] = "¿Y un caracol gigante?";
    trummelcodecline[1,3] = "Esta dimensión si";
    trummelcodecline[1,4] = "que es rara!";

    //Page 2
    trummelcodecspeaker[2] = 1; //Alto
    trummelcodecexpression[2] = 0; 

    trummelcodecline[2,1] = "Uhhhhh I...";
    trummelcodecline[2,2] = "didn't understand a single";
    trummelcodecline[2,3] = "word...";
    trummelcodecline[2,4] = "";
    
    trummelcodecspeaker[3] = 3; //Liz
    trummelcodecexpression[3] = 1; 

    trummelcodecline[3,1] = "Ahora que lo pienso,";
    trummelcodecline[3,2] = "¡Se miran muy adorables!";
    trummelcodecline[3,3] = "";
    trummelcodecline[3,4] = "";
    
    trummelcodecspeaker[4] = 3; //Liz
    trummelcodecexpression[4] = 2; 

    trummelcodecline[4,1] = "Me da lastima tener que";
    trummelcodecline[4,2] = "hacerles daño...";
    trummelcodecline[4,3] = "";
    trummelcodecline[4,4] = "";
    
    trummelcodecspeaker[5] = 1; //Alto
    trummelcodecexpression[5] = 2; 

    trummelcodecline[5,1] = "Anyways, the way";
    trummelcodecline[5,2] = "she fights is...";
    trummelcodecline[5,3] = "weird.";
    trummelcodecline[5,4] = "";
    
    trummelcodecspeaker[6] = 2;
    trummelcodecexpression[6] = 0; 

    trummelcodecline[6,1] = "why do you say that";
    trummelcodecline[6,2] = "";
    trummelcodecline[6,3] = "";
    trummelcodecline[6,4] = "";

    trummelcodecspeaker[7] = 1; //Alto
    trummelcodecexpression[7] = 0;

    trummelcodecline[7,1] = "She follows a certain";
    trummelcodecline[7,2] = "rhythm when attacking...";
    trummelcodecline[7,3] = "Uh, listen...";
    trummelcodecline[7,4] = "";
    
    trummelcodecspeaker[8] = 1; //Alto
    trummelcodecexpression[8] = 0; 

    trummelcodecline[8,1] = "Just don't let her land";
    trummelcodecline[8,2] = "8 timed attacks,";
    trummelcodecline[8,3] = "okay?";
    trummelcodecline[8,4] = "";
    
    trummelcodecspeaker[9] = 2;
    trummelcodecexpression[9] = 5;

    trummelcodecline[9,1] = "what does that do";
    trummelcodecline[9,2] = "";
    trummelcodecline[9,3] = "";
    trummelcodecline[9,4] = "";
    
    trummelcodecspeaker[10] = 1; //Alto
    trummelcodecexpression[10] = 1;

    trummelcodecline[10,1] = "You don't want to know.";
    trummelcodecline[10,2] = "";
    trummelcodecline[10,3] = "";
    trummelcodecline[10,4] = "";
}


//entrance
if (introTimer2 < 4) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

if (introTimer < 15) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}


if (introTimer == 0 && introTimer2 == 0)
{
    sound_play(asset_get ("sfx_abyss_portal_intro"));
}

if (introTimer == 8 && introTimer2 == 0)
{
    sound_play(asset_get ("sfx_swipe_heavy1"));
}

if (introTimer == 13 && introTimer2 == 0)
{
    sound_play(asset_get ("sfx_abyss_despawn"));
}


switch (state)
{
 case PS_LAND:
 move_cooldown[AT_USPECIAL] = 0;
  TIMED = 0;
   break;
 case PS_WALL_JUMP:
 move_cooldown[AT_USPECIAL] = 0;
  TIMED = 0;
   break;
 case PS_WAVELAND:
 move_cooldown[AT_USPECIAL] = 0;
  TIMED = 0;
   break;
 case PS_LANDING_LAG: 
 move_cooldown[AT_USPECIAL] = 0;
  char_height = 52;
  TIMED = 0;
   break;
 case PS_ATTACK_GROUND:
 move_cooldown[AT_USPECIAL] = 0;
   break;
 case PS_AIR_DODGE:
   break;
}



if BZ >= 0{
    BZ -= 1
}


if BZ <= 0 && MUS_NOTE != 8 
{

BZ = 0
if get_player_color( player ) != 13 {
outline_color = [ 0, 0, 0 ];
}
}


//multihit protection
if multihitpro < 0
{
multihitpro = 0
}

if multihitpro > 0
{
multihitpro -= 1
}



//MUS_NOTE should NOT be higher than 8
if MUS_NOTE > 8
{
    MUS_NOTE=8;
    sound_play(sound_get("1"))
}
if HITD = 1
{

GAUGE_NAME_CURRENT += 1;
trigger = 1;
   if GAUGE_NAME_CURRENT > 82 
   {
      GAUGE_NAME_CURRENT = 0;
      HITD = 0;
      
   }

}

if trigger = 1
{
    EXTRA_TIME += 1; 
   if EXTRA_TIME > 120
   {
    EXTRA_TIME = 0;
    trigger = 0;

   }
}



if GAUGE_NAME_CURRENT >55{



hue+=1;
if (hue>255) {hue-=255;}

color_rgb=make_color_rgb(60, 188, 252); 
hue2=(color_get_hue(color_rgb)+hue) mod 255;
color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
set_color_profile_slot(8, 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
init_shader();


hue+=0.10;
if (hue>255) {hue-=255;}

color_rgb=make_color_rgb(164, 228, 252); 
hue2=(color_get_hue(color_rgb)+hue) mod 255;
color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
set_color_profile_slot(8, 2, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
init_shader();


if (hue>255) {hue-=255;}

color_rgb=make_color_rgb(18, 90, 161); 
hue2=(color_get_hue(color_rgb)+hue) mod 255;
color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
set_color_profile_slot(8, 6, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
init_shader();


}



//god of destruction support 


if swallowed { //Kirby ability script starts here
swallowed = 0

var ability_spr = sprite_get("poyothrow");
var ability_hurt = sprite_get("poyothrow_hurt");
var proj_spr = sprite_get("nspecial_proj");
var ability = sprite_get("poyoabisprite");
var effect_spr = sprite_get("hfx_clock_large")
with enemykirby {
newicon = ability;
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_AIR_SPRITE, ability_hurt);


set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 17);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_throw"));
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 14);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 6);


set_num_hitboxes(AT_EXTRA_3, 1);

set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 50);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -26);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_ell_fist_explode"));
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, proj_spr);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, proj_spr);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 9);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0.6);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_FRICTION, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, 0.20);
}
}


///music player (i wrote this before starting coding this, this is going to be hell)

if currentsong = sprite_get("roatheme") 

  {
      
  }
//if by any chance the player manages to have permanent extra knockack after using an octave, this code should prevent that from happening
if MUS_NOTE != 8 && GAUGE_NAME_CURRENT >=55
{
    	///FAIR
			reset_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING);
			reset_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_FAIR, 1, HG_ANGLE);
            reset_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
            reset_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT);
            
            reset_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_FAIR, 2, HG_ANGLE);
            reset_hitbox_value(AT_FAIR, 2, HG_DAMAGE);
            reset_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT);
    ///NAIR
    		reset_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK);
		  	reset_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING);
		    reset_hitbox_value(AT_NAIR, 1, HG_ANGLE);
            reset_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_NAIR, 1, HG_DAMAGE);
            reset_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT);
    //UAIR
            reset_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_UAIR, 1, HG_DAMAGE);
            reset_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT);
    
            reset_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_UAIR, 2, HG_DAMAGE);
            reset_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT);
            
            reset_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_UAIR, 3, HG_DAMAGE);
            reset_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT);
            
            reset_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_UAIR, 4, HG_DAMAGE);
            reset_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT);
        
     ///BAIR
     		reset_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING);
			reset_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE);
			reset_hitbox_value(AT_BAIR, 1, HG_ANGLE);
			reset_hitbox_value(AT_BAIR, 1, HG_DAMAGE);
			reset_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT);
            
            reset_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_BAIR, 2, HG_DAMAGE);
            reset_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT);
      ///DAIR
      		reset_hitbox_value(AT_DAIR, 2, HG_DAMAGE);
			reset_hitbox_value(AT_DAIR, 3, HG_DAMAGE);
			reset_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE);
		    reset_hitbox_value(AT_DAIR, 4, HG_DAMAGE);
			reset_hitbox_value(AT_DAIR, 1, HG_DAMAGE);
			reset_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT);
			reset_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT);
			reset_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT);
			reset_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT);
			
	  ///NSPECIAL 
	        reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK)
	        reset_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE);
}
if fast_fallc > 0 
{
fast_fallc -= 1;
}
if fast_fallc < 0
{
fast_fallc = 0;
}

if state == (PS_PRATFALL) && fast_fallc != 0
{
 do_a_fast_fall = true;
}