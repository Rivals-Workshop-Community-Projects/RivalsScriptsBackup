//update

	muno_event_type = 1;
	user_event(14);

var air = (state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP || state == PS_IDLE_AIR);
if(air || state == PS_ATTACK_AIR){
	jumpTimer++;
}
if((state == PS_IDLE_AIR || (air && vsp > 0)) && jump_down && floating == 0 || (state == PS_IDLE_AIR || (air && jumpTimer > jumpMax)) && (jump_down && down_down) && floating == 0){
	floating = 1;
	floatTimer = floatMax
	can_fast_fall = false;
}
if(floating){
	if(gravSet != -1){grav = gravSet;}
	if(vspSet != -1){vsp = vspSet;}
	if(hspSet != -1){hsp = hspSet * spr_dir;}
	if(!((jump_down || up_down) && (state == PS_ATTACK_AIR || air))){
		floating = -1;
	}
	if(floatTimer > 0){
		floatTimer--;
	}else{
		floating = -1;
	}
}
if(state == PS_IDLE || state == PS_CROUCH || state == PS_JUMPSQUAT || state == PS_WALK || state == PS_DASH){
	floating = 0;
	jumpTimer = 0;
};


if (floating) and state == PS_ATTACK_AIR
{floating = -1;}

nspecial_cool --;

if state == PS_FIRST_JUMP
{print(string(state_timer));}

//Float Canceling
if (state == PS_FIRST_JUMP) and (state_timer <= 1)
{
if down_down
{	
    floating = 1;
	floatTimer = floatMax;
    print("floating cancel");
	can_fast_fall = false;
}

} 

//U Strong stuff
if ustrongtimer == true
{
    hud_offset = round(lerp(hud_offset,260, 0.2));
    }



//Makes sure the game know that the Jar belongs to Samson
with (obj_article1)
        {
            if (player_id == other.id)
            {
            player_id.jar_is_out = true;
            }
        }


//Rainbow
if get_player_color(player) = 27 {
hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

color_rgb=make_color_rgb( 242, 7, 7 ); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 27, 3, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours

set_color_profile_slot( 27, 6, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));

set_color_profile_slot( 27, 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));

set_article_color_slot( 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv), 1);

init_shader();
}


with (asset_get("oPlayer")) {
	if (samson_honeyed && samson_honeyed_ID == other.id) {
		if state = PS_HITSTUN
		{
		owie_hurt_sprite = sprite_index;}
	}
	if (samson_honeyed && samson_honeyed_ID == other.id && !hitpause) {
		// decreases the timer by 1 each frame
		// replace -= with += if you don't want the status effect to wear off so it counts up repeatedly instead of counting down
		samson_honeyed_timer -= 1;
		honeyed_cooldown = 50;
		set_state( PS_WRAPPED );
		can_jump = false;
		can_attack = false;
		can_fast_fall = false;
		can_strong = false;
		can_special = false;
		can_shield = false;
		x = samson_honeyed_inital_x;
		y = samson_honeyed_inital_y;
        floating = -1;
		if (samson_honeyed_timer == 0) samson_honeyed = false;
	}
};

with (asset_get("oPlayer")) {
	if "samson_cooldown_ID" in self
{	if (!samson_honeyed and samson_cooldown_ID == other.id) {
honeyed_cooldown -= 1;
print(string(honeyed_cooldown));
	}}
};


if !free{
move_cooldown[AT_BAIR] = 0;
bair_cool = 0;
}




//Amber Hug
if (amber_startHug == true) //Amber will set this bool to true when this player accepts the hug
{
    with (amber_herObj) //Access Amber's player object and set the values
    {
        //Set the window values for Amber's hugging. DO NOT change Amber's sprites
        //in the attack_values
	    set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
	    set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
	    set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("hurtbox"));

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 25);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_diamond_collect"));
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 50);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 15);

        //Important. Puts Amber in startup hug state (2).
        //Editing this variable not recommended
        amberHugState = 2; 
    }
    //Important. Puts this character in startup hug state (2).
    //Editing this variable not recommended
    oPlayerHugAmberState = 2;
    
    //Set this bool back to false so that this doesn't loop
    amber_startHug = false;
}

//Kirby
if swallowed { //Kirby ability script starts here
swallowed = 0
//Define any assets kirby might need to grab from YOUR CHARACTER
var ability_spr = sprite_get("kirbysamson");
var ability_hurt = sprite_get("kirbysamson_hurt");
var ability_proj = sprite_get("kirbyjar");
var ability_proj_mask = sprite_get("kirbyjarhurt");
var ability_boom = hit_fx_create( sprite_get( "kirbyboom" ), 30 );
var ability_boom_sfx = sound_get( "sfx_jarexplosion" );
var ability_icon = sprite_get("abilityicon"); //Optional

with enemykirby { 
	
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);


set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);


set_num_hitboxes(AT_EXTRA_3, 2);

set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 29);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 48);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 70);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_weak"));
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, 0); 

set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 122);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -52);
set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 40);
set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, ability_boom_sfx);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE, ability_proj);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_MASK, ability_proj);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, .07);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_GROUND_FRICTION, 0.1);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_AIR_FRICTION, 0.11);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_EXTRA_3, 2, HG_EFFECT, 8);


newicon = ability_icon //Optional, replaces the kirby ability icon
} //Kirby ability script ends here
}

if enemykirby != undefined { //if kirby is in a match & swallowed
with oPlayer { //Run through all players
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) {
    move_cooldown[AT_EXTRA_3] = 90;
    
}
}
}

if floating and state == PS_IDLE_AIR {
        can_attack = false;
}

//update.gml
if(grabbedid != noone){
	grabbedid.ungrab++;
	if(grabbedid.ungrab == 2){
		grabbedid.invincible = false; //Feel free to remove this line if the grab does not make the opponent invincible.
		grabbedid.state = PS_TUMBLE;
		grabbedid.ungrab = 0;
		grabbedid = noone;
	}
}

//Thanks to GoldenEpsilon for the Peach Float Code!




with (asset_get("oPlayer"))
{
    if (state == PS_RESPAWN || state == PS_DEAD) {
        samson_honeyed = false;
		honeyed_cooldown = 0;
    }
}




