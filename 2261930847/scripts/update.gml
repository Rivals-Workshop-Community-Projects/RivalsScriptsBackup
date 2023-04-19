user_event(14);

if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 15) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

if(introTimer == 9) {
 sound_play( sound_get( "sfx_intro" ) );
}

//TAUNT
if (state != PS_ATTACK_GROUND)
{
   sound_stop(sound_get("sfx_no_anime"))
}

//CHARACTER HEIGHT
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
    if (state == PS_PRATFALL){
	    char_height = 56;
    }
    else{
        char_height = 46;
    }
}
else if (attack == AT_USPECIAL || attack == AT_USPECIAL_2) && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	char_height = 78;
}
else if (attack == AT_USTRONG){
    if (window == 3 && window_timer > 12 && char_height < 94){
        char_height += 12;
    }
    else if (window == 5 && window_timer > 3 && char_height > 46){
        char_height -= 2;
    }
    else if (window == 6 && char_height > 46){
        char_height -= 4;
        if (char_height < 46){
            char_height = 46;
        }
    }
}
if(attack == AT_USPECIAL_2 && state == PS_ATTACK_AIR){
    move_cooldown[AT_USPECIAL_2] = 999;
} else if !free || state == PS_HITSTUN || state == PS_WALL_JUMP {
	move_cooldown[AT_USPECIAL_2] = 0;
}

if(!free || state == PS_WALL_JUMP || state == PS_HITSTUN){
    move_cooldown[AT_USPECIAL] = 0;
}

if (state == PS_DASH || state == PS_DASH_TURN || state == PS_DASH_STOP){
    hurtboxID.sprite_index = sprite_get("dash_hurt");
} else if(hurtboxID.sprite_index == sprite_get("dash_hurt")) {
    hurtboxID.sprite_index = hurtbox_spr;
}

if (state == PS_PRATFALL){
    hurtboxID.sprite_index = sprite_get("pratfall_hurt");
} else if(hurtboxID.sprite_index == sprite_get("pratfall_hurt")) {
    hurtboxID.sprite_index = hurtbox_spr;
}


//METER CODE START HERE

//small meter handle
if moist_rn > moist_max {
    moist_rn = moist_max;
}
if moist_rn < 0 {
    moist_rn = 0;
}
//meter levels
if moist_rn >= 0 && moist_rn < 100 {
    moist_level = 1;
} else if moist_rn >= 100 && moist_rn < 200 {
    moist_level = 2;
} else {
    moist_level = 3;
}

//meter mark sound effects
if moist_prev != moist_level {
    if moist_level < moist_prev {
        sound_play(sound_get("sfx_meter_down"));
    } else if moist_level > moist_prev {
        sound_play(sound_get("sfx_meter_up"));
    }
    moist_prev = moist_level;
}

//meter animation
moist_anim += 0.075;
if moist_anim > 3 {
    moist_anim = 0;
}
//dehydration (Do not dehydrate if using dspecial on mud)
if (moist_rn != 0 && (!on_mud || attack != AT_DSPECIAL || state != PS_ATTACK_GROUND)){
    moist_rn -= 0.08;
}

on_mud = false;
with (asset_get("obj_article1"))
  if (player_id.url == other.url && place_meeting(x, y - 12, other.id) && !other.free)
    other.on_mud = true;

if state == PS_RESPAWN && state_timer == 1 {
    killarticles = false;
}

if moist_level == 1 {
	wave_friction = .04;
	ground_friction = 0.5;
	wave_land_adj = 1.15;
}

if (moist_rn > 1) && (state == PS_DASH_START && prev_state == PS_CROUCH){
	nyoom = true;
} else if (!(state == PS_DASH || state == PS_DASH_START || state == PS_DASH_TURN || state == PS_DASH_STOP) || (moist_rn < 1))
 {	nyoom = false;}

if (nyoom == true){
	dash_speed = 7;
	initial_dash_speed = 8;
	moist_rn -= 0.35;
} else{
	dash_speed = 5.5;
	initial_dash_speed = 7;
}

if (moist_level = 2 || moist_level = 3){
	dash_speed = 7;
	initial_dash_speed = 8;
} else{
	dash_speed = 5.5;
	initial_dash_speed = 7;
}

if (moist_level = 3 && attack == AT_USTRONG) {
		set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 1);
		set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 1);
		set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 1);
		set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 1);
		set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 1);
		set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT, 1);
		set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT, 1);

    }

//different mud levels for training toggles
switch(mud_training_level) {
    case 0:
    break;
    case 1:
    moist_rn = 101;
    break;
    case 2:
    moist_rn = 201;
    break;    
}

//METER CODE END ^


//COMPATIBILITY
/*
with (oPlayer) 
    if (url == 2396061657) && (attack == AT_TAUNT){
	if (window == 1 && window_timer == 44 && down_down && !up_down){
	set_player_stocks(player, 0);
}}
*/

var random = random_func(0, 3, true);
if (random == 0) { 
tcoart = sprite_get("tcoart1");
}
else if (random == 1){
tcoart = sprite_get("tcoart2");
}
else {
tcoart = sprite_get("tcoart3");
}
if (trummelcodec_id != noone) {
if (trummelcodec_id.codecindex == 1 || trummelcodec_id.codecindex == 19){
	if (trummelcodec_id.codectimer2 <= 1 && trummelcodec_id.currentcodecline == 1){
		//sfx
		sound_play(sound_get("sfx_codec"), true, false);
	}
}
if ((trummelcodec_id.codecindex != 1 && trummelcodec_id.codecindex != 19) || !trummelcodec_id.codec){
	//stop
	sound_stop(sound_get("sfx_codec"));
}
}

if (trummelcodec_id != noone) {
if (trummelcodec_id.codecindex == 10){
	if (trummelcodec_id.codectimer2 <= 1 && trummelcodec_id.currentcodecline == 1){
		//sfx
		sound_play(sound_get("sfx_codecLOUD"), true, false);
	}
}
if ((trummelcodec_id.codecindex != 10) || !trummelcodec_id.codec){
	//stop
	sound_stop(sound_get("sfx_codecLOUD"));
}
}

if (trummelcodec_id != noone) {
if (trummelcodec_id.codecindex == 18){
	if (trummelcodec_id.codectimer2 <= 1 && trummelcodec_id.currentcodecline == 1){
		//sfx
		sound_play(sound_get("sfx_handy"), true, false);
	}
}
if ((trummelcodec_id.codecindex != 18) || !trummelcodec_id.codec){
	//stop
	sound_stop(sound_get("sfx_handy"));
}
}

if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 20;
    trummelcodecsprite1 = sprite_get("quagsire");
    trummelcodecsprite2 = sprite_get("handy");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 1; //Alto
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Woah! It's Quagsire,";
    trummelcodecline[page,2] = "the Water Fish Pokemon!";
    trummelcodecline[page,3] = "When did he get";
    trummelcodecline[page,4] = "into Rivals?";
    page++; 

    //Page 1
    trummelcodecspeaker[page] =3; //Quagsire
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Houuh!!";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
      //Page 2
    trummelcodecspeaker[page] =2; //Trummel
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "rude";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
      //Page 4
    trummelcodecspeaker[page] =1; //Alto
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Oh, don't be like that.";
    trummelcodecline[page,2] = "He's a Pokemon, he can't";
    trummelcodecline[page,3] = "talk normally. Anyways,";
    trummelcodecline[page,4] = "here's how he plays.";
    page++; 
    
      //Page 5
    trummelcodecspeaker[page] =1; //Alto
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Quagsire's playstyle";
    trummelcodecline[page,2] = "revolves around his mud";
    trummelcodecline[page,3] = "puddle. Using it, he can";
    trummelcodecline[page,4] = "up his moisture...";
    page++; 
    
        //Page 6
    trummelcodecspeaker[page] =1; //Alto
    trummelcodecexpression[page] = 0;
    
    trummelcodecline[page,1] = "by using DownB on his";
    trummelcodecline[page,2] = "puddle, his meter goes up";
    trummelcodecline[page,3] = "The meter has 3 levels.";
    trummelcodecline[page,4] = "Level 1 is normal.";
    page++; 
    
        //Page 7
    trummelcodecspeaker[page] =1; //Alto
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "When he reaches Level 2,";
    trummelcodecline[page,2] = "things get interesting.";
    trummelcodecline[page,3] = "His movement gets a huge";
    trummelcodecline[page,4] = "buff, like, HUGE.";
    page++; 
    
        //Page 8
    trummelcodecspeaker[page] = 2; //Trummel
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "ruh roh";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
 
        //Page 9
    trummelcodecspeaker[page] =1; //Alto
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "We're not even to Level 3";
    trummelcodecline[page,2] = "At Level 3, he's faster,";
    trummelcodecline[page,3] = "has better combo game,";
    trummelcodecline[page,4] = "and can kill easier.";
    page++; 
 
    //Page 10
    trummelcodecspeaker[page] =1; //Alto
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "All of this on top of the";
    trummelcodecline[page,2] = "Level 2 buffs...";
    trummelcodecline[page,3] = "...";
    trummelcodecline[page,4] = "Quagsire busted";
    page++; 
 
 
        //Page 11
    trummelcodecspeaker[page] =3; //Quagsire
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "HOUUH!";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
 
        //Page 11
    trummelcodecspeaker[page] =1; //Alto
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Suddenly that's a lot";
    trummelcodecline[page,2] = "scarier. But now we";
    trummelcodecline[page,3] = "can talk about";
    trummelcodecline[page,4] = "his weaknesses.";
    page++; 
 
    //Page 12
    trummelcodecspeaker[page] =1; //Alto
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Quagsire's meter only";
    trummelcodecline[page,2] = "increases after using";
    trummelcodecline[page,3] = "Down B on puddle, and";
    trummelcodecline[page,4] = "drains with time.";
    page++; 

    //Page 13
    trummelcodecspeaker[page] =1; //Alto
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "So we've gotta keep him";
    trummelcodecline[page,2] = "from setting up puddle";
    trummelcodecline[page,3] = "and using DownB on it.";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 14
    trummelcodecspeaker[page] =1; //Alto
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "He might try to camp";
    trummelcodecline[page,2] = "and get moist so we";
    trummelcodecline[page,3] = "can't let up on this"
    trummelcodecline[page,4] = "slippery guy.";
    page++; 
    
        //Page 15
    trummelcodecspeaker[page] =2; //Trummel
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "luckily his";
    trummelcodecline[page,2] = "disadvantage is trash";
    trummelcodecline[page,3] = "and his recovery is";
    trummelcodecline[page,4] = "mediocre";
    page++; 
 
     //Page 16
    trummelcodecspeaker[page] =1; //Alto
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Huh, sounds doable.";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
 
     //Page 17
    trummelcodecspeaker[page] =2; //Trummel
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "lets get 'im";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
         //Page 18
    trummelcodecspeaker[page] =4; //HANDY!
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "*Wooper noises*";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "Good luck dad!";
    trummelcodecline[page,4] = "";
    page++; 
    
         //Page 19
    trummelcodecspeaker[page] =3; //Quagsire
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Houuh!";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
 
      //Page 20
    trummelcodecspeaker[page] =2; //Trummel
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "woag";
    trummelcodecline[page,2] = "ignore the adorable";
    trummelcodecline[page,3] = "father son bonding";
    trummelcodecline[page,4] = "plan stays the same";
    page++; 
}
	 //RUNES 
	  
	  
	  if has_rune("A") {
        moist_rn += 0.07;
      }

if has_rune("B") {
reset_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_KNOCKBACK);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_KNOCKBACK, 17);
} else {
reset_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_KNOCKBACK);
}





if has_rune("D"){
	reset_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH);
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
	reset_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH);
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 8);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING);
	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8);
} else {
	reset_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH);
	reset_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH);
}

if has_rune("E") {
reset_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 12);
} else {
reset_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK);
}

//Kirby

if swallowed { //Kirby ability script starts here
swallowed = 0
//Define any assets kirby might need to grab from YOUR CHARACTER
var ability_spr = sprite_get("kirby");
var ability_hurt = sprite_get("kirby_hurt")
//var ability_icon = sprite_get("") //Optional
var ability_bomb = sprite_get("nspecial_proj")
var ability_sound = sound_get("sfx_nspecial")
var ability_ground = sound_get("sfx_nspecial_grnd")
with enemykirby { //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_sound);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_EXTRA_3, 1);

set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 250);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 103);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, .8);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 65);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, -16);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 4.25);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.55);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .45);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -4);
//set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_bomb);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, ability_bomb);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, 1);
newicon = ability_icon //Optional, replaces the kirby ability icon
} 
}

if enemykirby != undefined { //if kirby is in a match & swallowed
    with pHitBox { //Run through all players Hitbox update stuff
    if hit_priority == 103 {
if (attack == AT_EXTRA_3 && hbox_num == 1 && was_parried) {
    destroyed = true;
}

if (attack == AT_EXTRA_3 && hbox_num == 1 && player == orig_player)
{
    proj_angle = 0;
    if (place_meeting(x,y+1,asset_get("par_block")))
    {
        free = false;
    }
    if (!free)
    {
        vsp = 0;
        hsp = 0;
        sound_play(ability_ground);
        destroyed = true;
    }
	}
  }
    } 
with oPlayer { //Run through all players
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) {

	if(attack == AT_EXTRA_3 && special_down){
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 7);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -8);
	} else {
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -4);
	}
	if  window == 3{
		move_cooldown[AT_EXTRA_3] = 25;
		move_cooldown[AT_NSPECIAL] = 25;
		}
	}
}
}