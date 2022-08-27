//update

if (get_color_profile_slot_r(0, 0) == 160)
{
		set_color_profile_slot( 0, 0, 161, 76, 43 );
}

if state == PS_PARRY && attack_down && (get_training_cpu_action() != CPU_FIGHT && !("is_ai" in self)){
    practice_mode = true
}

if practice_mode == true{
    magic = 3
    practice_mode = false
    practice_notice = false
}

if magic <= 0{
    magic = 0
}

if state != PS_ATTACK_GROUND{
    heldtaunt = false
}

if state != PS_ATTACK_AIR{
    air_accel = .5;
    air_max_speed = 5;
}

if state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR{
    super_armor = false
    afterimage = false
    overlay = false
}

if fspecial_air_used == true{
    move_cooldown[AT_FSPECIAL] = 4
}

if (!free || state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN){
    fspecial_air_used = false
}

if afterimage == true{
    alpha -= 0.04
}

if alpha <= 0{
    alpha = 0
}

if afterimage == false{
    alpha = 0.8
}

afterimage_color = make_color_rgb(get_color_profile_slot_r(0, 3), get_color_profile_slot_g(0, 3), get_color_profile_slot_b(0, 3))

var intro_time = get_gameplay_time();
if (intro_time == (60)  && (!variable_instance_exists(id,"diag"))) sound_play(sound_get("intro_yeehaw"))

//kirbo
if (swallowed == 1) {
	swallowed = 0;
	
	var ability_spr = sprite_get("kirbo");
	var ability_hurt = sprite_get("kirbo_hurt");
	var ability_hit_sfx = sound_get("sfx_blow_heavy3");
	var myicon = sprite_get("kirbyicon")
	
	with enemykirby{
		newicon = myicon
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 15);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 5);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 0);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 0);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_shing"));
                
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 9);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 5);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_oly_dspecial_dashcancel"));
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, 14);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .15);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);
                
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 15);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 5);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 8);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .55);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .97);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 2);
                
        set_num_hitboxes(AT_EXTRA_3, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 8);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 16);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -36);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 96);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 80);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 4);
        set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 8);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 70);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 10);
        set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .67);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 8);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 305);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, ability_hit_sfx);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_PARTICLE_NUM, 1);
	}
}

//dialogue buddy

if(variable_instance_exists(id,"diag"))
{
//Change their name whenever
    diag_name = "Velvet"
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "I reckon you're in for a wreckin'.",
    "Like my Pa always says: Put 'em up!",
    "Like my Pa always says: Never underestimate the power of a kick in the head!",
    "Comin' atcha!",
    "Get outta my way, I've got a Prairie to save!"]

//  Specific Character Interactions

//  Regular dialogue
    if(otherUrl == 2804035497 && diag != "") //Change the url into a specific character's
    {
        diag = "Like my Pa always says: Pride goeth before a hiney whoopin'!";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

    if(otherUrl == 2815897932 && diag != "") //Change the url into a specific character's
    {
        diag = "I don't know whatchu up to, fuzzball, but back off!";
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