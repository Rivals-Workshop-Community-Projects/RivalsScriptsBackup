// Attack Update
// I swear that if you touch anything it'll all break.


//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_TAUNT)
{
	if (window == 1 && window_timer == 1 && down_down && !up_down)
	{
		// Different Taunt while holding down.
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_down"));
		set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 90);
		set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 14);
		set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sfx_tauntsleep"));
		set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 1);
	}
	else if (window == 1 && window_timer == 1 && !down_down)
	{
		reset_attack_value(AT_TAUNT, AG_SPRITE);
		reset_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH);
		reset_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES);
		reset_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME);
		
		if (random_func(0, 11, 1) == 3)
		{
			set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sfx_dialup"));
		}
		else
		{
			// bluh....
			reset_window_value(AT_TAUNT, 1, AG_WINDOW_SFX);
		}
	}
	

}

if (attack == AT_USTRONG)
{
	// Rune M Check
	if (runeM)
	{
		if(window == 2 && window_timer == 19)
		{
			if (!runeJ)
			{
				move_cooldown[AT_USTRONG] = 23;
			}
			
			if(random_func(0, 4, 1) == 3)
			{
				ustrng = 7;
			}
			else 
			{
				ustrng = 1;
			}
		}

	}
	// Normal UStrong without RuneM
	else 
	{
		if (window == 2 && window_timer == 19)
		{
			move_cooldown[AT_USTRONG] = 23;
			ustrng = random_func(0, 11, 1);
		}
	}	
	

	
    switch (ustrng)
	{
		case 7: // Artifact
			set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 12);
			set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 12);
			set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 20);
			set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .7);
			set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("artifact_proj"));
			set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("artifact_proj"));
			set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_absa_uair"));
			set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 130);
			set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_CAMERA_SHAKE, 1);
		break;
		case 6: // Snowball
			set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 8);
			set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
			reset_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE);
			reset_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING);
			set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("snow_proj"));
			set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("snow_proj"));
			reset_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX);
			set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 28);
			reset_hitbox_value(AT_USTRONG, 1, HG_EXTRA_CAMERA_SHAKE);
		break;
		default: // Bone
			set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 10);
			set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 10);
			reset_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE);
			reset_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING);
			set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("bone_proj"));
			set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("bone_proj"));
			reset_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX);
			reset_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT);
			reset_hitbox_value(AT_USTRONG, 1, HG_EXTRA_CAMERA_SHAKE);
	}
	
	var temp_distance = (strong_charge * 2);
	temp_distance = (strong_charge - temp_distance);
	var bone_distance = (temp_distance / 4.4);
	
	if (bone_distance >= -8)
	{
		// Minimum height.
		set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -8);
	}
	else
	{
		if (bone_distance <= -13.5)
		{
			// Maximum Height
			set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -13.5);
		}
		else
		{
			// Height based on charge amount.
			set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, bone_distance);
		}
	}
}

if (attack == AT_FSTRONG){
	
	if (window == 1)
	{
		soft_armor = 0;
		fstrparry = 0;
		if (window_timer >= 20)
		{
			soft_armor = 9;
		}
		if (state == PS_ATTACK_AIR)
		{
			state = PS_IDLE_AIR;
		}
	}
	if (window == 4)
	{
		soft_armor = 0;
	}
    if (fstrparry == 0){
		
		if (window == 5 && window_timer == 1)
		{
			// Teleports to the new position that FStrong finishes at.
			y -= 52;
			if (spr_dir == -1)
			{
				x -= 5;
				hsp = -4.5;
			}
			else 
			{
				hsp = 4.5;
				x -= -5;
			}
		}
		reset_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED);
		reset_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED_TYPE);
    }
	else 
	{
		set_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED, 0);
		set_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED_TYPE, 0);
	}
    can_fast_fall = false;
    can_move = false
}

// Reset taunt while charging strong when charge ends.
if ((attack == AT_DSTRONG || attack == AT_FSTRONG || attack == AT_USTRONG) && window == 2 && canbluh == 0)
{
	canbluh = 1;
}

// Cannot parry Jab, like the main cast.
if(attack == AT_JAB && was_parried){
    was_parried = false;
}

if (attack == AT_FTILT){
	move_cooldown[AT_FTILT] = 18;
}

if (attack == AT_DTILT){
	move_cooldown[AT_DTILT] = 4;
	
	switch(random_func(0, 4, 1))
	{
		case 0:
			set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, sound_get("sfx_tem1"));
		break;
		case 1:
			set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, sound_get("sfx_tem2"));
		break;
		case 2:
			set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, sound_get("sfx_tem3"));
		break;
		case 3:
			set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, sound_get("sfx_tem4"));
		break;
	}
}


if (attack == AT_NSPECIAL){
	// Flips the words around if facing the other way.
    if (spr_dir == -1)
	{
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_left"));
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj_left"));
	}
	else
	{
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
	}
}

if (attack == AT_USPECIAL){
	// Ends the move if shield is pressed.
	if (window == 3 && shield_pressed)
	{
		window = 4;
		window_timer = -1;
	}
	can_wall_jump = true;
}

if (attack == AT_FSPECIAL)
{
	move_cooldown[AT_FSPECIAL] = 40;
	if (window == 1 || window == 2)
	{
		carfuel = 100;
		reset_attack_value(AT_FSPECIAL, AG_OFF_LEDGE);
		removehud = 0;
		canhonk = 1;
	}
	if (window == 4 && attack_pressed && canhonk == 1) 
	{
		//Honk while driving.
		sound_play( sound_get( "sfx_dog_car" ) );
		canhonk = 0;
	}
	if ((shield_down || special_down || carfuel <= 0) && (window == 4 && (window_timer > 1 && window_timer < 19)) ) 
	{
		// Exiting
		window = 6;
		carfuel = 0;
		
		destroy_hitboxes();
	}
	if (state == PS_ATTACK_GROUND)
	{
		if ((window == 4 && window_timer >= 2) && carfuel > 9 && ((spr_dir == -1 && right_down) || (spr_dir == 1 && left_down)))
		{
			// Turnaround
			window = 5;
			window_timer = 1;
			destroy_hitboxes();
			canhonk = 1;
		}
	}
	if (window == 5 && window_timer >= 25)
	{
		// When turning animation finished, actually turn around.
		window = 3;
		window_timer = 1;
		if (spr_dir == 1)
		{
			spr_dir = -1;
		}
		else
		{
			spr_dir = 1;
		}
	}
	if (state == PS_ATTACK_AIR)
	{
		can_fast_fall = false;
		can_wall_jump = true;
	}
	if (window >= 4 && window_timer == 1 && donotlower == 0)
	{
		// Fuel lowers by 10 every 20 frames.
		carfuel -= 10;
		canhonk = 1;
	}
	if (donotlower == 1 && window_timer == 2)
	{
		// Fixes a bug where if you land the move on window_timer == 1 then the meter will become empty.
		// Just skips the meter lowering and pushes it to the next frame when the attack isn't being landed instead. 
		donotlower = 0;
		carfuel -= 10;
		canhonk = 1;
	}
}


if (attack == AT_DATTACK)
{
	if (window == 1)
	{
		reset_attack_value(AT_DATTACK, AG_OFF_LEDGE);
	}
	
	if (state == PS_ATTACK_AIR)
	{
		can_fast_fall = false;
		can_wall_jump = true;
	}
}

// Secret Taunts
if (taunt_pressed && strong_charge >= 1 && canbluh == 1 && window == 1) 
{
	// Plays the bluh sound if you press taunt while charging a strong attack.
	sound_play( sound_get( "sfx_bluh" ) );
	canbluh = 0;
} 


// ---------- Abyss Rune Support ----------

// ---------- Level 1 Runes ---------- 
if runeA 
{
	set_window_value(AT_TAUNT, 1, AG_WINDOW_INVINCIBILITY, 1);
}
if runeB 
{
	move_cooldown[AT_FTILT] = 0;
}
if runeC
{
	set_hitbox_value(AT_UTILT, 1, HG_EFFECT, 10);
	set_hitbox_value(AT_UAIR, 1, HG_EFFECT, 10);
}
if runeD 
{
	set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
}
if runeE
{
	set_window_value(AT_DAIR, 5, AG_WINDOW_VSPEED_TYPE, 2);
	set_window_value(AT_DAIR, 5, AG_WINDOW_VSPEED, -5);
}

if runeF 
{
	set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 165);
	set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 2);
}

// ---------- Level 2 Runes ---------- 
if runeG
{
	set_hitbox_value(AT_DSTRONG, 1, HG_EFFECT, 11);
	set_hitbox_value(AT_DSTRONG, 2, HG_EFFECT, 11);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 14);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 14);
}
if runeH
{
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 13);
}
if runeI 
{	
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 40);
}
if (runeJ && attack == AT_USTRONG)
{	
	move_cooldown[AT_USTRONG] = 10;
}
if runeK
{	
	set_num_hitboxes(AT_USPECIAL, 3);
	set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
	set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);
	set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 3);
	set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
	set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 9);
	set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 50);
	set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, -2);
	set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -55);
	set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 45);
	set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 65);
	set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
	set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
	set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 5);
	set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 75);
	set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, .6);
	set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .35);
	set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 10);
	set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, sound_get("sfx_hit2"));
}


// ---------- Level 3 Runes ---------- 
if (attack == AT_FSPECIAL && runeN) {
	can_jump = true;
}

if runeL 
{
	set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 3);
}
if runeO
{
	set_num_hitboxes(AT_FAIR, 2);
	set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 2);
	set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 4);
	set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 200);
	set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 23);
	set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -10);
	set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 5);
	set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 70);
	set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_ANIM_SPEED, .3);
	set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_PARRY_STUN, 1);
	set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_HSPEED, 1);
	set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_GRAVITY, .25);
	set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
	set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_FAIR, 2, HG_EXTENDED_PARRY_STUN, 1);
	set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 3);
	set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .4);
	set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 3);
	set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .4);
	set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("bone_proj"));
	set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_MASK, sprite_get("bone_proj"));
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("sfx_hit2"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 0);
	
	set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
}
