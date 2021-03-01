//update

//practice test from otto
if (get_training_cpu_action() != CPU_FIGHT && !playtest && !("is_ai" in self)) {
	practice = true;
}

/*if(state_cat == SC_AIR_NEUTRAL&&glide_energy>0&&!glided){
    if((jump_pressed&&down_down)||(jump_down&&vsp>=0)){
        if((state!=PS_FIRST_JUMP||state_timer>5)){
            if(state==PS_DOUBLE_JUMP&&state_timer<1){
                hsp=stored_glide_hsp;
                vsp=stored_glide_vsp;
                djumps=0;
            }
            set_state(PS_ATTACK_AIR);
            attack=AT_EXTRA_1;
            window=1;
            window_timer=0;
            if(jump_pressed){
                clear_button_buffer(PC_JUMP_PRESSED);
            }
        }
    }
}//*/

if(state==PS_DOUBLE_JUMP&&state_timer<1){
    stored_glide_hsp=previous_hsp;
    stored_glide_vsp=previous_vsp;
}

if(state == PS_LANDING_LAG && attack == AT_EXTRA_1){
	if(abs(hsp)>5){
		set_attack_value(AT_FSPECIAL, AG_CATEGORY, 0);
		reset_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS);
		attack = AT_FSPECIAL;
		state = PS_ATTACK_GROUND;
		hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
		window = 3;
		window_timer = 0;
		fspecial_slide_noise = sound_play(asset_get("sfx_waveland_wra"));
		spr_dir = sign(hsp) + (spr_dir * (hsp == 0));
		spr_angle = 0;
	}
}

if(state == PS_ATTACK_AIR && attack == AT_EXTRA_1){
	from_glide = true;
} else {
	from_glide = false;
}

//var currently_gliding = state == PS_ATTACK_AIR && (attack == AT_EXTRA_1 || ((attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) && window == 1));

/*with obj_article3 {
	if player_id.url == other.url {
		if abs(y - (other.y-24)) < 20 && state == 1 {
			other.hsp += other.wind_accel * sign(spr_dir) * (1 + currently_gliding);
		}
	}
}//*/

if state == PS_ATTACK_AIR && ((attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG) && window == 2) && strong_emp {
	attack += 13;
	window_timer = 3;
    hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
    spr_angle = 0;
}

if !(state == PS_ATTACK_AIR && ((attack == AT_FSTRONG_2 || attack == AT_DSTRONG_2 || attack == AT_USTRONG_2) && window == 3)) {
	with oPlayer {
		if id != other {
	        if grabbed_by_zeph && grabbed_by_zeph_id == other {
	            grabbed_by_zeph = false;
	            grabbed_by_zeph_id = noone;
	        }
		}
    }
}

previous_hsp=hsp;
previous_vsp=vsp;

if(has_hit){
	if(glide_energy_restore==0){
		glide_energy_restore=1;
	}
} else {
	glide_energy_restore=0;
}
if(glide_energy_restore==1||!free){
	glide_energy=glide_energy_max;
	glide_energy_restore=2;
	glided=false;
}
if(state==PS_WALL_JUMP){
    glide_energy=glide_energy_max;//max(glide_energy,glide_energy_max/2);
    glided=false;
    
}

//refreshing resources
if(!free||state==PS_RESPAWN||state_cat==SC_HITSTUN||state==PS_WALL_JUMP){
    move_cooldown[AT_USPECIAL]=0;
    move_cooldown[AT_FSPECIAL]=0;
    can_fstrong = true;
	can_ustrong_air = true;
}

/*if( (state==PS_ATTACK_AIR || state==PS_ATTACK_GROUND) && attack==AT_EXTRA_1 && !free){
	if ( abs(hsp) >= abs(vsp) ){
		
	} else {
		state = PS_LANDING_LAG;
	}
}//*/

for(var i=previous_pos_count-2;i>=0;i--){
    previous_x[i+1]=previous_x[i];
    previous_y[i+1]=previous_y[i];
}

//guide stuff
if(state!=PS_ATTACK_GROUND||attack!=AT_TAUNT){
	taunt_infinite=false;
	taunt_infinite_fake=false;
}

if(taunt_infinite&&!guide_active){
	guide_active=true;
	guide_state=0;
	guide_timer=0;
	guide_menu_state=0;
	guide_menu_timer=0;
	guide_menu_alpha=0;
	guide_menu_selected=0;
	guide_menu_hold_delay=0;
	reset_text();
	guide_textbox=0;
	sound_play(asset_get("sfx_swipe_medium1"));
	hsp=0;
}
if(!taunt_infinite){
	guide_active=false;
	guide_head_active=false;
}

if(guide_active){
	if(taunt_pressed&&!special_pressed){
		taunt_infinite=false;
		sound_play(asset_get("mfx_return_cursor"));
	}
	switch guide_state {
		case 0: 
			guide_frame=floor(guide_timer*3/18);
			if(guide_timer>18) guide_state=1; 
		break;
		case 1: 
			guide_frame=3;
			if(attack_pressed){
				guide_state=2; 
				guide_timer=0;
				//sound_play(asset_get("sfx_blow_medium2"));
			} 
			if(special_pressed){
				taunt_infinite=false;
				clear_button_buffer(PC_SPECIAL_PRESSED);
				sound_play(asset_get("mfx_return_cursor"));
			}
		break;
		case 2: 
			guide_frame=3;
			if(guide_timer>7){ 
				guide_state=3; 
				guide_timer=0; 
			}
		break;
		case 3: 
			if(guide_timer==6){
				sound_play(asset_get("sfx_blow_medium2"));
			}
			guide_frame=floor(guide_timer*2/12)+4;
			if(guide_timer>12){ 
				guide_state=4;
				guide_menu_state=1;
				guide_menu_timer=0;
			} 
		break;
		case 4: 
			guide_frame=6;
			//if(guide_timer>12) guide_state=3; 
		break;
	}
	switch guide_menu_state {
		case 0://empty
			
		break;
		case 1://coming in
			guide_menu_alpha=guide_menu_timer*0.7/10;
			if(guide_menu_timer>10){
				guide_menu_state=2;
				guide_menu_timer=0;
			}
		break;
		case 2://base menu start
			determine_text();
			var effectivetimer = guide_menu_timer/1.5;
			for(var i=0; i<16; i++){
				if(effectivetimer>0){
					guide_writetext[i]=string_copy(guide_readtext[i],0,floor(effectivetimer));
				}
				effectivetimer-=string_length(guide_readtext[i]);
			}
			if(guide_menu_timer%6==0){
				sound_play(asset_get("mfx_coin"));
			}
			if(effectivetimer>0){
				guide_menu_state=3;
				guide_menu_timer=0;
				//guide_head_talking=false;
			}
			if(attack_pressed||special_pressed){
				clear_button_buffer(PC_ATTACK_PRESSED);
				clear_button_buffer(PC_SPECIAL_PRESSED);
				guide_menu_timer=99999;
				sound_play(asset_get("mfx_coin"));
			}
		break;
		case 3://menu
			var selections=6;
			if(up_down){
				if(up_pressed){
					clear_button_buffer(PC_UP_HARD_PRESSED);
					guide_menu_selected--;
					if(guide_menu_selected==-1){
						//guide_menu_selected+=selections;
						guide_menu_selected=selections+2;
					} else if(guide_menu_selected==selections+1){
						guide_menu_selected=selections-2;
					} else {
						guide_menu_selected=guide_menu_selected%selections;
					}
					sound_play(asset_get("mfx_move_cursor"));
				}
				guide_menu_hold_delay++;
				if(guide_menu_hold_delay>18){
					guide_menu_hold_delay2++;
					if(guide_menu_hold_delay2>=6){
						guide_menu_hold_delay2=0;
						guide_menu_selected--;
						if(guide_menu_selected==-1){
							//guide_menu_selected+=selections;
							guide_menu_selected=selections+2;
						} else if(guide_menu_selected==selections+1){
							guide_menu_selected=selections-2;
						} else {
							guide_menu_selected=guide_menu_selected%selections;
						}
						sound_play(asset_get("mfx_move_cursor"));
					}
				}
				//sound_play(asset_get("mfx_move_cursor"));
			} else if(down_down){
				if(down_pressed){
					clear_button_buffer(PC_DOWN_HARD_PRESSED);
					guide_menu_selected++;
					if(guide_menu_selected==selections+3){
						//guide_menu_selected+=selections;
						guide_menu_selected=0;
					} else if(guide_menu_selected==selections-1){
						guide_menu_selected=selections+2;
					} else {
						guide_menu_selected=guide_menu_selected%selections;
					}
					sound_play(asset_get("mfx_move_cursor"));
				}
				guide_menu_hold_delay++;
				if(guide_menu_hold_delay>18){
					guide_menu_hold_delay2++;
					if(guide_menu_hold_delay2>=6){
						guide_menu_hold_delay2=0;
						guide_menu_selected++;
						if(guide_menu_selected==selections+3){
							//guide_menu_selected+=selections;
							guide_menu_selected=0;
						} else if(guide_menu_selected==selections-1){
							guide_menu_selected=selections+2;
						} else {
							guide_menu_selected=guide_menu_selected%selections;
						}
						//guide_menu_selected=guide_menu_selected%selections;
						sound_play(asset_get("mfx_move_cursor"));
					}
				}
			} else {
				guide_menu_hold_delay=0;
			}
			if(attack_pressed){
				if(guide_menu_selected==selections+2){
					clear_button_buffer(PC_ATTACK_PRESSED);
					taunt_infinite=false;
					sound_play(asset_get("mfx_confirm"));
					guide_fd_active=!guide_fd_active;
				} else {
					clear_button_buffer(PC_ATTACK_PRESSED);
					reset_text();
					determine_textbox();
					guide_menu_state=4;
					guide_menu_timer=0;
					sound_play(asset_get("mfx_confirm"));
				}
			}
			if(special_pressed){
				taunt_infinite=false;
				clear_button_buffer(PC_SPECIAL_PRESSED);
				sound_play(asset_get("mfx_return_cursor"));
			}
		break;
		case 4:
			determine_text();
			var effectivetimer = guide_menu_timer/1.5;
			for(var i=0; i<16; i++){
				if(effectivetimer>0){
					guide_writetext[i]=string_copy(guide_readtext[i],0,floor(effectivetimer));
				}
				effectivetimer-=string_length(guide_readtext[i]);
			}
			if(guide_menu_timer%6==0){
				sound_play(asset_get("mfx_coin"));
			}
			if(effectivetimer>0){
				guide_menu_state=5;
				guide_menu_timer=0;
				//guide_head_talking=false;
			}
			if(attack_pressed||special_pressed){
				clear_button_buffer(PC_ATTACK_PRESSED);
				clear_button_buffer(PC_SPECIAL_PRESSED);
				guide_menu_timer=99999;
				sound_play(asset_get("mfx_coin"));
			}
		break;
		case 5:
			if(attack_pressed){
				clear_button_buffer(PC_ATTACK_PRESSED);
				reset_text();
				if(is_text_over()){
					guide_textbox=0;
					guide_menu_state=2;
					guide_menu_timer=0;
				} else {
					guide_textbox++;
					guide_menu_state=4;
					guide_menu_timer=0;
				}
				sound_play(asset_get("mfx_confirm"));
			}
			if(special_pressed){
				clear_button_buffer(PC_SPECIAL_PRESSED);
				reset_text();
				if(guide_textbox%50!=0){
					guide_textbox--;
					guide_menu_state=4;
					guide_menu_timer=0;
				} else {
					guide_textbox=0;
					guide_menu_state=2;
					guide_menu_timer=0;
				}
				sound_play(asset_get("mfx_return_cursor"));
			}
		break;
	}
	guide_timer++;
	guide_menu_timer++;
}

previous_x[0]=x;
previous_y[0]=y;

previous_spr_dir=spr_dir;

if attack != AT_EXTRA_1 && attack != AT_TAUNT prev_attack = attack;

#define determine_text
for(var i; i<16; i++){
	guide_readtext[i]="";
	guide_writetext[i]="";
}
switch guide_textbox {
	case 0:
		guide_readtext[0]="Available Tips:";
		guide_readtext[2]="Quick Rundown";
		guide_readtext[3]="In-depth Tour";
		guide_readtext[4]="Misc Move Info";
		guide_readtext[5]="Combos / Tech";
		guide_readtext[6]="Changelog";
		if(guide_fd_active){
			guide_readtext[10]="Deactivate Framedata Viewer";
		} else {
			guide_readtext[10]="Activate Framedata Viewer";
		}
	break;
	//quick
	case 50:
		guide_readtext[0]="This section is for people who want a very quick";
		guide_readtext[1]="explanation of the essential, non-obvious things so that";
		guide_readtext[2]="things can still be discovered."
		guide_readtext[4]="If you want something more in-depth, try the option"; 
		guide_readtext[5]="below this one.";
		guide_readtext[7]="(press special to go back)";
	break;
	case 51:
		guide_readtext[0]="Entering glide can be done by using nair and other";
		guide_readtext[1]="moves that lead into glide. While in glide, point the";
		guide_readtext[2]="stick in the direction you want to go.";
		guide_readtext[4]="If you launch people into the ring created by nspecial,"; 
		guide_readtext[5]="they are grabbed and hit in the direction its facing."; 
		guide_readtext[6]="This will also create a wind collumn / row depending on";
		guide_readtext[7]="where it was facing.";
		guide_readtext[9]="If you are in glide and in the wind, your strongs are";
		guide_readtext[10]="empowered and you accelerate faster.";
		guide_readtext[12]="Rotate the ring with nspecial while the ring is out";
	break;
	//in- depth
	case 100:
		guide_readtext[0]="This section is for people who want to know as much as";
		guide_readtext[1]="possible, leaving no more to discover.";
		guide_readtext[3]="If you want something a little faster that leaves this";
		guide_readtext[4]="open, try the option below this one.";
		guide_readtext[6]="(press special to go back)";
	break;
	case 101:
		guide_readtext[0]="The main thing about Zephrie is their unique glide.";
		guide_readtext[2]="Entering glide can be done by using nair and other";
		guide_readtext[3]="moves that lead into glide. While in glide, point the";
		guide_readtext[4]="stick in the direction you want to go.";
		guide_readtext[5]="Or, you can change the glide controls by pressing taunt";
		guide_readtext[6]="while holding up, which makes holding right rotate you";
		guide_readtext[7]="CW and left rotate you CCW.";
		guide_readtext[9]="Gliding into the ground with high enough horizontal speed";
		guide_readtext[10]="enters you into a slide instead of landing lag. Pressing";
		guide_readtext[11]="attack or special recovers you from the slide with a";
		guide_readtext[12]="little hop, but you can also just wait it out.";
	break;
	case 102:
		guide_readtext[0]="Some moves happen during glide, those being nair and";
		guide_readtext[1]="the startup of strongs.";
		guide_readtext[3]="Moving on now to the ring created by nspecial.";
		guide_readtext[5]="If you use a strong or dspecial into the ring, you";
		guide_readtext[6]="will be put into an epowered strong.";
		guide_readtext[7]="If you launch someone into the ring, they will be";
		guide_readtext[8]="grabbed and then launched in the direction the ring";
		guide_readtext[9]="is facing. You can rotate the ring by using nspecial";
		guide_readtext[10]="while the ring is already out and it will always go";
		guide_readtext[11]="like: normal -> up -> opposite -> down -> repeat.";
		guide_readtext[12]="";
	break;
	case 103:
		guide_readtext[0]="When the ring launches an enemy, a wind column/row";
		guide_readtext[1]="is created based on whther it was facing";
		guide_readtext[2]="horizontally or vertically";
		guide_readtext[3]="This strip of wind makes you automatically accelerate";
		guide_readtext[4]="while in glide and heightens its speed cap from 11 to 15.";
		guide_readtext[5]="The other thing the wind does is while you're in it, any";
		guide_readtext[6]="strongs you use are booted.";
		guide_readtext[8]="And now for some misc, but important values:";
		guide_readtext[9]="The ring stays around for 10 seconds before";
		guide_readtext[10]="disappearing, and the wind strip stays for 7.5.";
		guide_readtext[11]="If the ring is parried or is destroyed by plasma field,";
		guide_readtext[12]="nspecial can not be used for 5 seconds.";
	break;
	//misc
	case 150:
		guide_readtext[0]="Uspecial, fspecial, jab3 and nair all end in glide.";
		guide_readtext[2]="Empowered strongs naturally have increased acceleration.";
		guide_readtext[4]="Dspecial can be held for a strong hitbox.";
	break;
	//combos/tech
	case 200:
		guide_readtext[0]="Coming later.";
	break;
	//changelog
	case 250:
		guide_readtext[0]="Patch 1.1:";
		guide_readtext[2]="= Removed manual glide entry (holding jump while going";
		guide_readtext[3]="   down and pressing jump while holding down)";
		guide_readtext[5]="+ Fair startup 9 -> 6";
		guide_readtext[6]="+ Fair endlag 12 ->10";
		guide_readtext[7]="+ Fair landing lag 6 -> 4";
		guide_readtext[8]="- Bair early hit active frames 8-10 -> 8-9";
		guide_readtext[9]="- Bair late hit active frames 11-25 -> 10-19";
		guide_readtext[10]="+ Bair endlag 12 -> 9";
		guide_readtext[11]="+ Bair landing lag 6 -> 4";
		guide_readtext[12]="+ Bair faf 43 -> 34";
	break;
	case 251:
		guide_readtext[0]="+ Bair early hit kbs .6 -> .5";
		guide_readtext[1]="+ Dair kbs .6 -> .45";
		guide_readtext[2]="+ Nair endlag 12 -> 10";
		guide_readtext[3]="+ Nair landing lag 10 -> 4";
		guide_readtext[4]="";
		guide_readtext[5]="= Nspecial mini-rework:";
		guide_readtext[6]="  * fspecial no longer rotates ring";
		guide_readtext[7]="  * while no ring is out, nspecial acts like it did before";
		guide_readtext[8]="  * while ring is out, nspecial rotates the ring based on";
		guide_readtext[9]="     which was it initially going normal -> up ->";
		guide_readtext[10]="     opposite -> down -> repeat with a 10 frame cooldown";
		guide_readtext[11]="  * if ring is parried, nspecial gets a 5 second cooldown";
		guide_readtext[12]="";
	break;
	case 252:
		guide_readtext[0]="+ Uspecial endlag 29 -> 26";
		guide_readtext[1]="+ Uspecial aerial sweetspot bkb 5 -> 6";
		guide_readtext[2]="+ Uspecial grounded sweetspot angle 135 (45) -> 145 (35)";
		guide_readtext[3]="+ Uspecial grounded sweetspot kbs .8 -> 1";
		guide_readtext[4]="= Dspecial vertical speed cap on entry no cap -> 5 downward";
		guide_readtext[5]="- Dspecial speed cap on exit (horizontal / vertical) 7 / 5 -> 5 / 4.5";
		guide_readtext[6]="";
		guide_readtext[7]="- strongs stop in place when parried";
		guide_readtext[8]="+ all strongs can no longer land in the time after the";
		guide_readtext[9]="   button is released and the hitbox starts";
		guide_readtext[10]="+ Fstrong can no longer land while active";
		guide_readtext[11]="+ Empowered Dstrong now has a landing hitbox with";
		guide_readtext[12]="   angle 80, bkb 8, and kbs .5";
	break;
	case 253:
		guide_readtext[0]="= Ring no longer interacts strangely with other articles";
		guide_readtext[1]="   that detect hitboxes";
		guide_readtext[2]="= Ring now properly goes away when inside plasma field";
		guide_readtext[3]="   (it also applies the same cooldown as parrying it)";
		guide_readtext[4]="= Strongs now have the flash effect on zephrie rather";
		guide_readtext[5]="   than just the little ring";
		guide_readtext[6]="";
		guide_readtext[7]="";
		guide_readtext[8]="";
		guide_readtext[9]="";
		guide_readtext[10]="";
		guide_readtext[11]="";
		guide_readtext[12]="";
	break;
	/*case 251:
		guide_readtext[0]="All previous patch notes are on the steam page";
	break;//*/
	default:
		guide_readtext[0]="";
		guide_readtext[1]="";
		guide_readtext[2]="";
		guide_readtext[3]="";
	break
}
return;
#define reset_text
for(var i; i<16; i++){
	guide_readtext[i]="";
	guide_writetext[i]="";
}
#define determine_textbox
/*switch guide_menu_slected {
	case 0: textbox=20 break;
}//*/
guide_textbox=(guide_menu_selected+1)*50;
#define is_text_over
switch guide_textbox {
	case 51: 
		return true; 
	break;
	case 103: 
		return true; 
	break;
	case 150: 
		return true; 
	break;
	case 200: 
		return true; 
	break;
	case 253: 
		return true; 
	break;
	default:
		return false;
	break;
}