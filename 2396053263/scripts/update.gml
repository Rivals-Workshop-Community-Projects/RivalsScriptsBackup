//update

heartDebugTimer[0] = heartDebug ? min(heartDebugTimer[0]+1,heartDebugTimer[1]) : max(heartDebugTimer[0]-1,0);

if array_length_1d(fspecial_needles) != 0
{
	for (var i = 0; i < 3; i++)
	{
		if fspecial_needles[i] != noone
	    {
	    	with (fspecial_needles[i])
	    	{
				var num;
				num = min(ceil( (hitbox_timer+1) / 6), 3) //1-3
				//print(num)
				sound_effect = sound_get("needle" + string(num))
	    	}
	    }
	}
}

if (!free){
    has_brake = 1;
    air_timer = 0;
} else {
    air_timer += 1;
}

if (!free && taunt_pressed && (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_TURN || state == PS_DASH_STOP)){
    set_attack(AT_TAUNT);
}

if (free && taunt_pressed && has_brake = 1 && state_cat == SC_AIR_NEUTRAL && air_timer >= 4){
    set_attack(AT_EXTRA_1);
    has_brake = 0;
}

if (free && taunt_down && has_brake = 1 && (state == PS_ATTACK_AIR || state == PS_PRATFALL) && air_timer >= 4 && !hitpause){
    if ((left_down && spr_dir == -1) || (right_down && spr_dir == 1)){
        vsp = -1.5;
		hsp = 6*spr_dir;
		spawn_hit_fx(x, y+4, hit_vbrake);
		sound_play(sound_get("vbrake"));
    } else if((left_down && spr_dir == 1) || (right_down && spr_dir == -1)){
        vsp = -1.5;
		hsp = -6*spr_dir;
		spawn_hit_fx(x, y+4, hit_vbrake);
		sound_play(sound_get("vbrake"));
    }
    has_brake = 0;
}

if (state == PS_WALL_JUMP){
    has_brake = 1;
}

if (state_cat == SC_HITSTUN || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL){
	char_height = 54;
}

if (phone_cheats[cheat_inf_vbrake] == 1){
	if (has_brake == 0){
		vbrake_timer += 1;
	}
	
	if (vbrake_timer >= 9){
		has_brake = 1;
		vbrake_timer = 0;
	}
}

if (phone_cheats[cheat_cooldown] == 1){
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_DSPECIAL] = 0;
}

//NSPECIAL PARTICLES + DAIR (UPDATE)
//By: Delta Parallax

//If you're not performing the grab, delete all particles and make sure the nspecial_target is reset.
if (state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND)
{
	nspecial_particles = [];
	nspecial_target = noone;
	dairFastFall = false;
}

//Cosmetic/compatibility

if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 12;
    trummelcodecsprite1 = sprite_get("");
    trummelcodecsprite2 = sprite_get("");

    //Page 0
    trummelcodecspeaker[0] = 1;
    trummelcodecexpression[0] = 4;

    trummelcodecline[0,1] = "Uh oh.";
    trummelcodecline[0,2] = "Looks like we're";
    trummelcodecline[0,3] = "gonna have to fight.";
    trummelcodecline[0,4] = "";

    //Page 1
    trummelcodecspeaker[1] = 1;
    trummelcodecexpression[1] = 2;

    trummelcodecline[1,1] = "That's Heartbrake,";
    trummelcodecline[1,2] = "the 'End of Love'.";
    trummelcodecline[1,3] = "";
    trummelcodecline[1,4] = "";
    
    //Page 2
    trummelcodecspeaker[2] = 1;
    trummelcodecexpression[2] = 2;

    trummelcodecline[2,1] = "Her heart was broken,";
    trummelcodecline[2,2] = "and she weaponizes ";
    trummelcodecline[2,3] = "that in order to";
    trummelcodecline[2,4] = "fight.";
    //Page 3
    
    trummelcodecspeaker[3] = 1;
    trummelcodecexpression[3] = 2;

    trummelcodecline[3,1] = "In other words, she";
    trummelcodecline[3,2] = "fights using depression.";
    trummelcodecline[3,3] = "";
    trummelcodecline[3,4] = "";
    
    //Page 4
    trummelcodecspeaker[4] = 2;
    trummelcodecexpression[4] = 0;

    trummelcodecline[4,1] = "yikes";
    trummelcodecline[4,2] = "";
    trummelcodecline[4,3] = "";
    trummelcodecline[4,4] = "";
    
    //Page 5
    trummelcodecspeaker[5] = 1;
    trummelcodecexpression[5] = 2;

    trummelcodecline[5,1] = "She can weaponize YOUR";
    trummelcodecline[5,2] = "heart, too. If you see ";
    trummelcodecline[5,3] = "a heart tailing behind";
    trummelcodecline[5,4] = "you, try to avoid ";

    //Page 6
    trummelcodecspeaker[6] = 1;
    trummelcodecexpression[6] = 0;

    trummelcodecline[6,1] = "being knocked into it";
    trummelcodecline[6,2] = "when it splits. If the ";
    trummelcodecline[6,3] = "two halves collide with";
    trummelcodecline[6,4] = "you inside, it'll leave";
    
    //Page 7
    trummelcodecspeaker[7] = 1;
    trummelcodecexpression[7] = 3;

    trummelcodecline[7,1] = "you wide open.";
    trummelcodecline[7,2] = "";
    trummelcodecline[7,3] = "";
    trummelcodecline[7,4] = "Also, it'll hurt.";
    
    //Page 8
    trummelcodecspeaker[8] = 1;
    trummelcodecexpression[8] = 4;

    trummelcodecline[8,1] = "She can also mix up her";
    trummelcodecline[8,2] = "air movement with her";
    trummelcodecline[8,3] = "V-Braking technique.";
    trummelcodecline[8,4] = "Stay vigilant!";
    
    //Page 9
    trummelcodecspeaker[9] = 2;
    trummelcodecexpression[9] = 0;

    trummelcodecline[9,1] = "looks like the logo for";
    trummelcodecline[9,2] = "a shoe brand";
    trummelcodecline[9,3] = "";
    trummelcodecline[9,4] = "";
    
    //Page 10
    trummelcodecspeaker[10] = 1;
    trummelcodecexpression[10] = 0;

    trummelcodecline[10,1] = "I think it's supposed";
    trummelcodecline[10,2] = "to be a half of a heart.";
    trummelcodecline[10,3] = "";
    trummelcodecline[10,4] = "";
    
    //Page 11
    trummelcodecspeaker[11] = 1;
    trummelcodecexpression[11] = 0;

    trummelcodecline[11,1] = "...Hey, is it just me,";
    trummelcodecline[11,2] = "or does she look kinda";
    trummelcodecline[11,3] = "like Acid Rainbows?";
    trummelcodecline[11,4] = "";
    
    //Page 12
    trummelcodecspeaker[12] = 1;
    trummelcodecexpression[12] = 1;

    trummelcodecline[12,1] = "Baggy shirt, toothpick ";
    trummelcodecline[12,2] = "legs... Even a big weapon ";
    trummelcodecline[12,3] = "that she pulls out for";
    trummelcodecline[12,4] = "her stronger attacks!";

    //Page 13
    trummelcodecspeaker[13] = 2;
    trummelcodecexpression[13] = 0;

    trummelcodecline[13,1] = "probably just as broken";
    trummelcodecline[13,2] = "too";
    trummelcodecline[13,3] = "";
    trummelcodecline[13,4] = "";
}

user_event(14); //iphone