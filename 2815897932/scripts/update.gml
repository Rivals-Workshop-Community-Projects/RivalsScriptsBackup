//update

if (get_color_profile_slot_r(0, 0) == 247)
{
    set_color_profile_slot( 0, 0, 248, 238, 150 );
}

if state == PS_DASH_STOP{
  ground_friction = .05;
}


if state != PS_DASH_STOP{
  ground_friction = .625;
}

if capped_accel == true{
  air_accel = .167;
  air_max_speed = 3.75;
}

if boost_accel == true{
  air_accel = .5;
  air_max_speed = 6.7;
}

if capped_accel == false && boost_accel == false{
  air_accel = .33;
  air_max_speed = 6;
}

if state != PS_ATTACK_AIR{
  capped_accel = false
  boost_accel = false
}

if state == PS_LANDING_LAG{
    sound_stop(sound_get("sfx_nair_speen"))
}

if state == PS_PARRY && attack_down && (get_training_cpu_action() != CPU_FIGHT && !("is_ai" in self)){
    practice_mode = true
}

if practice_mode == true{
    magic = 6
    practice_mode = false
    practice_notice = false
}

with (asset_get("oPlayer")){
    if (state == PS_RESPAWN){
        stagger = false;
    }
}

with (asset_get("oPlayer")) {
	if (stagger && stagger_ID == other.id && !hitpause) {
		// decreases the timer by 1 each frame
		// replace -= with += if you don't want the status effect to wear off so it counts up repeatedly instead of counting down
		stagger_TIMER--;

		if (stagger_TIMER % 1 == 0 && !free) state = PS_PRATLAND;
		if (stagger_TIMER % 1 == 0) hsp = stagger_TIMER/20*(stagger_ID.facing_dir)
		if (stagger_TIMER >= 48) spr_dir = -1*(stagger_ID.spr_dir)
		if (stagger_TIMER % 1 == 0 && stagger_TIMER > prat_land_time/2 && !free) state_timer = 1;
		if (stagger_TIMER % 1 == 0) has_airdodge = false
		// delete this line if you don't want the status effect to wear off when the timer reaches zero
		if (stagger_TIMER == 0){
      stagger = false;
	}
  }
}

//kirbo
if (swallowed == 1) {
	swallowed = 0;
	
	var ability_spr = sprite_get("kirbo");
	var ability_hurt = sprite_get("kirbo_hurt");
	var gift_spr = sprite_get("flowerpot_gift");
	var gift_coll_spr = sprite_get("flowerpot_gift_collision");
	var myicon = sprite_get("kirbyicon")
	
	with enemykirby{
		newicon = myicon
    set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
    set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
    set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
    set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
    set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 24);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 8);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 6);

    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 12);
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 6);
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 8);
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_blow_weak1"));
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 0);

    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 12);
    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 4);
    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 14);

    set_num_hitboxes(AT_EXTRA_3, 1);

    set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 1);
    set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 60);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 0);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -60);
    set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 60);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 5);
    set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 6);
    set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 58);
    set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 3.75);
    set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .72);
    set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 8);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 1);
    set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 133);
    set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, 12);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, gift_spr);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_COLLISION_SPRITE, gift_coll_spr);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 12);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, 0);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, .3);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_FRICTION, 17);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, .375);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);        
	}
}

//dialogue buddy

if(variable_instance_exists(id,"diag"))
{
//Change their name whenever
    diag_name = "Paprika"
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "Hahaha!",
    "Heeheehoohoo!",
    "Brbrbrbrbr?",
    "Mwah!",]

//  Specific Character Interactions

//  Regular dialogue
    if(otherUrl == 2804035497 && diag != "") //Change the url into a specific character's
    {
        diag = "Hmhaha! Ehehehoo.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    
//  NRS/3-Part dialogue
    if(otherUrl == "pingas") //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "",
                "",
                ""]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }
}

//intro anim
var intro_time = get_gameplay_time();
if intro_time == (5) sound_play(sound_get("intro_nyoom"))