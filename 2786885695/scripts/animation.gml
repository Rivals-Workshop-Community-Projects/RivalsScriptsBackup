//animation

////////////////////////////////////////////////////////////// SETUP STUFF //////////////////////////////////////////////////////////////

//HURTBOX LOGIC
//...buuuut i need to set all the conditions
if (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_TURN || state == PS_DASH_STOP) hurtboxID.sprite_index = sprite_get("hurtbox_dash");
else if (state == PS_CROUCH) hurtboxID.sprite_index = crouchbox_spr;
else if (is_attacking)
{
	if (get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) != 0 && free) hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_AIR_SPRITE);
	else hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
}
else hurtboxID.sprite_index = hurtbox_spr;



//play dash start sound
if (state == PS_DASH_START)
{
	sound_stop(asset_get("sfx_dash_start"));
	if (state_timer == 1) sound_play(dash_sound);
}

//plays the parry stun animation right
//thanks Frtoud!
if (state == PS_PRATLAND && extended_parry_lag) image_index = lerp(0, 2, state_timer/clamp((4/45.0) * parry_distance + (160.0/3.0), 60, 100));


// fix weird jittering that can happen when it tries to return to 0
if (abs(hud_offset) < 1) hud_offset = 0;

////////////////////////////////////////////////////////// POINTLESS SHORTCUTS //////////////////////////////////////////////////////////

//uniting all roll animations to 1 animation called "roll" cuz i don't want the same sprite strip twice
if (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD) sprite_index = sprite_get("roll");

//prevents keqing from using the airdodge's first sprite when doing a wavedash
if (state == PS_AIR_DODGE && !free && image_index == 0)
{
	sprite_index = sprite_get("jumpstart");
	image_index = 1;
}

//hitstun logic
if (state == PS_HITSTUN)
{
	image_index = hurt_img;
	if (image_index == 4) draw_y = 16; //up hurt offset
}

if (state == PS_HITSTUN_LAND) image_index = 5;

if (state == PS_HITSTUN && hurt_img == 5 || state == PS_TUMBLE)
{
	//spiphurt spinning cuz i don't wanna make a long strip
	//thanks Muno and Frtoud
	sprite_index = sprite_get("hurt_tumble"); //tf is a spinhurt

	rotate_time ++;
	if (rotate_time == 0)
	{
		spr_angle = 0;
		cur_sprite_rot = 0;
		should_rotate = false;
	}
	else if (rotate_time % 10 == 0) should_rotate = true;
	else should_rotate = false;
	if (should_rotate)
	{
		cur_sprite_rot += 90*spr_dir;
		if (abs(cur_sprite_rot) >= 360) cur_sprite_rot = 0;
	}

	spr_angle = cur_sprite_rot; 
	draw_y = -40;
}
else rotate_time = -1;

//mollo stun
if (state == PS_FLASHED)
{
	sprite_index = sprite_get("hurt");
	image_index = 1;
}

//olympia stun
if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || state == PS_CRYSTALIZED)
{
	sprite_index = sprite_get("hurt_crystal");
	small_sprites = 1;
}
else small_sprites = 0;

//hodan bury
if (state == PS_BURIED)
{
	sprite_index = sprite_get("hurt");
	image_index = 2;
}



////////////////////////////////////////////////////////////// ATTACK STUFF //////////////////////////////////////////////////////////////

//fspecial unique landing lag sprites
if (attack == AT_FSPECIAL && state == PS_LANDING_LAG)
{
	sprite_index = sprite_get("tech");
	image_index = lerp(0, 3, state_timer/landing_lag_time);
}

if (is_attacking)
{
	// make the nametag go higher on certain moves
	if (attack == AT_USTRONG && (window == 4 || window == 5 && window_timer <= 12)) hud_offset = lerp(hud_offset, 110, 0.5);
	if (attack == AT_DATTACK && (window == 3 || window == 4 && window_timer < 4)) hud_offset = lerp(hud_offset, 80, 0.1);

	if (attack == AT_INTRO && window <= window_last) hud_offset = lerp(hud_offset, 2000, 0.1);

	//strong charging but with physics
	if ((attack == AT_USTRONG || attack == AT_FSTRONG || attack == AT_DSTRONG) && window == 3)
	{
		if (strong_charge > 8) image_index = 5;
		else image_index = 3+strong_charge/4;
	}

	//nspec aiming
	if (attack == AT_NSPECIAL && image_index == 3)
	{
		hurtboxID.sprite_index = sprite_get("hurtbox_nspec");
		
		if (!free) sprite_index = sprite_get("nspecial_rot");
		else sprite_index = sprite_get("nspecial_rot_air");

		if (spr_dir) image_index = ceil((marker_angle-22.5)/45);
		else image_index = ceil((marker_angle-180)/45)*spr_dir;
	}

	//uspec vanishing keqing
	if (attack == AT_USPECIAL)
	{
		if (window == 3)
		{
			sprite_index = empty;
			hurtboxID.sprite_index = sprite_get("hurtbox_uspec");
		}
		else sprite_index = free ? sprite_get("uspecial_air") : sprite_get("uspecial");
	}
}