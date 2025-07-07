//riskofrain update.gml


var input_test = false;

//musuic stuff
if (get_gameplay_time() <= 122 && mus_phase == 0){
	with (asset_get("oPlayer")){
		if (up_stick_down||down_stick_down||left_stick_down||right_stick_down){
			other.mus_phase = 1;
			other.mus = 1;
		}
		if (shield_down&&special_down){ //laststock
			other.mus_phase = 1;
			other.mus = 0;
		}
	}
	if (mus_phase == 1){
		sound_play(sound_get("ui_tab"))
	}
}
if (get_gameplay_time() > 125 && mus_phase == 1){
	switch(mus){
		case 1:
			music_play_file("alt");
			laststock_sequence_timer_max = 25;
			break;
		case 0: //laststock
			input_test = true;
			break;
	}
	mus_phase = 2;
	mus_timer = 0;
}
	
	/*with(oPlayer){
		if (shield_down){
			input_test = true
		}
	}*/

if (!stg_init){
	stg_init = true;
		
	//create the pseudo layers
	var rwc = round(room_width/2)
	var rhc = round(room_height/2)
	var _obj = instance_create( rwc, rhc-24, "obj_stage_article", 10 );//sky
	_obj.bgnum = 0; _obj.depth = 60; _obj.parallax_x = 0-(1.00); _obj.parallax_y = 0-(1.00); _obj.y += 0.5;
	
	
	var _obj = instance_create( rwc, 70, "obj_stage_article", 10 );//cloudbackmost
	_obj.bgnum = 1; _obj.depth = 55; _obj.parallax_x = 0-(0.92); _obj.parallax_y = 0-(0.92); _obj.y += 0;
	
	var _obj = instance_create( rwc, 90, "obj_stage_article", 10 );//cloudmiddle
	_obj.bgnum = 2; _obj.depth = 54; _obj.parallax_x = 0-(0.90); _obj.parallax_y = 0-(0.90); _obj.y += 0.5;
	
	var _obj = instance_create( rwc, 110, "obj_stage_article", 10 );//cloudfrontmost
	_obj.bgnum = 3; _obj.depth = 53; _obj.parallax_x = 0-(0.87); _obj.parallax_y = 0-(0.87); _obj.y += 0;
	
	var _obj = instance_create( rwc, rhc+65, "obj_stage_article", 10 );//sun and sea
	_obj.bgnum = 4; _obj.depth = 50; _obj.parallax_x = 0-(0.97); _obj.parallax_y = 0-(0.97); _obj.y += 0;
	
	
	var _obj = instance_create( rwc, rhc+105, "obj_stage_article", 10 );//mountain.B
	_obj.bgnum = 5; _obj.depth = 41; _obj.parallax_x = 0-(0.80); _obj.parallax_y = 0-(0.80);
	
	var _obj = instance_create( rwc, rhc+134, "obj_stage_article", 10 );//mountain.F
	_obj.bgnum = 6; _obj.depth = 40; _obj.parallax_x = 0-(0.70); _obj.parallax_y = 0-(0.70);
	_obj.y += 0.5;
	
	//bg7 is rain and is different object
	var _obj = instance_create( rwc, rhc, "obj_stage_article", 15 );//rain
	_obj.depth = 36; _obj.parallax_x = 0-(0.50); _obj.parallax_y = 0-(0.50);
	
	var _obj = instance_create( rwc, rhc-46, "obj_stage_article", 10 );//hull
	_obj.bgnum = 8; _obj.depth = 33; _obj.parallax_x = 0-(0.30); _obj.parallax_y = 0-(0.05);
	var _obj = instance_create( rwc, rhc-93, "obj_stage_article", 10 );//hull-screens
	_obj.bgnum = 9; _obj.depth = 32; _obj.parallax_x = 0-(0.30); _obj.parallax_y = 0-(0.05);//samevalue it should be
	_obj.y += 0.5; _obj.aspd = 0.1;
	
	var _obj = instance_create( rwc, rhc+194, "obj_stage_article", 10 );//ground additions
	_obj.bgnum = 10; _obj.depth = 30; _obj.parallax_x = 0-(0.08); _obj.parallax_y = 0-(0.00); _obj.aspd = 0.1;
	
	var dialogue_obj = instance_create(rwc, rhc, "obj_stage_article", 35)
	
	
}


	var one_player_has_laststock = 0;
if (get_match_setting( SET_STOCKS )!=0){
	//print("stonks")
	for (var i=1; i<4; i++){
		if ( is_player_on( i ) ){
			if ( get_player_stocks( i )==1 ){
				one_player_has_laststock = true;
			}
			if (get_player_stocks(i) == 0) {
				game_over = 1;
			}
		}
	}
}else{//means its probably timer
	if (get_game_timer() < 60 * 60){//at final minute
		one_player_has_laststock = true;//laststock it up
	}
}

if laststock_sequence_timer = laststock_sequence_timer_max - 80 {
	sound_play(sound_get("biglaser"), 0, 0, 1.5, .9)
}
//laststock stuff
if ( get_gameplay_time() > 125 && ((input_test && !laststock_antici) || (one_player_has_laststock && !laststock_antici)) ){
	//fake_laststock = 1;
	
	instance_create( rwc, rhc, "obj_stage_article", 30 );//flash
	laststock_antici = true;
	
	
	if (mus==1){
		music_play_file("alt_final");
	}else{
		music_play_file("final");
	}
	sound_play(sound_get("thunder"),false,0);
	sound_play(sound_get("thunder"),false,0,0.5);
	//sound_stop(sound_get("alarm"))
	sound_play(sound_get("alarm"), 1, 0, .5)
	
}
if (laststock_antici){
	if (laststock_sequence_timer<laststock_sequence_timer_max){
		laststock_sequence_timer++;
		if (laststock_sequence_timer==laststock_sequence_timer_max){
		fake_laststock = 1;
		sound_stop(sound_get("alarm"))
		sound_play(sound_get("swingbig"), 0, 0, 1.5, .9)
		sound_play(sound_get("swingbig2"), 0, 0, 1.5, .9)
		sound_play(sound_get("thunder"),false,0,0.5);
		instance_create( rwc, rhc, "obj_stage_article", 30 );//flash
		shake_camera(5, 5)
		//sound_play(sound_get("thunder"));
		//sound_play(sound_get("thunder"),false,noone,0.5);
		therain = sound_play(sound_get("rain_ambience"),true,0,0.2);
		}
	}
}

if ( get_gameplay_time() > 125 && (is_laststock() && fake_laststock==1)){
	//print("yea_1")
	fake_laststock = 2;
	
	instance_create( rwc, rhc, "obj_stage_article", 30 );//flash
	
	if (mus==1){
	//print("yea_2 FAIL")
		//nothin
	}else{
		music_crossfade();
	//print("yea_3 SUCCESS")
	}
	if mus == 0 {
	//	sound_play(sound_get("alarm"), 1, 0, .3, .9)
	}
	sound_stop(sound_get("thunder"));
	sound_play(sound_get("thunder"),false,0);
	sound_play(sound_get("thunder"),false,0,0.5);
	
	
}


if(get_gameplay_time() > 125 && get_match_setting(SET_PRACTICE) == 0){
	if (get_game_timer()%(7200/2)==0 && get_game_timer()>5){//every even numbered minute left in timer
		sound_play(sound_get("chime"),false,0);//the bell
		muffletimer = 200
		
	}
}

if muffletimer != 0 { 
	muffletimer -= 1 
	suppress_stage_music(.2, .2);
}



//weird
//print(game_over)

if game_over {
	stocks = 0
}


playercount = 0 


with oPlayer{
	//init variable
	if "cutscene_triggered" not in self cutscene_triggered = 0;
	if "ror_is_winner" not in self {
		ror_is_winner = 1;
	//	print(ror_is_winner)
	}
	if get_gameplay_time() > 5 {
		if state != PS_DEAD {
			other.playercount++;
		}
		
		//trigger ko timer
		if (state_cat == SC_HITSTUN && y+vsp < get_stage_data(SD_TOP_BLASTZONE_Y)) || y > get_stage_data(SD_BOTTOM_BLASTZONE_Y) || x < get_stage_data(SD_LEFT_BLASTZONE_X) || x > get_stage_data(SD_RIGHT_BLASTZONE_X){
		//	print("hi")
			if get_player_stocks(player) == 1 {
				ror_is_winner = 0;
			//	print("h2i")
				other.checkcutscene = 1
			}
		}
	}
}


if checkcutscene == 1 {
	
	if playercount == 2 {
		cutscene_triggered = 1 
		sound_play(asset_get("sfx_death1"), 0, 0)
		with oPlayer {
			cutscene_triggered = 1
			other.cutscene_triggered = 1
		}
		
	}
	checkcutscene = 0
}

with oPlayer {
	
	if cutscene_triggered {
		mask_index = asset_get("empty_sprite")
		set_state(PS_WRAPPED)
		wrap_time = 4 
		//print(ror_is_winner)
		y = 300
		x = 600
		//grabbed_invisible = 1;
		hurtboxID.sprite_index = asset_get("empty_sprite");
		if shield_pressed {
			move_cooldown[AT_EXTRA_3] = 120
		}
		if !shield_down {
			move_cooldown[AT_EXTRA_3] = 0
		}
		if move_cooldown[AT_EXTRA_3] == 1 {
			end_match_ror();
		//	print("hi")
		}
	}
}
if cutscene_triggered {
	with oPlayer {
		if ror_is_winner == 1 {
			if "ror_win_text" in self {
					other.fake_string = ror_win_text
				}
			if is_string(url) { //workshop
				if "ror_win_text" in self {
					other.fake_string = ror_win_text
				} else {
					switch url {
						case "3351696106": //Void Fiend
							other.fake_string = "..and so it comes... for all of us."
							break;
						case "3386974034": //Commando (axolo)
							other.fake_string = "..and so he left, with new orders and new questions."
							break;
						case "3120902361": //Desperado (bandit)
							other.fake_string = "..and so he left, with his pyrrhic plunder."
							break;
						case "3455574336": //acrid 
							other.fake_string = "..and so it left, with a new hunger: to be left alone."
							break;
						case "2867341866": //Aur (miner)
							other.fake_string = "..and so he left, adrenaline still rushing through his veins."
							break;
						case "3309240911": //putrolce (drifter)
							other.fake_string = "..and so she left, hands cold and still hungry."
							break;
						case "3138902661": //ziggy (pilot)
							other.fake_string = "..and so he left, with his dreams of the sky below."
							break;
						case "2920880979": //springo de
						case "1959579555": //springo (enforcer)
							other.fake_string = "..and so he left, mutated beyond recognition."
							break;
//
						case "3382637663": //ciela
							other.fake_string = "..and so she left, with what wind remains."
							break;
						case "2504113755": //nova
							other.fake_string = "..and so they left, a grain of sand in search of its hourglass."
							break;
						case "3353596512": //employee
							other.fake_string = "..and so they left, to prepare for a better tomorrow."
							break;
						case "3353256940": //twenny
							other.fake_string = "..and so she left, still shattered and forlorn."
							break;
						case "1960200333": //fry
							other.fake_string = "..and so he left, trailing a smell of burning flesh."
							break;
						case "2396053263": //hb
							other.fake_string = "..and so she left, with another hole in her heart."
						case "383980": //snb
							other.fake_string = "..and so they left, now even closer."
							break;
						case "2097500977": //scary
							other.fake_string = "..and so he left, hollow still."
							break;
						case "2955951750": //oxob
							other.fake_string = "..and so he left, old wounds reopened."
							break;
						case "3293357713": //ykyr
							other.fake_string = "..and so he left, boots weathered and stained."
							break;
						case "3405748608": //1
							other.fake_string = "..and so he left, hopelessly far from home."
							break;
						case "2817605804": //jerma
							other.fake_string = "..and so he left, fresh with ideas for future endeavors."
							break;
						case "3354842635": //phasmo
							other.fake_string = "..and so they left, uncertain of the fate their next job holds."
							break;
						case "3232004081": //roland
							other.fake_string = "..and so he left, sinking into the black silence of oblivion."
							break;
						case "3120173097": //apollo
							other.fake_string = "..and so he left, determined to pave a bright future."
							break;
						case "2942196774": //KT
							other.fake_string = "..and so he left, searching for a new flow to ride."
							break;
						case "2895157780": //mira
							other.fake_string = "..and so she left, her world withering away having served its purpose."
							break;
						case "2778789055": //gumbo
							other.fake_string = "..and so they left, hungry for a new adventure."
							break;
						case "2768297654": //Duster
							other.fake_string = "..and so he left, tasked with large shoes to fill."
							break;
						case "2664982578": //egg
							other.fake_string = "..and so it left, dreaming of lustrous possibilities."
							break;
						case "2627476892": //lancer
							other.fake_string = "..and so he left, eager to play in your fantasy again tomorrow."
							break;
						case "3122239311": //syrcub
							other.fake_string = "..and so he left, to where joy was needed next."
							break;
						case "2391875424": //cardinal
							other.fake_string = "..and so he left, with sparks of fire trailing behind."
							break;
						case "2947656797": //sapphrey
							other.fake_string = "..and so he left, itching for another adventure."
							break;
						case "2802423078": //kaeiro
							other.fake_string = "..and so he left, his light shining brighter than ever."
							break; 
						case "2415092274": //ao
							other.fake_string = "..and so she left, yearning to join the twilights choir."
							break;
						case "2108895293": //lumina
							other.fake_string = "..and so she left, letting the light guide her future."
							break;
						case "2229832619": //
							other.fake_string = "..et sic relinquit, nota sui in narratu aeterno oblitteratur."
							//..and so it left, its mark on history forever forgotten.
							break;
						case "3310371100": //usher
							other.fake_string = "..and so she left, still chasing the ambivalent rain."
							break;
						case "2605377553": //mal
							other.fake_string = "..and so she left, weighed by her curses."
							break;
						case "3456361903": //ninji
							other.fake_string = "..and so it left, hopping to the drum of its own beat."
							break;
						case "3176689305": //knight
							other.fake_string = ""
							break;
						case "2996263079": //yuuko
							other.fake_string = "..and so she left, reminded she forgot to do her homework."
							break;
						case "2823335024": //careless
							other.fake_string = "..and so she left, sowing careless chaos."
							break;
						case "2226596831": //reckless
							other.fake_string = "..and so he left, with reckless abandon."
							break;
							
						
					}
				}
			} else { //base cast
				switch url { 
					case 2: //zet
						other.fake_string = "..and so he left, his heart aflame once more."
						break;
					case 11: //ranno
						other.fake_string = "..and so he left, his sash stained with hypocrisy."
						break;
					case 19: //oly
						other.fake_string = "..and so she left, to find a new rival."
						break;
					case 12: //clair
						other.fake_string = "..and so she left, longing for a since-shattered home."
						//alt: "..and so she left, knowing she'll return again someday."
						break;
					case 8: //absa
						other.fake_string = "..and so she left, head dizzy with clouded disparity."
						break;
					case 13: //sylv
						other.fake_string = "..and so it left, an eternal scar in its wake."
						break;
					case 16: //mollo
						other.fake_string = "..and so he stayed, fighting for ashes of a world left behind."
						break;
					case 4: //wrastor
						other.fake_string = "..and so he left, grateful to see the sky again."
						break;
					case 9: //eta
						other.fake_string = "..and so he left, with cold fur, yet colder resolve."
						break;
					case 5: //kragg
						other.fake_string = "..and so he left, his devotion unchanged and his work unfinished."
						break;
					case 7: //maypul
						other.fake_string = "..and so she left, still scouring for someone to save."
						break;
					case 17: //hodan
						other.fake_string = "..and so he left, unaware of the weight of his actions."
						break;
					case 9: //orcane
						other.fake_string = "..and so he left, mischief yet to be made."
						break;
					case 18: //pomme
						other.fake_string = "..and so she left, her avarice clouding any hope of freedom."
						break;
					case 6: //fors
						other.fake_string = "..and so he left, in search of new flames to smother."
						break;
					case 10: //ori
						other.fake_string = "...and so they left, their lights pulsing proudly in the dark."
						break;
					case 15: //sk
						other.fake_string = "..and so he left, still looking for his other half."
						break;
				}
			}
			
		} else {
			damage = 999
		}
	}
}



if cutscene_triggered { //CUTSCENE
	sound_stop(sound_get("alarm"))
	sound_stop(sound_get("swingbig"))
	sound_stop(sound_get("swingbig2"))
	sound_stop(sound_get("biglaser"))
	sound_volume(therain, 0.05, 200)
	cutscene_timer++;
	suppress_stage_music(0, .2)
	if cutscene_timer == 1 {
		sound_stop(sound_get("thunder"));
		sound_play(sound_get("thunder"),false,0);
		sound_play(sound_get("jetfly"), 0, 0)
		var flash = instance_create( rwc, rhc, "obj_stage_article", 30 );//flash	
		var black = instance_create( rwc, rhc, "obj_stage_article", 40) //Black screen
	}
	if cutscene_timer > 520 {
		handle_dialogue()
	}
	
	if cutscene_timer == 1000 {
		end_match_ror()
	}
}





#define handle_dialogue

//if string_length(real_string) > 200 { real_string = ""; } // start over after a while


if get_gameplay_time() % 2 == 0 {
	//print(real_string)
	if current_number < string_length(fake_string)+1{
		current_character = string_char_at(fake_string, current_number)
		current_number += 1
		real_string += string(current_character);
		sound_play(sound_get("smallplip"), 0, 0, 1, .6 + (random_func(4, 4, 0) / 10))
		//print(.8 + (random_func(4, 4, 0) / 10))
	}
}

//if current_character == 0 { dialogue_loops = min(dialogue_loops + 1, 30); } 


#define end_match_ror

with oPlayer {
	if ror_is_winner == 1 {
		sound_stop(sound_get("jetfly"))
		end_match(player)
	}
}
