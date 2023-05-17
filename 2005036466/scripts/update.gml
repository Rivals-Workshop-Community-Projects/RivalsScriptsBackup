var spr;
if wearing_hat == 1 {
	if state != PS_SPAWN && state != PS_RESPAWN && state != PS_IDLE {
		wearing_hat = -1;
		var newfx = spawn_hit_fx(x, y, fx_sprites[1]);
		newfx.depth = depth-1;
	}
} else if wearing_hat == -1 {
	if state == PS_RESPAWN or state == PS_SPAWN {
	wearing_hat = 1;
	}
}

col_penc4 = make_color_rgb(255, col_oth, col_oth);

if spr_dir == 1{
	if left_down{
		backwards_held = true;
		forwards_held = false;
	}
	if right_down{
		backwards_held = false;
		forwards_held = true;
	}
}
if spr_dir == -1{
	if left_down{
		backwards_held = false;
		forwards_held = true;
	}
	if right_down{
		backwards_held = true;
		forwards_held = false;
	}
}

if !left_down and !right_down{
	backwards_held = false;
	forwards_held = false;
}

if !opponent_strapped{
	pen_mine_unstable = false;
}

// Funny
if opponent_strapped{
	if mine_active == 0 and move_cooldown[AT_DSPECIAL] != 360{
		move_cooldown[AT_DSPECIAL] = 360;
	}
	if mine_active == 1 and move_cooldown[AT_DSPECIAL] != 0{
		move_cooldown[AT_DSPECIAL] = 0;
	}
}

if state != PS_PRATLAND{
	prat_land_time = 10;
}

switch(state){
	case PS_WALL_JUMP:
	case PS_LAND:
	case PS_LANDING_LAG:
	case PS_PRATLAND:
	case PS_WAVELAND:
		penny_dair_used = 0;
		move_cooldown[AT_USPECIAL] = 0;
		sound_stop(asset_get("sfx_absa_jabloop"))
		break;
	case PS_ATTACK_GROUND:
		switch(attack){
			case AT_DSPECIAL:
				if window == 2 and window_timer == 1 and !hitpause{
					destroy_hitboxes();
				}
				break;
			case AT_TAUNT_2:
				switch(window){
					case 2:
						if taunt_pressed or attack_pressed or special_pressed or shield_pressed{
							window = 5;
							window_timer = 0;
						}
						if forwards_held{
							window = 4;
							window_timer = 0;
						}
						switch(spr_dir){
							case -1:
								if right_pressed{
									spr_dir *= -1;
									window = 3;
									window_timer = 0;
								}
								break;
							case 1:
								if left_pressed{
									spr_dir *= -1;
									window = 3;
									window_timer = 0;
								}
								break;
						}
						break;
					case 3:
						if ((window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH) - 1) and !hitpause){
							//spr_dir *= -1;
							window = 2;
							window_timer = 0;
						}
						break;
					case 4:
						hsp = 1 *spr_dir;
						if backwards_held{
							spr_dir *= -1;
							window = 3;
							window_timer = 0;
						}
						if !forwards_held{
							window = 2;
							window_timer = 0;
						}
						break;
				}
				break;
		}
		break;
}

if (state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND){
	if attack != AT_FTILT{
		penny_ftilt_two = false;
	}
}

#region	// Mine Code
with oPlayer{
	if id != other.id{
		if pen_can_det > 0{
			if !hitpause{
				pen_can_det--;
			}
		} else {
			pen_can_det = 0;
			if strapped_id == other.id and strapped_id.mine_active == 1 and strapped_id.goboom == false{
				if (state != PS_TUMBLE and state_cat == SC_HITSTUN) or (state == PS_TUMBLE and state_timer <= 12){
					penny_mine_indi = 1;
					if strapped_id.pen_mine_indi_sound == false{
						sound_play(asset_get("mfx_star"))
						strapped_id.pen_mine_indi_sound = true;
					}
				} else {
					penny_mine_indi = 0;
					if strapped_id.pen_mine_indi_sound == true{
						sound_play(asset_get("mfx_unstar"))
						strapped_id.pen_mine_indi_sound = false;
					}
				}
			}
		}
		
		if state == PS_DEAD or state == PS_RESPAWN or state == PS_SPAWN{
			outline_color = [0, 0, 0];
			init_shader();
		}
		
		if penny_is_charged{
			// If you're charged, check your state to make sure you're not dead.
			if state == PS_DEAD or state == PS_RESPAWN or state == PS_SPAWN{
				outline_color = [0, 0, 0]
				init_shader();
				penny_is_charged = false;
				penny_charged_id = noone;
				penny_charge_sound = false;
			} else {
				// Check to see if your timer is ready
				if penny_charge_timer < penny_charge_time_max{
					// Change your color
					outline_color = [penny_charged_id.penny_charge_r, penny_charged_id.penny_charge_g, penny_charged_id.penny_charge_b];
					init_shader();
					
					if state_cat != SC_HITSTUN and !hitpause{
						// increase the timer
						penny_charge_timer++;
					}
					
					// Check if the timer is below max to play a thing.
					if penny_charge_timer == penny_charge_time_max - 1 and !penny_charge_sound{
						// Play Sound
						sound_play(asset_get("sfx_clairen_sword_deactivate"));
						penny_charge_sound = true;
					}
				} else {
					// Change it back
					outline_color = [0, 0, 0]
					init_shader();
					penny_charge_timer = 0;
					penny_is_charged = false;
					penny_charge_sound = false;
				}
			}
		}
		
		if penny_strapped{
			strapped_id.opponentx = x;
			strapped_id.opponenty = y;
			
			if penny_is_charged{
				outline_color = [penny_charged_id.penny_charge_r, penny_charged_id.penny_charge_g, penny_charged_id.penny_charge_b];
				init_shader();
				penny_is_charged = false;
				strapped_id.pen_mine_unstable = true;
				strapped_id.opponent_strapped = true;
			}
			if strapped_id.pen_mine_unstable{
				outline_color = [strapped_id.penny_charge_r, strapped_id.penny_charge_g, strapped_id.penny_charge_b];
				init_shader();
			}
			
			if state == PS_DEAD or state == PS_RESPAWN or state == PS_SPAWN{
				outline_color = [0, 0, 0];
				init_shader();
				strapped_id.goboom = false;
				penny_strapped = false;
				strapped_id.pen_mine_unstable = false;
				strapped_id.opponent_strapped = false;
				strapped_id.mine_active = 0;
				strapped_id = noone;
			}
		}
	}
}

if goboom{
	if boomtimer == boommax - 1{
		sound_play(c4beepsound);
	}
	if (boomtimer < 32 and boomtimer > 16){
		col_oth -= 16;
	}
	if boomtimer != 0{
		mineblinktimer = get_gameplay_time() *.4;
		boomtimer--;
	} else {
		if boomstuff{
			boomstuff = false;
			if !pen_mine_unstable{
				sound_play(asset_get("sfx_ell_explosion_medium"));
				spawn_hit_fx(opponentx, opponenty, 143);
				create_hitbox(AT_DSPECIAL_2, 1, opponentx, opponenty);
			} else {
				// Hitbox
				sound_play(asset_get("sfx_ell_dspecial_explosion_3"));
				spawn_hit_fx(opponentx, opponenty, vfx_dspecchargeexp);
				create_hitbox(AT_DSPECIAL_2, 2, opponentx, opponenty);
				
				pen_mine_unstable = false;
			}
		}
		with (mine_player){
			if strapped_id == other.id{
				penny_mine_indi = 0;
				penny_strapped = false;
				outline_color = [0, 0, 0];
				strapped_id = noone;
				init_shader();
			}
		}
		col_oth = 255;
		mine_active = 0;
		opponent_strapped = false;
		boomtimer = boommax;
		goboom = false;
		pen_mine_indi_sound = false;
		strapped_id = noone;
		mine_player = noone;
	}
}

if cooldown_mine > 0 and opponent_strapped{
	cooldown_mine--;
}
if cooldown_mine == 1 and opponent_strapped{
	sound_play(asset_get("mfx_xp"));
}
if cooldown_mine == 0 and !goboom{
	boomstuff = true;
	cooldown_mine = 0;
	move_cooldown[AT_DSPECIAL_2] = 0;
	mineblinktimer = get_gameplay_time() *.1;
	mine_active = 1;
}
#endregion

#region // Grab Code
if (grabbedid != noone && !hit_player_obj.clone) {
	grabbedid.ungrab++;
	if (grabbedid.ungrab == 120) {
		grabbedid.state = PS_TUMBLE;
		grabbedid.ungrab = 0;
		grabbedid.invincible = false;
		grabbedid = noone;
	}
}
#endregion

#region	// Particles
if (ds_list_size(penny_particles) > 0){
	p_process();
}
if penny_install{
	switch(get_player_color(player)){
		case 10:
			spr = sprite_get("vaporwave_particle");
			break;
		default:
			spr = sprite_get("test_particle");
			break;
	}
	if get_gameplay_time() % 10 == 0{
		createParticle(1,48,64,spr,x,y-32,-hsp/5,-vsp/5,0,0,2,-0.1,50,true);
	}
}
#endregion

muno_interacts();

// Poyo Functionality goes here
//We forgot kirby functionality, fight me.

#define p_process()
//process particles. everything here should be self explanatory.
var i = 0;
repeat (ds_list_size(penny_particles)) {
    var ap = penny_particles[| i];
    if (ap.sprite != -1) {
        ap.alpha += ap.alpha_rate;
        ap.timer++;
        ap.x += ap.hsp;
        ap.y += ap.vsp;
        ap.hsp += ap.hAccel;
        ap.vsp += ap.vAccel;
        if (ap.alpha < 0 || ap.timer > ap.lifetime) {
            ds_list_delete(penny_particles,i);
            continue;
        }
        i++;
    }
}

#define createParticle(amt,xvar,yvar,sprite,x,y,hsp,vsp,hAccel,vAccel,alpha,alpha_rate,lifetime,uses_shader)
var ind = 0;
repeat(amt) {
    var newParticle = {
        sprite: sprite,     //sprite
        x: (x+random_func((ind++)%25,xvar,true)-floor(xvar/2))&~1,      //x
        y: (y+random_func((ind++)%25,yvar,true)-floor(yvar/2))&~1,      //y
        hsp: hsp,      //hsp
        vsp: vsp,      //vsp
        hAccel: hAccel,      //hAccel
        vAccel: vAccel,      //vAccel
        alpha: alpha,      //alpha
        alpha_rate: alpha_rate,      //alpha rate
        timer: 0,      //particle timer
        lifetime: lifetime,       //particle lifetime
        shader: uses_shader
        };
    ds_list_add(penny_particles,newParticle);
}

#define muno_interacts

// Trummel and Alto Codec goes here
if trummelcodecneeded {
	if codec_active < 4{
	    trummelcodec = 17;
	    trummelcodecmax = 24;
	    trummelcodecsprite1 = sprite_get("empty_sprite");
	    trummelcodecsprite2 = sprite_get("empty_sprite");
	    page = 0;

	    //Page 0
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "how come they can talk";
	    trummelcodecline[page,2] = "but we cant";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 1
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 2;

	    trummelcodecline[page,1] = "Probably because they ";
	    trummelcodecline[page,2] = "have a microphone.";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 2
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "We can always use";
	    trummelcodecline[page,2] = "#voice-chat-general.";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 3
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "nah";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "who is that dog anyways";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 4
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 1;

	    trummelcodecline[page,1] = "That would be Penny";
	    trummelcodecline[page,2] = "Shiba. She often goes";
	    trummelcodecline[page,3] = "by Patches-";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 5
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "due to her...";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 6
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 5;

	    trummelcodecline[page,1] = "Injuries.";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 7
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "She used to work under";
	    trummelcodecline[page,2] = "Emperor Loxodont, serving";
	    trummelcodecline[page,3] = "in the police force of";
	    trummelcodecline[page,4] = "Neo Fire Capital.";
	    page++;

	    //Page 8
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 5;

	    trummelcodecline[page,1] = "After leaving her station,";
	    trummelcodecline[page,2] = "an explosion erupted.";
	    trummelcodecline[page,3] = "She ran back in to save";
	    trummelcodecline[page,4] = "her allies, but was too late.";
	    page++;

	    //Page 9
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 5;

	    trummelcodecline[page,1] = "After she recovered...";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "She was treated like a";
	    trummelcodecline[page,4] = "weapon for Loxodont..";
	    page++;

	    //Page 10
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 5;

	    trummelcodecline[page,1] = "So, with her faith in";
	    trummelcodecline[page,2] = "Loxodont lost... She";
	    trummelcodecline[page,3] = "and her friend, Forza,";
	    trummelcodecline[page,4] = "made a break for it.";
	    page++;

	    //Page 11
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 4;

	    trummelcodecline[page,1] = "Now they work as";
	    trummelcodecline[page,2] = "bounty hunters.";
	    trummelcodecline[page,3] = "Sometimes acting as";
	    trummelcodecline[page,4] = "for the small rebellion.";
	    page++;

	    //Page 12
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "does her metal arm help";
	    trummelcodecline[page,2] = "her in combat";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "like light punch";
	    page++;

	    //Page 13
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 1;

	    trummelcodecline[page,1] = "Actually, it can build a";
	    trummelcodecline[page,2] = "kinetic charge and fire it";
	    trummelcodecline[page,3] = "off in contained bursts";
	    trummelcodecline[page,4] = "of energy.";
	    page++;

	    //Page 14
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "medium punch";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 15
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "She can also use it to";
	    trummelcodecline[page,2] = "pack a powerful blast";
	    trummelcodecline[page,3] = "Not to mention her useful";
	    trummelcodecline[page,4] = "gadgets at her disposal.";
	    page++;

	    //Page 16
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "light kick";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 17
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 4;

	    trummelcodecline[page,1] = "Trummel...";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 18
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "heavy punch";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 19
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 4;

	    trummelcodecline[page,1] = "TRUMMEL!";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 20
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "...";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 21
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 4;

	    trummelcodecline[page,1] = "...";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 22
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "...";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 23
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 1;

	    trummelcodecline[page,1] = "Oh thank goodness-";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 24
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "hold diagonal whichever";
	    trummelcodecline[page,2] = "way you are heckin going";
	    trummelcodecline[page,3] = "you only hit X hecking up";
	    trummelcodecline[page,4] = "hecking heavy kick you cant do it on the ground motherhecker that crap dont work lets start the motherhecker off right ah ahhh ohh ohhh drop that crap wait do it motherhecker ohhh ohh ohhh hows it taste keep the rhythm up if you heck up the rhythm the motherheckin combo will drop motherhecker keep that mother heckin crap up";
	    page++;
	} else if codec_active == 4 {
		  trummelcodec = 17;
	    trummelcodecmax = 14;
	    trummelcodecsprite1 = sprite_get("empty_sprite");
	    trummelcodecsprite2 = sprite_get("empty_sprite");
	    page = 0;

	    //Page 0
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "alto";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "i want to have a voice";
	    page++;

	    //Page 1
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 2;

	    trummelcodecline[page,1] = "Trummel, we don't have";
	    trummelcodecline[page,2] = "the funding for that.";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 2
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "Besides, it would be";
	    trummelcodecline[page,2] = "kind of weird for us";
	    trummelcodecline[page,3] = "to suddenly start";
	    trummelcodecline[page,4] = "talking.";
	    page++;

	    //Page 3
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "...";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 4
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "Trummel?";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 5
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "...";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 6
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 2;

	    trummelcodecline[page,1] = "Earth to Trum.";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 7
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "...";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 8
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 5;

	    trummelcodecline[page,1] = "almost done";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 9
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 1;

	    trummelcodecline[page,1] = "Almost done doing";
	    trummelcodecline[page,2] = "what?";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 10
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 5;

	    trummelcodecline[page,1] = "i figured out a way";
	    trummelcodecline[page,2] = "to let us speak";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 11
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 5;

	    trummelcodecline[page,1] = "TRUMMEL NO!";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 12
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "woag";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 13
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "see? it worked.";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 14
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 5;

	    trummelcodecline[page,1] = "*sigh*";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "scared me for";
	    trummelcodecline[page,4] = "a second there.";
	    page++;

		if (trummelcodec_id.codecindex == 3 or trummelcodec_id.codecindex == 5 or trummelcodec_id.codecindex == 7 or trummelcodec_id.codecindex == 10){
			if trummelcodec_id.codectimer2 <= 1 && trummelcodec_id.currentcodecline == 1{
				sound_play(sound_get("sfx_typing"));
			}
		}
		if (trummelcodec_id.codecindex == 4 or trummelcodec_id.codecindex == 6 or trummelcodec_id.codecindex == 8 or trummelcodec_id.codecindex == 11){
			if trummelcodec_id.codectimer2 <= 1 && trummelcodec_id.currentcodecline == 1{
				sound_stop(sound_get("sfx_typing"));
			}
		}
		if trummelcodec_id.codecindex == 12{
			if trummelcodec_id.codectimer2 <= 1 && trummelcodec_id.currentcodecline == 1{
				sound_play(sound_get("sfx_hahawoag"));
			}
		}
		if trummelcodec_id.codecindex == 13{
			if trummelcodec_id.codectimer2 <= 1 && trummelcodec_id.currentcodecline == 1{
				sound_play(sound_get("laugh_track"));
			}
		}

	}
}

// Otto Functionality
var do_otto_interaction = false; //sets a variable that can be accessed from inside the with statement

with(asset_get("oPlayer")){
    if ("i_am_otto_the_billiard_biker" in self && bobble_id == other.id && bike){ //bike is the variable for if otto is on his bike
        do_otto_interaction = true;
    }
}