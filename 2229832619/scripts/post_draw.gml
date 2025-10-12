//post-draw N/A

shader_start()
if (attack == AT_USPECIAL && (state==PS_ATTACK_AIR || state==PS_ATTACK_GROUND)){
	if (window<=7){
		if (window<=3||window==4&&window_timer<1){//
			if (joy_pad_idle){
				var angle = (round(((spr_dir==1)?67.5:112.5) / 22.25) * 22.25) + ((spr_dir)?0:180);
			}else{
				var angle = (round(((spr_dir==-1&&joy_pad_idle)?180:joy_dir) / 22.25) * 22.25) + ((spr_dir)?0:180);
			}
			// !!
				var tmp_usp_angle = ((spr_dir==1)?67.5:112.5);
				if (usp_extramode == 1){ //special: for keyboards - ATTACK is for sideways
					var tmp_cur_card = usp_cur_cardinal_direction;
					switch(usp_cur_cardinal_direction){
						case "tl":
						case "tr":
							tmp_cur_card = "up";
						break;
						case "bl":
						case "br":
							tmp_cur_card = "down";
						break;
					}
					switch(usp_last_cardinal_direction){ //im doing an another switch cause iirc i cant use the same case multiple times
						case "tl":
						case "up":
						case "tr":
							if (tmp_cur_card == "left"){
								var tmp_usp_angle = 157.5;
							}
							if (tmp_cur_card == "right"){
								var tmp_usp_angle = 22.5;
							}
						break;
						case "bl":
						case "down":
						case "br":
							if (tmp_cur_card == "left"){
								var tmp_usp_angle = 202.5;
							}
							if (tmp_cur_card == "right"){
								var tmp_usp_angle = 337.5;
							}
						break;
					}//switch
					switch(usp_last_cardinal_direction){
						case "left":
						case "tl":
						case "bl":
							if (tmp_cur_card == "up"){
								var tmp_usp_angle = 157.5;
							}
							if (tmp_cur_card == "down"){
								var tmp_usp_angle = 202.5;
							}
						break;
						case "right":
						case "tr":
						case "br":
							if (tmp_cur_card == "up"){
								var tmp_usp_angle = 22.5;
							}
							if (tmp_cur_card == "down"){
								var tmp_usp_angle = 337.5;
							}
						break;
						case "up":
							if (tmp_cur_card == "up"){
								if (spr_dir = -1){
									var tmp_usp_angle = 157.5;
								}
								if (spr_dir = 1){
									var tmp_usp_angle = 22.5;
								}
							}
							if (tmp_cur_card == "down"){
								if (spr_dir = -1){
									var tmp_usp_angle = 202.5;
								}
								if (spr_dir = 1){
									var tmp_usp_angle = 337.5;
								}
							}
						break;
					}//switch
					super_tmp_usp_angle = tmp_usp_angle;
					var angle = tmp_usp_angle + ((spr_dir)?0:180);
				}//atkdown
				if (usp_extramode == 2){ //special: for keyboards - JUMP is for verticals
					var tmp_cur_card = usp_cur_cardinal_direction;
					switch(usp_cur_cardinal_direction){
						case "tl":
						case "tr":
							tmp_cur_card = "up";
						break;
						case "bl":
						case "br":
							tmp_cur_card = "down";
						break;
					}
					switch(usp_last_cardinal_direction){
						case "left":
						case "tl":
						case "bl":
							if (tmp_cur_card == "up"){
								var tmp_usp_angle = 112.5;
							}
							if (tmp_cur_card == "down"){
								var tmp_usp_angle = 247.5;
							}
						break;
						case "right":
						case "tr":
						case "br":
							if (tmp_cur_card == "up"){
								var tmp_usp_angle = 67.5;
							}
							if (tmp_cur_card == "down"){
								var tmp_usp_angle = 292.5;
							}
						break;
						case "up":
							if (tmp_cur_card == "up"){
								if (spr_dir = -1){
									var tmp_usp_angle = 112.5;
								}
								if (spr_dir = 1){
									var tmp_usp_angle = 67.5;
								}
							}
							if (tmp_cur_card == "down"){
								if (spr_dir = -1){
									var tmp_usp_angle = 247.5;
								}
								if (spr_dir = 1){
									var tmp_usp_angle = 292.5;
								}
							}
						break;
					}//switch
					switch(usp_last_cardinal_direction){ //im doing an another switch cause iirc i cant use the same case multiple times
						case "tl":
						case "up":
						case "tr":
							if (tmp_cur_card == "left"){
								var tmp_usp_angle = 112.5;
							}
							if (tmp_cur_card == "right"){
								var tmp_usp_angle = 67.5;
							}
						break;
						case "bl":
						case "down":
						case "br":
							if (tmp_cur_card == "left"){
								var tmp_usp_angle = 247.5;
							}
							if (tmp_cur_card == "right"){
								var tmp_usp_angle = 292.5;
							}
						break;
					}//switch
					super_tmp_usp_angle = tmp_usp_angle;
					var angle = tmp_usp_angle + ((spr_dir)?0:180);
				}
			// !!
		}else{
			var angle = usp_angle + ((spr_dir)?0:180)
		}
		if (get_player_color( player ) == 7){ //towerofheaven
			draw_sprite_ext( sprite_get("uspecial_dupli_ea"), image_index, x, y-24, spr_dir, 1, angle, c_white, 1 );
		}else{//normal
			draw_sprite_ext( sprite_get("uspecial_dupli"), image_index, x, y-24, spr_dir, 1, angle, c_white, 1 );
		}
	}
}

/*
if (get_player_color( player ) == 8){
	switch (state){
    case PS_IDLE:
    case PS_IDLE_AIR:
    case PS_LAND:
    case PS_JUMPSQUAT:
    case PS_FIRST_JUMP:
    case PS_CROUCH:
    case PS_WALK:
    case PS_DASH_START:
    case PS_DASH:
    case PS_DASH_STOP:
    case PS_WAVELAND:
    case PS_PARRY_START:
    case PS_PARRY:
    case PS_ROLL_BACKWARD:
    case PS_ROLL_FORWARD:
    case PS_SPAWN:
    case PS_RESPAWN:
    case PS_PRATLAND:
    case PS_PRATFALL:
    case PS_HITSTUN_LAND:
    case PS_LANDING_LAG:
		draw_sprite_ext( sprite_get("na_halo"), 0, x, y, spr_dir, 1, 0, c_white, 0.6 );
    break;
	}
}*/


with(asset_get("obj_article1")){
	if (player_id == other.id){
		//if (point_distance(x, y, player_id.x, player_id.y-round(player_id.char_height/2)) <= disable_range){
			var tmp_dist = round( point_distance(x, y, player_id.x, player_id.y-round(player_id.char_height/2)) )
			var tmp_a = ease_sineIn( 100, 0, min((max(disable_range,tmp_dist)-disable_range),round(disable_range)), round(disable_range) )/100
			var tmp_blend = gpu_get_blendmode();
			gpu_set_blendmode(bm_add);
			draw_sprite_ext( sprite_get("na_dot"), 0, player_id.x, player_id.y-1-round(player_id.char_height/2), 2, 2, 0, c_white, tmp_a/((tmp_dist<=disable_range&&state==1)?1:3) );
			gpu_set_blendmode(tmp_blend);
			
			/*if (tmp_dist<=disable_range*2){
			if (get_gameplay_time()%9==id%9){
			//hbtx = round(disp_1 * cos(angle_1));
			//hbty = round(disp_1 * sin(angle_1));
			var tmp_angle = point_direction(x, y, player_id.x+player_id.hsp, (player_id.y-round(player_id.char_height/2))+player_id.vsp) / 180 * -3.14;
			var tmp_angle = tmp_angle-0.2+random_func_2( 5, 40, true )/100
			var tmp_xoffset = round(disable_range * cos(tmp_angle));
			var tmp_yoffset = round(disable_range * sin(tmp_angle));
			spawn_hit_fx( x+tmp_xoffset, y+tmp_yoffset, player_id.na_dot2 )
			}
			}*/
			
			/*var tmp_angle = point_direction(x, y, player_id.x+player_id.hsp, (player_id.y-round(player_id.char_height/2))+player_id.vsp) / 180 * -3.14;
			var tmp_xoffset = round(disable_range * cos(tmp_angle));
			var tmp_yoffset = round(disable_range * sin(tmp_angle));
			var tmp_xoffsetC = round(disable_range * cos(tmp_angle+0.3));
			var tmp_yoffsetC = round(disable_range * sin(tmp_angle+0.3));
			var tmp_xoffsetD = round(disable_range * cos(tmp_angle-0.3));
			var tmp_yoffsetD = round(disable_range * sin(tmp_angle-0.3));
			
			var tmp_blend = gpu_get_blendmode();
			gpu_set_blendmode(bm_add);
			var tmp_aget = draw_get_alpha();
			draw_set_alpha(tmp_a);
			
			draw_line_width_colour(x+tmp_xoffset, y+tmp_yoffset, x+tmp_xoffsetC, y+tmp_yoffsetC, 2, c_white, c_purple);
			draw_line_width_colour(x+tmp_xoffset, y+tmp_yoffset, x+tmp_xoffsetD, y+tmp_yoffsetD, 2, c_white, c_purple);
			
			gpu_set_blendmode(tmp_blend);
			draw_set_alpha(tmp_aget);*/
			
		//}
	}
}

shader_end()



if (attack == AT_DSPECIAL&&(state==PS_ATTACK_AIR||state==PS_ATTACK_GROUND)){
	
	//charge effect
	if (window==3){
		var tmp_range3 = ease_cubeOut( 0, 70, dsp_glow_time, dsp_glow_max )
		var tmp_alpha5 = clamp(ease_cubeIn( 60, 0, dsp_glow_time, dsp_glow_max )/100, 0, 1)
		var tmp_alpha6 = tmp_alpha5 - clamp(ease_cubeIn( 100, 0, dsp_glow_time, round(dsp_glow_max/3) )/100, 0, 1)
		
		var make_color = make_colour_rgb(get_color_profile_slot_r( get_player_color(player), 0), get_color_profile_slot_g( get_player_color(player), 0), get_color_profile_slot_b( get_player_color(player), 0));
		var make_colorB = make_colour_rgb(get_color_profile_slot_r( get_player_color(player), 3), get_color_profile_slot_g( get_player_color(player), 3), get_color_profile_slot_b( get_player_color(player), 3));
		
		draw_set_alpha(tmp_alpha6);
		draw_circle_colour(x, y-24, tmp_range3, make_colorB, make_color, false);
		draw_set_alpha(1);
	}
	
	//laser
	if (window==11||window==12||window==13){
		var tmp_x3 = x+(57*spr_dir)
		var tmp_y3 = y-49
		
		var make_color = make_colour_rgb(get_color_profile_slot_r( get_player_color(player), 3), get_color_profile_slot_g( get_player_color(player), 3), get_color_profile_slot_b( get_player_color(player), 3));
		
			var tmp_rad = ease_quartInOut( 40, 0, state_timer-19, 54 );
			var tmp_disp = ease_quartInOut( 0, 10, state_timer-19, 54 );
			var tmp_ab = ease_quartInOut( 10, 0, state_timer-19, 54 )/50;
		
		gpu_set_blendmode(bm_add);
		draw_set_alpha(tmp_ab);
		draw_line_width_colour(tmp_x3-(tmp_disp*spr_dir), tmp_y3+tmp_disp, tmp_x3+(800*spr_dir), tmp_y3-800, ceil(tmp_rad*1.7), make_color, make_color);
		draw_line_width_colour(tmp_x3-(tmp_disp*spr_dir), tmp_y3+tmp_disp, tmp_x3+(800*spr_dir), tmp_y3-800, ceil(tmp_rad*2), make_color, make_color);
		draw_set_alpha(tmp_ab*1.3);
		draw_circle_colour(tmp_x3-(tmp_disp*spr_dir), tmp_y3+tmp_disp, ceil(tmp_rad/1.3), make_color, make_color, false);
		draw_circle_colour(tmp_x3-(tmp_disp*spr_dir), tmp_y3+tmp_disp, ceil(tmp_rad*1), make_color, make_color, false);
		
		draw_set_alpha(tmp_ab*10);
		draw_line_width_colour(tmp_x3-(tmp_disp*spr_dir), tmp_y3+tmp_disp, tmp_x3+(800*spr_dir), tmp_y3-800, ceil(tmp_rad*1.15), make_color, make_color);
		draw_circle_colour(tmp_x3-(tmp_disp*spr_dir), tmp_y3+tmp_disp, ceil(tmp_rad/1.75), make_color, make_color, false);
		
		draw_set_alpha(tmp_ab);
		gpu_set_blendmode(bm_normal);
		draw_line_width_colour(tmp_x3-(tmp_disp*spr_dir), tmp_y3+tmp_disp, tmp_x3+(800*spr_dir), tmp_y3-800, ceil(tmp_rad*1.4), make_color, make_color);
		draw_circle_colour(tmp_x3-(tmp_disp*spr_dir), tmp_y3+tmp_disp, ceil(tmp_rad/1.5), make_color, make_color, false);
		
		draw_set_alpha(1);
		//print(string(ceil(tmp_rad/1.7)))
			
		draw_line_width_colour(tmp_x3-(tmp_disp*spr_dir), tmp_y3+tmp_disp, tmp_x3+(800*spr_dir), tmp_y3-800, ceil(tmp_rad), c_white, c_white);
		
		draw_circle_colour(tmp_x3-(tmp_disp*spr_dir), tmp_y3+tmp_disp, ceil(tmp_rad/2), c_white, c_white, false);
	}
}


//*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
//       Playtest Changelog Template by hyuponia. change the code as much you'd like
//       please paste somewhere in "post_draw.gml"!
//       find it at: https://pastebin.com/uDVTDU6R
//*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
if (object_index == asset_get("oTestPlayer")){//this checks if it's in a playtest screen.
	if (!variable_instance_exists(id,"pn__init")){//initialization part runs once
		var i = 0;
		
		//*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
		//       if you're just trying to put this on your character, change these variables!
		//*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
		
		//IF YOUR TEXT HAS "" (quotes), REPLACE IT OR IT WILL BREAK!!! i usually replace them with '' (apostrophe)
		//to make a new line, simply press enter. rivals' gml parser thing reads newline in string properly for some reason
		//you can make as many entry as you want by copypasting
		//  patch_note_title[i] = "";   and   patch_note_text[i++] = ""   like the example.
		//no need to change the array number! (or rather, "i++" in this case), as it's incrementing itself each new text.
		//the order you have in the code is how it'll be ordered in the list as well.
		//
		//i made it able to store multiple text but its probably recommended to only have a few in here
		//like just for recent few patch notes maybe? but it's up to you how you use it!
		//
		//put text here.
		
		
		patch_note_title[i] = "v4.2 - (2025 Oct 12)"
		patch_note_text[i++] = 
		"v4.2 (2025 Oct 12)
		this one goes out to all you keyboard players
		[b]additions[/b]
		- i had an ephiphany at like 4 in the morning. i noticed how when you are playing on keyboard, it's a lot more easier to press multiple buttons at the same time. thusly, i present to you:
		+ while in USPECIAL, you can now hold ATTACK or JUMP to aim in the inbetween shallow angles.
		- ATTACK aims the more sideways shallow angles, while JUMP will aim the vertical shallow angles.
		- you are even able to do the doubletap with this aiming. i can do it like 75% of the time i think. 

		- ... nothing else! but it's 7AM now
		"
		
		
		patch_note_title[i] = "v4.1 - (2025 Aug 30)"
		patch_note_text[i++] = 
		"v4.1 (2025 Aug 30)
		[b]additions[/b]
		- FSTRONG ... you can now hold backwards to not do the lunge thing.

		[b]balances[/b]
		-- -- beneficial
		- DSPECIAL ... total charge amount decreased to 30, effectively reverting the last change. (35 -> 30)
		- FSTRONG ... i just randomly figured out how to make axe hit reliable. it was not working because knockback started after hitpause and sometimes the main hit would end before the opponent would reach it.
		- FSTRONG ... axe hit now has -6 frames of extra hitpause, meaning they take LESS hitpause than N/A.
		- FSTRONG ... i recently found out that in base cast, the 'linker' hitboxes usually have SDI multiplier of 0. so the axe hit now has a SDI multiplier of 0 as well.
		- FSTRONG ... for good measure, axe hit hitbox has been extended backwards a bit.
		- FSTRONG ... startup reduced by 3, after charge. (31 -> 28 total.)
		- FSTRONG ... that messed with how the lunge worked so i increased the speed, it might be more distance than before now, im not sure.
		-- -- counterplay
		- NSPECIAL-SLICED ... you can parry this now to make it send towards N/A. very fast. and don't worry, i figured it out so that you can parry this again to send it back to the parrier. and again. and again

		[b]notes[/b]
		yall should fear N/A more. have fun!
		"
		
		
		patch_note_title[i] = "v4.0 -After All- Pg.1"
		patch_note_text[i++] = 
		"v4.0 -After All-

		[b]So, what's new, really?[/b]
		- A bitter awakening 'til before it's too late.
		- After all.
		---
		i'd prefer if you read the whole thing but i guess i'll give a summary.
		- Good amount of visual/audio upgrades.
		- Changes to some FSPECIAL BUBBLE visuals for clarity, notably the ''cooldown'' indicator and N/A's range for bubbles entering the ''cooldown mode''.
		- A whole lot of balance changes. Generally, addressed a bunch of elements people have expressed annoyance for, both N/A players and their opponents.
		- Straightened out some niche parts of N/A that was awkward compared to the base-game characters.
		- Some of the change requests were years and years old. I could call this patch years-in-the-making.

		[b]ameliorations[/b]
		- But we can be so much more.
		- But I can be so much more.
		- ALAS THUS AND BEHOLD:
		- Welcome to our grand design.
		---
		- animations have been given ameliorations.
		--- JAB. FAIR. ROLL. AIRDODGE. CROUCH. FSTRONG.
		--- JUMP/AIR IDLE. AND CHANGES RESULTING FROM IT SUCH AS. WALLJUMP. BAIR. UAIR. DAIR. NAIR. FSPECIAL-AIR. DSPECIAL-AIR.
		- sounds and visual effects have been adjusted and added.
		- FSPECIAL BUBBLE sprites updated.
		--- as a part of the change, BUBBLE cooldown visual has been given a good amount of change, that, i hope, helps with visual distinctness for colorblindness and other reasons.
		--- all these years... these sprites have remained unchanged from the draft sprites, so much so that the palette data within and colours used is one from the draft sprites. until now.

		[b]additions[/b]
		- Your infinity couldn't compare.
		---
		- FAIR ... EXPERIMENTAL: you can now hold attack + forward at startup to gain a little more forward momentum.
		- FSPECIAL BUBBLE ... when the owner n/a is nearby, it now casts some particle effects in the radius of its disable cooldown range. the center of n/a starts glowing too, which is the point it compares to for range distance. it's when this dot of light is within the range that the bubble will enter cooldown.
		--- its more intuitive ingame than this reads here i promise
		--- report back to me if this has performance issues. thanks
		- FSPECIAL BUBBLE ... in practice mode, when you have hitbox display enabled, you can now see detection range for the bubble's disable cooldown (marked with GREY ring), and hitbox detection range (marked with RED ring). it also has an indicator for its lifetime timer as well.
		--- the visualizer was always there but was inaccurate and was locked behind some button combo. it is now accurate and much more accessible
		--- i think this has performance issues but meh, doesnt affect real matches.
		- USPECIAL (DOUBLETAP) ... EXPERIMENTAL: the ''lingering slash'' now gain you a bit of dspecial charge, about as much as the smallest bubble explosion hit. i might revert this one; i dont want to encourage combat tooooo much? ...but then i did just also add the fair thing
		- USPECIAL (DOUBLETAP) && NSPECIAL PROJECTILE ... the doubletap ''slash'' now slices the nspecial projectile in half. this may not sound like much here but i think it's atleast somewhat significant

		[b]changes[/b]
		- Destined for fight, are we all, really? Is that truly rivalry, or something else?
		---
		- ALT COLORS ... True Purple and True Grey has been adjusted to be a bit more appealing maybe.
		- ALT COLORS ... the ROAACO colors have been adjusted to also be a bit more appealing...maybe.
		- ALT COLORS ... colors like Terra, Crown or doomsday are now specifically made to be much less darker.
		--- nothing darker than the deep abyss
		- ALT COLORS ... Axanthic adjusted to hopefully be a little more accurate to real axanthic axolotls?
		- ALT COLORS ... True Red has been adjusted to be a bit less harsh on the eyes. hopefully.
		- ALT COLORS ... alt color Turris renamed to Tower
		- ALT COLORS ... ALT COLORS NOW RECOLOR THE BUBBLES AND OTHER STUFF NOW INCLUDING THE ABYSS VFX.
		--- initially, the alt colors not recoloring these were intentional. but times have changed
		- parry lag animation adjusted, mostly for when the parried hitbox has extended parry stun.
		--- i did adjust how it looks for normal parrystun. this is bothering, i can revert that one
		- HITSTUN ... in hitstun, it now uses the same hitstun hurtbox as sylvanos
		- DAIR ... anim tweak, notably on the first frame of animation.
		- FSTRONG ... now lunges forward before attack (but after charge), giving it a sort of sudden extended range. (about 1.1 training room tile worth of distance)
		- NSPECIAL PROJECTILE ... it no longer does slow homing while in fspecial bubble.
		- NSPECIAL PROJECTILE ... while in fspecial bubble, it now spawns hitbox MUCH more rapidly than it did before.
		- NSPECIAL PROJECTILE ... it no longer has the weird hit lockout stuff. but on the other hand, that means it no longer has hit lockout... you can definitely get a hit directly out of it now. a mistake? who knows
		- FSPECIAL BUBBLE ... when the DSPECIAL electricity hitbox is parried, it now safely pops the bubble the hitbox belongs to.
		--- apparently, formerly it DID do something to the bubble when it was parried - but it just subtracts some amount from the total lifetime of the bubble. not anymore
		- FSPECIAL BUBBLE ... hitbox detection range is now larger than it looks.
		- FSPECIAL BUBBLE ... i think i made it work with teams? idk i havent tested it actually
		- FSPECIAL BUBBLE ... a bunch of the ''bubble pop'' noises now has slight volume and pitch tweaks, and some shift in pitch randomly also.
		- DSPECIAL LASER ... endlag reduced by 14 frames (its so long that it doesnt matter too much but it probably helps with offstage usage)
		- DSPECIAL LASER ... removed defining hitbox type from all the 31 hitboxes and i heard this hides the hitboxes from muno's framedata buddy so i hope this fixes the crash with that. idk i havent tested it
		- DSPECIAL LASER ... visibility increased. darkness pierces light.
		
		
		EXCLUSIVE BONUS INFO
		to you, reading the playtest changelog...
		
		with alt colors ''doomsday'', ''genesis'', or ''-save-'', press SPECIAL while the match is starting up to activate special SFX."
		
		
		patch_note_title[i] = "v4.0 -After All- Pg.2"
		patch_note_text[i++] = 
		"v4.0 -After All-
		
		[b]fixes[/b]
		- You think you yourself are better than fate.
		---
		- FSPECIAL BUBBLE ... no longer reacts to hitboxes with priority of 0.
		- FSPECIAL BUBBLE ... fixed an issue where if an opponent hits n/a and n/a's bubble at the same time, the opponent's hitpause is much shorter.
		--- as it turns out, the whole time i thought i was setting the hitpause value to the hitbox's hitpause but this whole time it's been setting it to the PLAYER's ''hitpause'' variable which is a BOOLEAN, meaning it always set it to 1. (or 0)
		--- i stupid
		--- fixed it so that it compares the hitpause the player is in currently to the hitbox's hitpause amount, and uses the longer one.

		[b]balances[/b]
		- Don't get it over your head however.
		- Lest the darkness of your vainglory swallow you whole.
		- And the shadows burn you to your expire.
		-- -- idk
		- UTILT ... sweetspot angle changed to 70. (72???????? -> 70)
		- UAIR ... all hitboxes angles are now an angle of 60.
		- UAIR ... the ''body hit'' hitbox parameters now resembles that of the aerial hit.
		- FSTRONG ... this isnt a change but i wanted to put it out there, i wanted to add hit lockout on fstrong but because of how things were made i can't put it. i tried a lot of things i cant put it it doesnt work. sorry
		- NSPECIAL-GROUND ... it hops even lower now. (-2.5 -> -2)
		- NSPECIAL PROJECTILE ... base knockback increased to 7. (bkb 5 -> 7)
		- DSPECIAL ... in the air, maximum fall speed has been reduced. (6 -> 5) it's now a bit closer to how it was before v1.6.
		-- -- beneficial
		- DATTACK ... endlag reduced by 3 frames, not counting whifflag.
		- FSTRONG ... EXPERIMENTAL: while the hitbox is out, the hurtbox is now a little bit disjointed.
		- FSTRONG ... the main hit hitbox's base knockback is now lower, but the knockback growth is higher. (BKB 10 -> 8, KBG 1.15 -> 1.25)
		- NSPECIAL ... with grounded and aerial, startup reduced by total of 4 frames. i dont remember how i implemented it, i think it might be made so both version has same amount of startup? not sure, it's been too long
		- FSPECIAL ... startup reduced by 4 frames.
		- FSPECIAL BUBBLE ... when bubble is made via fspecial it is ''ready'' faster by having less initial cooldown, and if split by slicing hitboxes, it is ''ready'' _slower_ by having more (normal 13 -> 11, sliced 9 -> 17)
		- FSPECIAL BUBBLE ... the ''bubble cooldown'' after it being slashed and split is shorter by 4 frames. (13f normal -> 9f slashed)
		- FSPECIAL BUBBLE ... when it ''explodes'', the hitbox comes out 2 frames faster. (6 -> 4)
		-- -- counterplay
		- DTILT ... hitbox active time reduced. (6 -> 4)
		--- i also shifted around the windows for this to make the visuals match so idk maybe theres side effects but i hope it doesnt matter much
		- FAIR ... knockback scaling reduced. (1.0 -> 0.95)
		- FAIR ... startup increased by 1. (10 -> 11)
		--- there's not too much benefit in spamming fspecial so i didnt need to do this but it felt weird
		- FSPECIAL BUBBLE ... the bubble's explosion is now smaller than its detection range. (as an example, largest bubble explosion radius is now 150 -> 125.)
		--- this combined with change mentioned in [changes], the bubble's explosion is now a ''negative disjoint''.
		- USPECIAL DOUBLETAP ... when the ''lingering slash'' is parried, USPECIAL enters about 3 seconds of cooldown. (but you're in parrystun already anyways so its like less than 2 seconds)
		- DSPECIAL ... total charge amount increased to 35. (30 -> 35)

		[b]notes[/b]
		After all.
		But of course. Who am I kidding?
		Of course the abyss will never see the light of day.
		Abyss antithesis light.

		How cruel.




		Was I not good enough for you?
		Answer me...


		Answer me!"
		
		
		patch_note_title[i] = "v3.4 - (2025 Apr 25)"
		patch_note_text[i++] = 
		"v3.4 (2025 Apr 25)
		[b]fixes[/b]
		- fixed the duplicate sprites thing. i was really coinfident past me would have been attentive enough to be clean of any duplicate sprites, but i guess i had this one. in specific, there was a draft sprite leftover for dspecial.

		[b]notes[/b]
		sorry for the patch drought
		open for inputs!"
		
		
		patch_note_title[i] = "v3.3 - (2024 Aug 19)"
		patch_note_text[i++] = 
		"v3.3 (2024 Aug 19)
		[b]fixes[/b]
		- fixed the issue where n/a slicing the bubble and player at the same time overrides player-hit hitpause and sometimes lets n/a act much quicker than the opponent thats been hit

		[b]notes[/b]
		forgot this in last patch. thankfully it was easy enough
		my personal thanks to the jpeg warrior
		open for inputs!"
		
		
		patch_note_title[i] = "v3.2 - (2024 Aug 14)"
		patch_note_text[i++] = 
		"v3.2 - (2024 Aug 14)
		[b]additions[/b]
		- nothin...sorry

		[b]changes[/b]
		- NSPECIAL vertical jump is much, much lower now. animation timings has been kinda adjusted to fit this.
		- surprise change... jump and doublejump sfx has been re-mixed. i just listened to it now and i felt it was kinda goofy? so i made it a bit more serious, while still being mostly the same.
		- FAIR and JAB swing now has some sound effects mixed in

		[b]fixes[/b]
		- FIXED THE ISSUE WHERE SPECIAL ALT COLOR BUBBLES BROKE PLAYTEST VISUALS, YEA BABEY!!!!!!
		- FIXED THE ISSUE WHERE SPECIAL ALT COLOR BUBBLES WOULD DISPLAY THE PATTERN FOR LIKE 1 FRAME ON SPAWN, YEA BABEY!!!!!!
		- FIXED THE ISSUE WHERE USING N/A DAIR ON ''BIG'' PLAYTEST LIKE ONLINE PLAYTEST CRASHES THE GAME!!!!! YEA BABEY!!!!!!!!!!!
		-- i always thought it had something to do with the collision, but apparently some shovel knight HFX just crashes on spawn.
		-- i just made it spawn a different HFX when in big playtest. not perfect, but it works

		[b]balances[/b]
		-- -- idk
		- DSTRONG ... middle hitbox angle is now 90 (63???????? -> 90)
		- USPECIAL ... dash hitbox location is vertically higher ?? dunno... it behaves weird
		-- -- beneficial
		- DATTACK ... in accordance to the other change in counterplay section, dattack main hit is now larger in body's direction, by like 10 pixels (60 -> 70)
		- JAB ... endlag reduced by 3 frames
		- UAIR ... landinglag value reduced by 3 (10 -> 7)
		- DAIR ... did you know that the endlag on bounce was much faster if you held forward or back? well, i've decided to make it consistent thru all versions. the normal bounce version is now faster by a whole 5 frames!!
		-- -- counterplay
		- UAIR ... main hit (aerial opponent) knockback growth decreased (0.78 -> 0.65)
		- DATTACK ... hitbox creation frame delayed by 2 frames, it now spawns frame 5 (3 -> 5)
		- DAIR ... the massive circular hitbox after bouncing is now smaller by like 12 pixels (116 -> 104)
		- USPECIAL ... the startup right before you do the big recovery dash has been increased by 2 (10 -> 12)
		- pratland duration increased by 2 frames (11 -> 13)

		[b]notes[/b]
		thanks for all the players especially spiderboi for the feedback!
		open for inputs!"
		
		
		patch_note_title[i] = "v3.1b - (2024 Feb 08)"
		patch_note_text[i++] = 
		"v3.1 ~ the hotfix 2 - (2024 Feb 08)
		[b]fixes[/b]
		- fspecial bubble effects for alts doomsday and genesis was broken and i didnt notice... fixed this now

		[b]notes[/b]
		open for inputs!"
		
		
		patch_note_title[i] = "v3.1 - (2024 Feb 05)"
		patch_note_text[i++] = 
		"v3.1 ~ the hotfix - (2024 Feb 05)
		[b]fixes[/b]
		- i reduced laser charge to 3 ticks for showcasing laser change in a video AND I FORGOT TO REVERT IT, fixed this now

		[b]additions[/b]
		- added to playlist changelog cause i forget somtimes

		[b]notes[/b]
		open for inputs!"
		
		
		patch_note_title[i] = "v3.0 - (2024 Feb 05)"
		patch_note_text[i++] = 
		"v3.0 - (2024 Feb 05)
		[b]additions[/b]
		- new alt added: -Save-
		- fullscreen transparent darkness effect on depths behind players/stage ground layer for laser

		[b]notes[/b]
		open for inputs!
		stay tuned.
		sorry for making yall tuned in for so long iknow i have been makign everyone wait on actual n/a patches holy heck"
		
		
		patch_note_title[i] = "v2.9 - (2023 Nov 02)"
		patch_note_text[i++] = 
		"v2.9 - (2023 Nov 02)
		[b]changes[/b]
		- nair animation timings adjusted, windows have not been altered at all

		[b]balances[/b]
		-- -- beneficial
		- ustrong final hit hitbox size has been reverted back, now it can hit standing grounded opponents again. dang this hitbox change was made in v1.9 huh. how long ago was this"
		
		
		patch_note_title[i] = "v2.8 - (2023 Apr 25)"
		patch_note_text[i++] = 
		"v2.8 - (2023 Apr 25)
		[b]additions[/b]
		- new secret alt added. if you're the creator of the color, you've already been informed of its inputs.
		- added po&gumbo food
		- added charselect sound
		- added playtest changelog

		[b]changes[/b]
		- removed blue rimlight from css
		- some alt colors' names have been changed (CRIMSON WINGS -> Angel, CORONATION -> Crown, ASTRAL BIRTH -> Astral Birth)
		- alt colors Angel and Crown has been adjusted, Crown having a slight special treatment

		[b]balances[/b]
		-- -- idk
		- uspecial ending airstall shortened, ends 4 frames earlier
		- ustrong second-to-last-hit base knockback decreased by 1 (5 -> 4)
		-- -- beneficial
		- minimum distance of uspecial have been increased, meaning uncharged uspecial goes a lil further now (10-55 -> 18-55)
		- uspecial maximum charge duration has been decreased by uhh 6 frames (32 -> 26)
		- in addition, uspecial startup has been decreased by 3 frames
		- ustrong knockback growth increased by 0.05 (1.0 -> 1.05) (experimental, might increase more?)
		-- -- counterplay
		- reduced hitstun multiplier for jab. (1 -> 0.85) (experimental)
		- utilt knockback growth reduced by 0.1 (1.2 -> 1.1)
		- utilt endlag increased by 2 frames + whifflag

		[b]notes[/b]
		open for inputs!
		stay tuned."
		
		
		patch_note_title[i] = "v2.7 - (2022 June 13)"
		patch_note_text[i++] = 
		"v2.7 - (2022 June 13)
		[b]changes[/b]
		- doubletap uspecial no longer has pratfall! however, it will put uspecial on cooldown until you land, get hit, or walljump. this... was necessary, for stalling concerns
		- uspecial, when parried, now has reduced amount of horizontal drift speed.

		[b]notes[/b]
		open for inputs! i think?"
		
		
		patch_note_title[i] = "v2.6 - (2022 Apr 05)"
		patch_note_text[i++] = 
		"v2.6 - (2022 Apr 05)
		[b]additions[/b]
		- Genesis alt added.
		- dair can bounce off walls now. BUT don't you worry, it applies the same 'drastically decreases in height every time it bounces in the same airtime' as bouncing on air.

		[b]changes[/b]
		- changed a bit of the dialogue buddy dialogues. (+ 1 new one for Sinker by pisfoolstuffs!)

		[b]fixes[/b]
		- fixed the issue where nspecial, when parried, would apply invincibility to players every time it is parried. it will now only apply once, and only on the first parrier, the same way base game works.

		[b]balances[/b]
		-- -- idk
		- uair main hit's angle adjusted (to 90, directly up)

		[b]notes[/b]
		quick small update for before genesis.
		i've been holding off on updating n/a for too long that i have WAY too many changes to catch up on, and i'm too busy with other things, so sorry for not being able to make any further changes anytime soon
		still open for inputs i guess?"
		
		
		
		//these are optional things that you can change if you'd like, but probably best to keep as-is
		pn__bg_col = make_colour_rgb( 0,0,0 ); //bg color.
		pn__txt_col = make_colour_rgb( 255,255,255 ); //text color.
		pn__acc_col = get_player_hud_color( player ); //accent color.
		pn__btn_txt = "hold TAUNT: changelog"; //button text
		pn__btn_width = 176; //button width in pixels, change it accordingly to text
		pn__guide_txt = "use ATTACK / SPECIAL"; //select list guide text
		pn__swipe_sound = asset_get("mfx_result_expand"); //sound for when changelog is opened/closed with taunt
		pn__move_sound = asset_get("mfx_input_key"); //sound for moving between list entries
		pn__confirm_sound = asset_get("mfx_forward"); //sound for confirming a list entry
		pn__cancel_sound = asset_get("mfx_return_cursor"); //sound for cancelling out of a list entry
		pn__scroll_speed = 3; //the speed of which how fast you scroll up/down in text display
		
		//*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
		//*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
		
		//below are the actual patch note rendering and stuff.
		//if you're not trying to do in-depth stuff, you dont have to touch these
		//these are permanent variables just so we only have to run them once
		//pn__ standing for Patch Note (double underscore cause i dont think anyone would do this, avoiding overlaps)
		pn__init = true;
		pn__list_select = 0;
		pm__list_select_old = pn__list_select; //remember old selection for transition anim direction purposes
		pn__list_max = i-1; //print(string(pn__list_max));
		pn__taunt_track = 0; //after activated, checks if taunt has been unpressed before timer starts counting up again
		pn__taunt_timer = 0; //track how long taunt is being held
		pn__taunt_max = 50; //how long taunt should be held until its open
		pn__open = false; //is it open or not
		pn__opener_timer_max = 30; //opening timer max
		pn__opener_timer = pn__opener_timer_max; //timer for opening
		pn__displaying = false; //is it in the text screen (true) or in the list screen (false)
		pn__scroll = 0; //current amount of scroll
		pn__up_track = 0; //same with taunt track for list selection
		pn__down_track = 0; //yes
		pn__list_old = 0; //list selection storage
		pn__select_timer_max = 16; //selection transition timer max
		pn__select_timer = pn__select_timer_max; //selection transition timer
		pn__scroll_did = 0; //niche storage for if list has scrolled or not
			pn__online = false; //set
		if (room == asset_get("network_char_select") || room == asset_get("workshop_room")){ //if in online playtest, or in extramode workshop list playtest
			//thanks to mr nart for heads up on using asset_get for room id's instead!
			pn__online = true; //switch to online view
		}
		
	}
	if (variable_instance_exists(id,"pn__init")){ //this is very unnecessary i just want to be safe to avoid error log
		//the var's will omit the pn__ prefix because i dont think var's would interfere much with overlaps
		//unless its in the same code, of course
		//
		//notes for self and for others:
		//sprites with origin point at bottom will align with offline playtest screen bottom with
		//clamp( (y + 61), 0, room_height-13 );
		//update: accounting for room top, clamp( (y + 61), 209, room_height-13 );
		//camera reaches the top at y 148, anything higher shifts the camera, so + 61, then 209
		//playtest canvas is w 200 h 162 at 2x scale.
		//css playtest is room 69
		//extramode workshop list playtest is room 72  -  asset_get("workshop_room")
		//online playtest is room 113  -  asset_get("network_char_select")
		
		var bc_x = clamp( x, 100, 860 );//i guess this is the "center", bottom center
		var bc_y = clamp( (y + 61), 209, room_height-13 );//puzzles of math
		var bc_yA = bc_y;//copy to preserve original for use as this one will be changed
		var pn_bg = pn__bg_col; //it was long, will make it short. bg color.
		var pn_txt = pn__txt_col; //text color.
		var pn_acc = pn__acc_col; //text color.
		var pn_i = pn__list_select; //selected entry.
		var btn_wh = pn__btn_width/2; //button width but halved.
		var page_h = 144 //page height
		var pn_alpha = 0.8; //alpha
		var a_str = draw_get_alpha(); //store the original alpha value to get back to once im done rendering, just in case
		
		// !!online values override!! 
		if (pn__online){//create online detection later
			var bc_x = clamp( 120, 100, 860 );//i guess this is the "center", bottom center
			var bc_y = clamp( (y + 111), 255, room_height-13 );
			var bc_yA = bc_y;
			var page_h = 190; //page height
		}
		var extendem = (pn__online)?260:0;
		
		//player freezer i hope
		if (pn__open){ //(if open)
			state = PS_SPAWN;
			state_timer = 89;
			hitpause = true; hitstop = 2; hitstop_full = 2;
		}
		//offset
		if (pn__opener_timer<pn__opener_timer_max){
			pn__opener_timer++;
		}
		if (pn__select_timer<pn__select_timer_max){
			pn__select_timer++;
		}
		if (pn__open){ //(if opened)
			var bc_yA = ease_expoOut( bc_yA-40, bc_y-page_h, pn__opener_timer, pn__opener_timer_max )
		}else{ //(if closed)
			var bc_yA = ease_expoOut( bc_y+40-page_h, bc_yA, pn__opener_timer, pn__opener_timer_max )
		}
		
		//draw time
		
		draw_set_alpha(pn_alpha);
		//bottom to top
		var btn_wh_tmp = btn_wh+6;
		draw_rectangle_colour( bc_x-btn_wh_tmp, bc_yA-1, bc_x+(btn_wh_tmp-1), bc_yA, pn_bg,pn_bg,pn_bg,pn_bg, false );
		var btn_wh_tmp = btn_wh+2;
		draw_rectangle_colour( bc_x-btn_wh_tmp, bc_yA-3, bc_x+(btn_wh_tmp-1), bc_yA-2, pn_bg,pn_bg,pn_bg,pn_bg, false );
		draw_rectangle_colour( bc_x-btn_wh, bc_yA-13, bc_x+(btn_wh-1), bc_yA-4, pn_bg,pn_bg,pn_bg,pn_bg, false );
		var btn_wh_tmp = btn_wh-2;
		draw_rectangle_colour( bc_x-btn_wh_tmp, bc_yA-15, bc_x+(btn_wh_tmp-1), bc_yA-14, pn_bg,pn_bg,pn_bg,pn_bg, false );
		
		//this is like the page
		draw_rectangle_colour( bc_x-100-(20*sign(extendem)), bc_yA+1, bc_x+99+extendem, bc_y+2, pn_bg,pn_bg,pn_bg,pn_bg, false );
		draw_set_alpha(1);
		
		//button text button
		draw_set_halign(fa_center); draw_set_valign(fa_bottom);
		draw_set_font(asset_get("tinyFont"));
		draw_text_ext_transformed_colour(bc_x+1, bc_yA-11, pn__btn_txt, 1, 800, 2, 2, 0, pn_txt, pn_txt, pn_txt, pn_txt, 1-(pn__open/2));
		
		//accent line
		draw_set_alpha(0.6);
		draw_rectangle_colour( bc_x-96-(20*sign(extendem)), bc_yA+5, bc_x+95+extendem, bc_yA+6, pn_acc,pn_acc,pn_acc,pn_acc, false );
		draw_set_alpha(1);
		
		//txt alpha
		if (pn__open){ //(if opened)
			var txt_a = ease_expoOut( 0, 1, pn__opener_timer, pn__opener_timer_max )
		}else{ //(if closed)
			var txt_a = ease_expoOut( 1, 0, pn__opener_timer, pn__opener_timer_max )
		}
		
		
		if (pn__open){ //(if open)
		
		//the main page contents
		
		//list page
		if (pn__displaying == false){
			
			//guide text
			draw_set_valign(fa_top);
			draw_text_ext_transformed_colour(bc_x+1, bc_yA+9, pn__guide_txt, 1, 800, 2, 2, 0, pn_txt, pn_txt, pn_txt, pn_txt, 1-(pn__open/2));
			//txt set
			draw_set_halign(fa_left); draw_set_valign(fa_top);
			draw_set_font(asset_get("fName"));
			
				//tthe lerp for l_off (list offset)
					var l_off_x = ease_cubeOut( -4, 2, pn__select_timer, pn__select_timer_max )
				if (pn__list_old == "up"){ //prev input is up
					var l_off_y = ease_cubeOut( 4, 0, pn__select_timer, pn__select_timer_max )
				}
				if (pn__list_old == "down"){ //prev input is down
					var l_off_y = ease_cubeOut( -4, 0, pn__select_timer, pn__select_timer_max )
				}
			
			
			//time to draw the list page
			if (pn__open){//scroll stuff n select stuff
				if (up_down){
					if (pn__up_track==false){
						pm__list_select_old = pn__list_select;  pn__list_select--;
						if (pn__list_select<0){pn__list_select = pn__list_max;}
						pn__up_track = true;
						pn__select_timer = 0;
						pn__list_old = "up"
						sound_play(pn__move_sound);
						pn__scroll_did = 0;
					}
				}else{ pn__up_track = false; };
				if (down_down){
					if (pn__down_track==false){
						pm__list_select_old = pn__list_select;  pn__list_select++;
						if (pn__list_select>pn__list_max){pn__list_select = 0;}
						pn__down_track = true;
						pn__select_timer = 0;
						pn__list_old = "down"
						sound_play(pn__move_sound);
						pn__scroll_did = 0;
					}
				}else{ pn__down_track = false; };
				
				//list scroll stuff
				if ( ((pn_i*22)+26)+pn__scroll > page_h-20 ){//horrible puzzle of maths
					//print("true, down")
					pn__scroll = clamp( (pn_i*-22)+81, -9000, 0 );
					if (pn__online){ pn__scroll = clamp( (pn_i*-22)+132, -9000, 0 ); }
					pn__scroll_did = 2;
				}
				if ( ((pn_i*22)+26)+pn__scroll < 26 ){
					//print("true, up")
					pn__scroll = clamp( (pn_i*-22)+6, -9000, 0 );
					pn__scroll_did = 2;
				}
				//print(string(pn__scroll))
				
				if (attack_down){
					pn__displaying = true;
					pn__scroll = 0;
					sound_play(pn__confirm_sound);
				}
			}
			for (var t = 0; t <= pn__list_max; t += 1){
				var x_off = (t==pn_i)?8+l_off_x:0;
				var y_off = (t==pn_i)?(t*22)+l_off_y:t*22;
				var y_loc = 26+pn__scroll-(l_off_y*pn__scroll_did);
				if (t==pn_i){
					var x_t_p = bc_x+l_off_x-89; //x triangle point
					var y_t_p = bc_yA+y_off+y_loc+5; //y triangle point
					draw_rectangle_colour( (x_t_p-1),   y_t_p,   (x_t_p),   y_t_p+1, pn_acc,pn_acc,pn_acc,pn_acc, false );
					draw_rectangle_colour( (x_t_p-1)-2, y_t_p-2, (x_t_p)-2, y_t_p+3, pn_acc,pn_acc,pn_acc,pn_acc, false );
					draw_rectangle_colour( (x_t_p-1)-4, y_t_p-4, (x_t_p)-4, y_t_p+5, pn_acc,pn_acc,pn_acc,pn_acc, false );
				};
				//title text!
				draw_text_ext_transformed_colour(bc_x-92+x_off, bc_yA+y_off+y_loc, patch_note_title[t], 16, -1, 1, 1, 0, pn_txt,pn_txt,pn_txt,pn_txt, txt_a);
				//divider line
				var c_tmp = (t==pn_i)?pn_acc:pn_txt;//color temp
				draw_set_alpha((t==pn_i)?1:0.3);
				draw_rectangle_colour( bc_x-96, bc_yA+y_off+y_loc+13, bc_x+95, bc_yA+y_off+y_loc+14, c_tmp,c_tmp,c_tmp,c_tmp, false );
				draw_set_alpha(1);
			}
			
		}
		if (pn__displaying == true){
		
		//txt set
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_set_font(asset_get("fName"));
		
		//time to draw changelog!!
		
		//text render is here!
		if (pn__open){//scroll stuff
			var scroll_max = ( string_height_ext(patch_note_text[pn_i], 16+(4*sign(extendem)), 190+extendem)-113 )*-1//thanks vman for finding this function
			if (up_down){ pn__scroll+=pn__scroll_speed * (shield_down+1); } //hold shield to scroll faster
			if (down_down){ pn__scroll-=pn__scroll_speed * (shield_down+1); }
			pn__scroll = clamp( pn__scroll, scroll_max, 0 );
			if (special_down){
				pn__displaying = false;
				pn__scroll = false;
				sound_play(pn__cancel_sound);
			}
		}
		draw_text_ext_transformed_colour(bc_x-96, bc_yA+pn__scroll+12, patch_note_text[pn_i], 16+(4*sign(extendem)), 190+extendem, 1, 1, 0, pn_txt, pn_txt, pn_txt, pn_txt, txt_a);
		
		}//changelog over (if pn__displaying == true)
		}//open check over
		
		//taunt hold meter
		if (pn__taunt_timer>0){
			var w_pr = ease_cubeIn( 2, pn__btn_width-2, round(pn__taunt_timer), pn__taunt_max );
			draw_rectangle_colour( bc_x-btn_wh, bc_yA-1, (bc_x-btn_wh)+w_pr, bc_yA, pn_acc,pn_acc,pn_acc,pn_acc, false );
			draw_set_alpha(1);
		}
		
		//checks for taunt being held, or if it's in list view and special is being held
		if (taunt_down || (pn__open && special_down && pn__displaying == false)){
			if (pn__taunt_track == false){
				pn__taunt_timer++;
				if (pn__open){ pn__taunt_timer+=0.5; } //1.5x the speed when the panel is already open
				if (pn__taunt_timer > pn__taunt_max){
					pn__open = !pn__open; //this toggles it hopefully
					pn__taunt_track = true;
					pn__taunt_timer = 0;
					pn__opener_timer = 0;
					sound_play(pn__swipe_sound);
				}
			}
		}else{pn__taunt_track = false; pn__taunt_timer = 0; };
		
		//change it back
		draw_set_alpha(a_str); draw_set_valign(fa_top); draw_set_halign(fa_center);
	}
	
	
}//testplay check over










//if (hsp!=0 && vsp==0|| hsp==0 && vsp!=0 || hsp!=0 && vsp!=0){
/*
var na_sp_i = asset_get("empty_sprite");
na_sp_i[sprite_get("idle")] = sprite_get("idle_eye");
na_sp_i[sprite_get("dash")] = sprite_get("dash_eye");
na_sp_i[sprite_get("dashstart")] = sprite_get("dashstart_eye");
na_sp_i[sprite_get("dashstop")] = sprite_get("dashstop_eye");
na_sp_i[sprite_get("doublejump")] = sprite_get("doublejump_eye");
na_sp_i[sprite_get("jump")] = sprite_get("jump_eye");
na_sp_i[sprite_get("jumpstart")] = sprite_get("jumpstart_eye");
na_sp_i[sprite_get("land")] = sprite_get("land_eye");


draw_sprite_ext( na_sp_i[sprite_index], image_index, x-round((hsp/2)/2), y-round((hsp/2)/2), spr_dir, 1, 0, c_white, 1 );
draw_sprite_ext( na_sp_i[sprite_index], image_index, x-round(hsp/2), y-round(vsp/2), spr_dir, 1, 0, c_white, 0.95 );
draw_sprite_ext( na_sp_i[sprite_index], image_index, x-round((hsp/2)+((hsp/2)/2)), y-round((vsp/2)+((vsp/2)/2)), spr_dir, 1, 0, c_white, 0.8 );
draw_sprite_ext( na_sp_i[sprite_index], image_index, x-round(hsp), y-round(vsp), spr_dir, 1, 0, c_white, 0.7 );

var goin_h=x-hsp;
var goin_v=y-vsp;

draw_sprite_ext( na_sp_i[sprite_index], image_index, goin_h-round(na_hsp_h[0]), goin_v-round(na_vsp_h[0]), spr_dir, 1, 0, c_white, 0.5 );
goin_h-=na_hsp_h[0];
goin_v-=na_vsp_h[0];
draw_sprite_ext( na_sp_i[sprite_index], image_index, goin_h-round(na_hsp_h[1]), goin_v-round(na_vsp_h[1]), spr_dir, 1, 0, c_white, 0.2 );
goin_h-=na_hsp_h[1];
goin_v-=na_vsp_h[1];
draw_sprite_ext( na_sp_i[sprite_index], image_index, goin_h-round(na_hsp_h[2]), goin_v-round(na_vsp_h[2]), spr_dir, 1, 0, c_white, 0.05 );
	
draw_debug_text( x, y+20, "waddup");
*/
//}




