//So that hitboxes don't pile up.
hitstop = 0;
hitpause = 0;

if (textbox_show || textbox_taunting) {
	handle_textbox();
}
handle_cpu();
handle_fight();
handle_camera();


#define handle_camera

var xview_min = view_get_wview()/2;
var yview_min = view_get_hview()/2;
var xview_max = (room_width) - view_get_wview()/2;
var yview_max = (room_height) - view_get_hview()/2;
var xview = view_get_xview()+view_get_wview()/2;
var yview = view_get_yview()+view_get_hview()/2;
var new_xview = cam_x;
var new_yview = cam_y;

if (!the_end) {
	if (ds_list_size(view_follow) > 0 && !instance_exists(view_focus)) {
		new_xview = xview;
		new_yview = yview;
		cam_x = 0;
		cam_y = 0;
		var actual = 0;
	    for (var i = 0; i < ds_list_size(view_follow); i++) {
	        if (instance_exists(view_follow[| i])) {
	        	if (variable_instance_exists(view_follow[| i], "fake_stock")) {
	        		if (view_follow[| i].fake_stock <= 0)
	        			ds_list_delete(view_follow, i);
	        	}
	        }
	        else
	        	ds_list_delete(view_follow, i);
	    }
	    for (var i = 0; i < ds_list_size(view_follow); i++) {
	    	if (!instance_exists(view_follow[| i]))
	    		continue;
			cam_x += view_follow[| i].x;
	    	cam_y += view_follow[| i].y;
	    }
	    if (ds_list_size(view_follow) > 1) {
		    cam_x /= ds_list_size(view_follow);
		    cam_y /= ds_list_size(view_follow);
	    }
	}
	if (instance_exists(view_focus)) {
		cam_x = view_focus.x;
		cam_y = view_focus.y;
	}
}

new_xview = clamp(lerp(new_xview, cam_x, 0.3),xview_min,xview_max);
new_yview = clamp(lerp(new_yview, cam_y, 0.15),yview_min,yview_max);
//Screen shaker
if (shake_amount > 0) {
    if (get_gameplay_time() % 3 == 0) {
	    new_xview = clamp(cam_x-shake_amount+random_func(3,shake_amount * 2,true),xview_min - shake_amount,xview_max + shake_amount);
	    new_yview = clamp(cam_y-shake_amount+random_func(3,shake_amount * 2,true),yview_min - shake_amount,yview_max + shake_amount);
    }
    shake_amount--;
}
if (!the_end)
	set_view_position(new_xview,new_yview);

#define handle_fight
//Player death check
if (dead_players >= player_count && !the_end) {
    find_scores();
    the_end = true;
}

//This is the boss fight state machine.
switch (boss_fight_state) {
    case 0: //Initializing the boss (DON'T EDIT THIS UNLESS YOU KNOW WHAT YOU'RE DOING)
        
        boss_state_timer ++;
        
        if (boss_state_timer == 1) {
	        with (oPlayer) {
                if (player != obj_stage_main.dummy_player) {
                    ds_list_add(obj_stage_main.view_follow, id);
                }
	        }
        }
        
        if (boss_state_timer < spawn_boss_time) {
            music_stop();
        }
        if (boss_state_timer == spawn_boss_time) {
            var success = true;
            for (var i = 0; i < num_bosses; i++) {
                var mx = get_marker_x(boss_spawn_marker[i]);
                var my = get_marker_y(boss_spawn_marker[i]);

                if (mx == -1 || my == -1) {
                    print_debug("The boss marker was not found!");
                    print_debug("Boss object: " + boss_article_index[i]);
                    success = false;
                    continue;
                }

                boss_article_id[i] = create_enemy(mx, my, boss_article_index[i])
                ds_list_add(view_follow, boss_article_id[i]);

                if (!variable_instance_exists(boss_article_id[i], "hitpoints")) {
                    with (boss_article_index[i]) instance_destroy();
                    print_debug("The spawned boss has no hitpoints variable, which is required.");
                    print_debug("Boss object: " + boss_article_index[i]);
                    success = false;
                    continue;
                }
            }

            if (success) {
                boss_state_timer = 0;
                boss_fight_state = 1;
            }
        }
    break;
    case 1:
	    boss_state_timer ++;
	    
        if (!show_healthbar) {
            music_stop();
	        lock_player();
        	if (boss_state_timer >= 240) {
	            player_specific_text();
        	}
        }
	    
        if (show_healthbar) {
	        if (boss_healthbar_timer == 0) {
	            var ready = true;
	            
	    		for (var i = 0; i < num_bosses; i++) {
                    if (!instance_exists(boss_article_id[i]))
                        continue;
                 
    				if (!boss_article_id[i].done_intro)
                        ready = false;
	            }
	
	            if (ready)
	                boss_healthbar_timer = 1;
	        }
	        else {
	            boss_healthbar_timer ++;
	            if (boss_healthbar_timer % 2 == 0) {
	                sound_play( sound_get("sfx_boss_hp_tick"), false, 0);
	            }
	
	            if (boss_healthbar_timer >= 56) {
	                boss_healthbar_timer = 0;
	                boss_fight_state = 2;
	                for (var i = 0; i < num_bosses; i++) {
	                    if (!instance_exists(boss_article_id[i]))
	                        continue;
	                    if (variable_instance_exists(boss_article_id[i], "start_fight")) {
	                        boss_article_id[i].start_fight = true;
	                        boss_state_timer = 0;
	                    }
	                }
	            }
	
	        }
        }
    break;
    case 2:
        boss_state_timer ++;

        //Check for alive bosses
        var done = true;
        for (var i = 0; i < num_bosses; i++) {
            if (instance_exists(boss_article_id[i]))
            	done = false;
        }

        if (done) {
            boss_state_timer = 0;
            boss_fight_state = 3;
        }
    break;
    case 3:
        boss_state_timer ++;

        if (boss_state_timer == 60 && !the_end) {
           find_scores();
           the_end = true;
        }
    break;
}

#define handle_cpu
//CPU player handling
var controlled_players = 0;
with (asset_get("oPlayer")) {
    if (clone) continue;
	if (!variable_instance_exists(id, "temp_level")) {
		controlled_players ++;
	}
}

with (asset_get("oPlayer")) {
    if (clone)
        continue;
	if (controlled_players <= 1) {
	    if (obj_stage_main.dummy_player <= 0) {
	        if (variable_instance_exists(id, "temp_level") && player >= obj_stage_main.player_count) {
	            if (fake_stock > 0) { 
	                fake_stock = 0;
	                obj_stage_main.dummy_player = player;
	                obj_stage_main.dead_players ++;
					obj_stage_main.player_boss_hits[player] = 0;
	            }
	        }
	    }
	}
	if (get_match_setting(SET_TEAMS) == 1) {
        with (oPlayer) {
        	if (player != obj_stage_main.dummy_player)
        		set_player_team( player, 1 );
        	else
        		set_player_team( player, 2 );
        }
    }
	//Points
	obj_stage_main.player_display_hits[player] = lerp(obj_stage_main.player_display_hits[player], obj_stage_main.player_boss_hits[player], 0.1);
    //Fake stocks
    if (fake_stock <= 0) {
        set_state(PS_WRAPPED);
        cpu_target_timer --
            
        if (cpu_target_timer <= 0) {
            cpu_target = obj_stage_main.boss_article_id[random_func(0, other.num_bosses - 1, true)];
            cpu_target_timer = 60;
        }
        if (instance_exists(cpu_target)) {
            //Check for alive bosses
            x = cpu_target.x;
            y = cpu_target.y;
            hsp = cpu_target.hsp;
            vsp = cpu_target.vsp;
        }
        else {
            hsp = 0;
            vsp = 0;
        }
        x = clamp(x, view_get_xview(), view_get_xview() + view_get_wview());
        y = clamp(y, view_get_yview(), view_get_yview() + view_get_hview());
        
        invincible = true;
        invince_time = 200;
        go_through = false;
        fall_through = true;
        wrap_time = 196;
        visible = false;
        state_timer = 1;
        player_solid = false;
    }
}

#define create_enemy(spawn_x, spawn_y, enemyID)
var e = instance_create(spawn_x, spawn_y, "obj_stage_article", 1);
e.enemy_id = enemyID;
with (e) user_event(0);
return e;


#define find_scores
//Finding scores
var winner = ds_list_create();
ds_list_add(winner, -1, -1, -1, -1)
for (var i = 1; i < 5; i++) { //i is the current player being checked. j is the player it's being compared to.
	if (!is_player_on(i))
		continue;
	var place = player_count - 1;
	for (var j = 1; j < 5; j++) {
		if i == j continue; //lol same player
		if (!is_player_on(j)) continue;
		var score1 = player_boss_hits[i];
		var score2 = player_boss_hits[j];
		if score1 >= score2 {
			place--;
		}
	}
	//print_debug(string(place))
    winner[| place] = i;
}

//Move the dummy player to the last index if we win
//Else, move it in first.

if (dead_players < player_count) {
	for (var l = 0; l < ds_list_size(winner); l++) {
		if (winner[| l] == dummy_player) {
			ds_list_delete(winner, l);
			ds_list_insert(winner, player_count - 1, dummy_player);
		}
	}
}
else {
	for (var l = 0; l < ds_list_size(winner); l++) {
		if (winner[| l] == dummy_player) {
			ds_list_delete(winner, l);
			ds_list_insert(winner, 0, dummy_player);
		}
	}
}

print_debug(string(ds_list_to_array(winner)));
ds_list_destroy(view_follow);
end_match(winner[| 0], winner[| 1], winner[| 2], winner[| 3]);
#define handle_textbox

var word = "";
var empty_char = ' ';
var word_width = 0;
			
var glass_string = "[glass]";
var shake_string = "[shake]";
var taunt_string = "[taunt]";

textbox_continue_img += textbox_continue_spd;

if (textbox_glasstimer <= -1 && !textbox_taunting) {
	repeat(character_speed) {
		if (textbox_typetext != textbox_text && textbox_linenum < max_line_length) {
			if (textbox_pos >= string_length(textbox_text)) {
				textbox_pos = string_length(textbox_text);
				break;
			}
			var just_taunt = false;
			
			var find = string_copy(textbox_text, textbox_pos + 1, string_length(glass_string))
			if (find == glass_string) {
				textbox_glasstimer = 0;
				textbox_pos += string_length(glass_string);
				if (textbox_typetext == "") {
					textbox_show = false;
					textbox_pos = 0;
					textbox_linenum = 1;
					textbox_linetext = "";
				}
				break;
			}
			find = string_copy(textbox_text, textbox_pos + 1, string_length(shake_string))
			
			if (find == shake_string) {
				shake_amount = 32;
				textbox_pos += string_length(shake_string);
			}
			find = string_copy(textbox_text, textbox_pos + 1, string_length(taunt_string))
			
			if (find == taunt_string) {
				if (instance_exists(textbox_player_id)) {
					textbox_taunting = true;
					with (textbox_player_id) {
						set_attack(AT_TAUNT);
					}
				}
				textbox_pos += string_length(taunt_string);
				if (textbox_typetext == "") {
					textbox_show = false;
					textbox_pos = 0;
					textbox_linenum = 1;
					textbox_linetext = "";
				}
				break;
			}
			
			word = "";
			if (empty_char == ' ') {
				for (var i = textbox_pos; i < string_length(textbox_text); i++) {
					if (string_char_at(textbox_text, i + 1) == ' ') {
						break;
					}
					else {
						word += string_char_at(textbox_text, i + 1);
					}
				}
			}
			word_width = string_width(word);
			if (word_width + string_width(textbox_linetext) > max_line_length) {
				textbox_typetext += "
				";
				textbox_linenum ++;
				textbox_linetext = "";
				
				if (textbox_linenum >= max_lines + 1) {
					break;
				}
			}
			empty_char = string_char_at(textbox_text, textbox_pos + 1)
	
			// Save the text
			textbox_typetext += string_char_at(textbox_text,textbox_pos+1);
			textbox_linetext += string_char_at(textbox_text,textbox_pos+1);
			textbox_pos++;
		}
	}
}
if (textbox_glasstimer > -1) {
	textbox_glasstimer++;
	if (textbox_glasstimer == 12) {
		with (obj_stage_article) {
			if (get_article_script(id) == 1 && enemy_id == 0) {
				if (!done_intro) {
					threw_glass = true;
					phase = 1;
					intro_timer = 0;
				}
			}
		}
	}
	
	if (textbox_glasstimer >= 60) {
		textbox_glasstimer = -1;
	}
}

if (textbox_taunting) {
	if (instance_exists(textbox_player_id)) {
		textbox_taunting_timeout ++;
		if (textbox_taunting_timeout >= 200) {
			textbox_taunting = false;
			textbox_taunting_timeout = 0;
		}
		if (textbox_player_id.state != PS_ATTACK_GROUND && textbox_player_id.state != PS_ATTACK_AIR) {
			textbox_taunting = false;
		}
	}
	else
		textbox_taunting = false;
}

if (textbox_glasstimer <= -1 && !textbox_taunting) {
	if (instance_exists(textbox_player_id)) {
		character_speed = 1;
		if (textbox_linenum >= max_lines + 1) {
			if (textbox_player_id.attack_counter == 1 || textbox_player_id.special_counter == 1) {
				textbox_text = string_copy(textbox_text, string_length(textbox_linetext) - 2, string_length(textbox_linetext));
				textbox_typetext = "";
				textbox_linenum = 1;
				textbox_pos = 0;
			}
		
		}
		else if (textbox_pos == string_length(textbox_text)) {
			if (textbox_player_id.attack_counter == 1 || textbox_player_id.special_counter == 1) {
				textbox_show = false;
				if (textbox_index > 0)
					sound_play(asset_get("mfx_orby_talk"), false, 0);
			}
		}
		else if (textbox_player_id.attack_counter == 1 || textbox_player_id.special_counter == 1) {
			character_speed = max_character_speed;
		}
	}
}

#define create_textbox(text, speaker_index)
textbox_speaker = speaker_index;
textbox_text = text;
textbox_typetext = "";
textbox_pos = 0;
textbox_linenum = 1;
textbox_linetext = "";
textbox_show = true;

#define lock_player
var lookat = noone;
with (obj_stage_article) {
	if (get_article_script(id) == 1) {
		if (enemy_id == 0)
			lookat = id;
	}
}

with (oPlayer) {
	if (fake_stock > 0) {
		if (other.textbox_taunting)
			continue;
		hsp = 0;
		state = PS_SPAWN;
		can_move = false;
		
		if (instance_exists(lookat))
			spr_dir = lookat.x < x ? -1 : 1;
		
		left_down = false;
		left_pressed = false;
		left_hard_pressed = false;
		right_down = false;
		right_pressed = false;
		right_hard_pressed = false;
		
		up_down = false;
		down_down = false;
		attack_down = false;
		special_down = false;
		shield_down = false;
		jump_down = false;
		
		move_cooldown[AT_JAB] = 10;
    	move_cooldown[AT_FTILT] = 10;
    	move_cooldown[AT_DTILT] = 10;
    	move_cooldown[AT_UTILT] = 10;
    	move_cooldown[AT_FSTRONG] = 10;
    	move_cooldown[AT_DSTRONG] = 10;
    	move_cooldown[AT_USTRONG] = 10;
    	move_cooldown[AT_DATTACK] = 10;
    	move_cooldown[AT_FAIR] = 10;
    	move_cooldown[AT_BAIR] = 10;
    	move_cooldown[AT_DAIR] = 10;
    	move_cooldown[AT_DAIR] = 10;
    	move_cooldown[AT_UAIR] = 10;
    	move_cooldown[AT_NAIR] = 10;
    	move_cooldown[AT_FSPECIAL] = 10;
    	move_cooldown[AT_DSPECIAL] = 10;
    	move_cooldown[AT_USPECIAL] = 10;
    	move_cooldown[AT_NSPECIAL] = 10;
    	move_cooldown[AT_EXTRA_1] = 10;
    	move_cooldown[AT_EXTRA_2] = 10;
    	move_cooldown[AT_EXTRA_3] = 10;
    	move_cooldown[AT_FSPECIAL_AIR] = 10;
    	move_cooldown[AT_DSPECIAL_AIR] = 10;
    	move_cooldown[AT_NSPECIAL_AIR] = 10;
	}
}
clear_button_buffer(PC_LEFT_HARD_PRESSED);
clear_button_buffer(PC_RIGHT_HARD_PRESSED);
clear_button_buffer(PC_UP_HARD_PRESSED);
clear_button_buffer(PC_DOWN_HARD_PRESSED);
clear_button_buffer(PC_LEFT_STRONG_PRESSED);
clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
clear_button_buffer(PC_UP_STRONG_PRESSED);
clear_button_buffer(PC_DOWN_STRONG_PRESSED);
clear_button_buffer(PC_LEFT_STICK_PRESSED);
clear_button_buffer(PC_RIGHT_STICK_PRESSED);
clear_button_buffer(PC_UP_STICK_PRESSED);
clear_button_buffer(PC_DOWN_STICK_PRESSED);
clear_button_buffer(PC_JUMP_PRESSED);
clear_button_buffer(PC_ATTACK_PRESSED);
clear_button_buffer(PC_SHIELD_PRESSED);
clear_button_buffer(PC_SPECIAL_PRESSED);
clear_button_buffer(PC_STRONG_PRESSED);
clear_button_buffer(PC_TAUNT_PRESSED);

#define player_specific_text
with (oPlayer) {
	if (!variable_instance_exists(id, "temp_level")) {
		other.textbox_player_id = id;
		
		if (variable_instance_exists(id, "dracula_text") 
			&& variable_instance_exists(id, "dracula_speaker")
			&& variable_instance_exists(id, "dracula_portrait")
			&& variable_instance_exists(id, "dracula_portrait2"))  { //A compatible character
            dracula_texttype = 17;
		}
		else
		{
			if (select - 1 < 15 && select - 1 > 0){
                dracula_texttype = select - 1;
            }
            
            if (url == 1865940669){ //Sandbert
            	dracula_texttype = 15;
            }
            
            if (url == 1866016173){ //Guadua
            	dracula_texttype = 16;
            }
            
            if (url == 1870714373) { //Richter
            	dracula_texttype = 19;
            }
            
            if (url == 1980033483) { //BELMONT 
            	dracula_texttype = 20;
            }
		}
		//print_debug(string(dracula_texttype));
		break;
	}
}

var stored_text;
var stored_speaker;
var max_pages = 0;
var page = 0;

if (instance_exists(textbox_player_id)) {
	switch (textbox_player_id.dracula_texttype) {
		case 1: //Zetterburn
			textbox_portraits[1] = sprite_get("basecast_portraits"); //Custom1
			textbox_portrait_img[1] = 0;
			stored_speaker[page] = 0;
			stored_text[page] = "Welcome, my fiery headed foe. What brings you in my quarters?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "Your threats towared the Fire Capitol have not gone unnoticed!";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "I've come to put an end to your reign of terror!";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Oh, so we have another vampire hunter in these parts?[glass] Fine then...";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "I'm going to enjoy extinguishing your heart of fire!";
			page++;
			max_pages = page;
		break;
		case 2: //Orcane
			textbox_portraits[1] = sprite_get("basecast_portraits"); //Custom1
			textbox_portrait_img[1] = 1;
			stored_speaker[page] = 0;
			stored_text[page] = "...and what brings you to my castle, fish?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "...";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "I've seen you in action, and your powers exceed my expectations...";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Your stealthy prowess will surely add to my arsenal of demons.";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "...";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "......";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Not much of a talker, huh?";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "I'll take your silence as a confirmation of acceptance![glass] Join me, you puddle jumper!";
			page++;
			max_pages = page;
		break;	
		case 3: //Wrastor
			textbox_portraits[1] = sprite_get("basecast_portraits"); //Custom1
			textbox_portrait_img[1] = 2;
			stored_speaker[page] = 0;
			stored_text[page] = "Ah, the Aerial Ace of the Air Armada. What brings you here?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "Bradshaw is in this castle, and I know it.";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Bradshaw? Ha! Do you really think I'd remember all the prisoners I've taken into my castle?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "I'm not leaving until not only him, but all of your captives are free.";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "The wind's fury indeed![glass] Let's see if your will to fight matches your confidence!";
			page++;
			max_pages = page;
		break;	
		case 4: //Kragg
			textbox_portraits[1] = sprite_get("basecast_portraits"); //Custom1
			textbox_portrait_img[1] = 3;
			stored_speaker[page] = 0;
			stored_text[page] = "...So the insignificant bug climbed all the way here.";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "...You broke the wall.";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "...You destroyed the land.";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "And what of it, insect? Are you only here to whine in front of my throne?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "...I can't fix the wall.";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "...But I can get rid of the reason why.";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Such insolence...[glass] You think you can simply waltz into my presence for that reason?";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "You are a mere lowly insect to me, and I will crush you like the gnat you are!";
			page++;
			max_pages = page;
		break;		
		case 5: //Forsburn
			textbox_portraits[1] = sprite_get("basecast_portraits"); //Custom1
			textbox_portrait_img[1] = 4;
			stored_speaker[page] = 1;
			stored_text[page] = "...Dracula. I will defeat you right here, right now.";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "I can sense what you're thinking, rogue.";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "...";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Do you think that your brother and your nation will accept you in the event that you defeat me?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "Silence, demon. Whatever the reason may be, I am committed to destroying you!";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "I sense a grudge in your heart... Ha ha![glass] I will tear open your heart and let that darkness inside of you flow out.";
			page++;
			max_pages = page;
			
		break;
		case 6: //Maypul
			textbox_portraits[1] = sprite_get("basecast_portraits"); //Custom1
			textbox_portrait_img[1] = 5;
			stored_speaker[page] = 0;
			stored_text[page] = "Ah, if it isn't the Guardian of the Aetherian Forest. What brings you out of the trees?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "Your castle, Dracula.";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "It destroyed part of the forest that many of my people called their home.";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "Think of how much devastation you caused!";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "...and there will be more destruction to come!";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Once I control the Aetherian Forest, your residents will become my slaves and serve me for all eternity!";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "They wouldn't do such a thing, tyrant! I'll end your unwelcome stay once and for all!";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "So it has come to this, then.[glass] Your body will be a fine slave to my collection, and your kingdom will fall!";
			page++;
			max_pages = page;
		break;	
		case 7: //Absa
			textbox_portraits[1] = sprite_get("basecast_portraits"); //Custom1
			textbox_portrait_img[1] = 6;
			stored_speaker[page] = 1;
			stored_text[page] = "...Dracula.";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Very few brave souls have survived long enough to reach my throne.";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "And no other souls will be harmed by your demons. I will defeat you myself.";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Hmph! Do you think you can oppose me, the Dark Lord of the Devil's Castle?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "I did not train in secret only to run away. I will move forward to protect my people.";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "So noble![glass] Very well then, you will die under this eternal night as a martyr!";
			page++;
			max_pages = page;
		break;
		case 8: //Etalus
			textbox_portraits[1] = sprite_get("basecast_portraits"); //Custom1
			textbox_portrait_img[1] = 7;
			stored_speaker[page] = 1;
			stored_text[page] = "Your days of terror are numbered, Dracula!";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "I thought the people of the Ice Barrens have abandoned their post.";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Or are you merely one of the foolishly brave?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "Don't you even dare speak of my home!";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "After we've stopped the Abyss, the Black Ice that destroyed my homes continued. And when you arrived with your Demon Castle, I know now the root cause of it all!";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Ha ha ha![glass] So my curse has spread even to this world? Very well then. Let this world decay!";
			page++;
			max_pages = page;
		break;
		case 9: //Ori and Sein
			textbox_portraits[1] = sprite_get("basecast_portraits"); //Custom1 (Ori)
			textbox_portrait_img[1] = 12;
			textbox_portraits[2] = sprite_get("basecast_portraits"); //Custom2 (Sein)
			textbox_portrait_img[2] = 13;
			stored_speaker[page] = 0;
			stored_text[page] = "You don't look like you're from around here, little one. Are you lost?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "...";
			page++;
			stored_speaker[page] = 2;
			stored_text[page] = "Lost? We know what we're doing here.";
			page++;
			stored_speaker[page] = 2;
			stored_text[page] = "Our home has been in a state of decay, and we believe that you might be the cause of it.";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "This castle has more power than you can imagine, orb! Not only is your home suffering, all life in this godforsaken land is falling as we speak!";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "...and your life will be next![glass] Take a look around you, as this chamber will be the last thing you see!";
			page++;
			stored_speaker[page] = 2;
			stored_text[page] = "Ori, Watch out!";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "..!!!";
			page++;
			max_pages = page;
		break;
		case 10: //Ranno
			textbox_portraits[1] = sprite_get("basecast_portraits"); //Custom1
			textbox_portrait_img[1] = 8;
			stored_speaker[page] = 1;
			stored_text[page] = "...Dracula. I cannot allow you to stay in this world any further.";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Foolish monk. I thought your way of peace was to sit idly and let the world stay in ruin?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "Your insults will not indignify what I believe.";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "I only fight when I need to.";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Hah! If fighting my army isn't what defiles your ways... then perhaps...";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "...[glass]giving your whole life to me will! You will a great arsenal to add to my army!";
			page++;
			max_pages = page;
		break;
		case 11: //Clairen
			textbox_portraits[1] = sprite_get("basecast_portraits"); //Custom1
			textbox_portrait_img[1] = 9;
			stored_speaker[page] = 0;
			stored_text[page] = "You're not from this time period, are you? What unfortunate business do you have with me, traveller?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "I'm here... to save this world.";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Hahaha, do you think your future will change, even when I've been banished?";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "You may have travelled into the past to save a decaying world... but I've seen the world for what it truly is...";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Decay is inevitable, in any past or future.";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "I've made a promise to someone. I will fight for a better tomorrow... and I believe that day will arrive as long as I keep fighting for it!";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Very well then,[glass] fight for the illusion of a future you so desperately desire!";
			page++;
			max_pages = page;
		break;
		case 12: //Sylvanos
			textbox_portraits[1] = sprite_get("basecast_portraits"); //Custom1
			textbox_portrait_img[1] = 10;
			stored_speaker[page] = 1;
			stored_text[page] = "...";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "So, the Heart of the Forest has stormed my castle.";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Are you here to join me? And cause destruction throughout the land?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "Grrrrrrr....";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "...No? Are you here to reclaim your forest, you feral beast?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "Grrrrrrrrrrrrrr... RAH!";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "If you won't leave my castle,[glass] I shall doom your forest in an eternal night!";
			page++;
			max_pages = page;
		break;
		case 13: //Elliana
			textbox_portraits[1] = sprite_get("basecast_portraits"); //Custom1
			textbox_portrait_img[1] = 11;
			stored_speaker[page] = 1;
			stored_text[page] = "GRAHHH!!! DRACULA!!!";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "I've come to destroy you!";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Haha! And what are you supposed to be?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "I'm the Aerial Arsenal!";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "Your demon army was no match for me, and I've brought the fight from Julesvale to you!";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "How amusing... You think a machine is able to stop the King of the Night?";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "I am Count Dracula![glass] And your pesty skirmishes against my army end here, now and forever!";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "Try me, fang face!";
			page++;
			max_pages = page;
		break;
		case 14: //Shovel Knight
			textbox_portraits[1] = sprite_get("basecast_portraits"); //Custom1
			textbox_portrait_img[1] = 14;
			stored_speaker[page] = 1;
			stored_text[page] = "Dracula! I've come to stop your reign of terror. Your corruption of this land shall cease!";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "And you think that a mere shovel can oppose me?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "This shovel has slain more than you can imagine, fiend! I've fended of evil forces before...";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "...and you're hellish army will be fall to my shovel the same way!";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "You...![glass] You will regret those words, and you will die for the land you protect!";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "For Shovelry!";
			page++;
			max_pages = page;
		break;
		case 15: //Sandbert
			textbox_portraits[1] = sprite_get("basecast_portraits"); //Custom1
			textbox_portrait_img[1] = 15;
			stored_speaker[page] = 0;
			stored_text[page] = "And what kind of hideous demon are you?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "What's up gamers, Sandbert here. Today, I'm going to be playing a very famous game...";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "Super Metroid for the Sega Saturn.";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "What in the devil's name...?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "That's right, dude. You're on YouTube. Say hi to the viewers!";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Wh...? Gah![glass] I have no clue what you're blabbering on about... Begone from my castle at once!";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "Leave? No way! I can't risk to lose any of my one million subscribers!";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "Now... let's dance!";
			page++;
			max_pages = page;
			stored_speaker[page] = 1;
			stored_text[page] = "[taunt]";
			page++;
			max_pages = page;
		break;
		case 16: //Guadua
			textbox_portraits[1] = sprite_get("basecast_portraits"); //Custom1
			textbox_portrait_img[1] = 16;
			stored_speaker[page] = 0;
			stored_text[page] = "Well... another pathetic animal wandered into my castle."
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "Huff.. huff.. I'm here... to end... all this...";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Aw... did the walk all the way over here tire you out, panda?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "Ahem... I didn't come all the way from my lodge for nothing!";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "Surrender now, demon!";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Well, what are you going to do, panda? Sit on me?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "...";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "I thought so.[glass] Come at me, panda!";
			page++;
			max_pages = page;
		break;
		case 17: //Custom fighter with compatibility
			textbox_portraits[1] = textbox_player_id.dracula_portrait;
			textbox_portraits[2] = textbox_player_id.dracula_portrait2;
			if (variable_instance_exists(textbox_player_id, "dracula_portrait3"))
				textbox_portraits[3] = textbox_player_id.dracula_portrait3;
			max_pages = array_length(textbox_player_id.dracula_text);
			for (var i = 0; i < max_pages; i++) {
				stored_speaker[i] = textbox_player_id.dracula_speaker[i];
				stored_text[i] = textbox_player_id.dracula_text[i];
			}
		break;
		case 19: //Richter
			textbox_portraits[0] = sprite_get("dracula_portrait2"); //Dracula
			textbox_portraits[1] = sprite_get("extra_portraits"); //Custom1
			textbox_portrait_img[1] = 0;
			stored_speaker[page] = 1;
			stored_text[page] = "Die monster. You don't belong in this world!";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "It was not by my hand that I am once again given flesh. I was called here by humans who wish to pay me tribute.";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "Tribute!?! You steal men's souls and make them your slaves!";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Perhaps the same could be said of all religions...";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "Your words are as empty as your soul! Mankind ill needs a savior such as you!";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "What is a man?[glass] A miserable little pile of secrets. But enough talk... Have at you!";
			page++;
			max_pages = page;
		break;
		case 20: //BELMONT
			textbox_portraits[1] = sprite_get("extra_portraits"); //Custom1
			textbox_portrait_img[1] = 1;
			stored_speaker[page] = 0;
			stored_text[page] = "Well well well... another belmont here to-";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "AAAAAAAAAAAAAA";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "-to put me back in the grave...?";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "AAAAAAAAAAAAAA";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "...can you just let me-";
			page++;
			stored_speaker[page] = 1;
			stored_text[page] = "[shake][taunt]";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "LET ME TALK![glass]";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "I've had enough of your insolence, Belmont! Let the battle begin!";
			page++;
			max_pages = page;
		break;
		default:
			textbox_portrait_img[1] = 0;
			stored_speaker[page] = 0;
			stored_text[page] = "So... you dare challenge me, the great Vlad Dracula Tepes?";
			page++;
			stored_speaker[page] = 0;
			stored_text[page] = "Let's get straight into the battle![glass] Have at you!";
			page++;
			max_pages = page;
		break;
	}
}

if (instance_exists(textbox_player_id)) {
	if (!textbox_show && textbox_player_id.hitstop == 0) {
		if (!textbox_taunting) {
			if (textbox_index >= max_pages || variable_instance_exists(textbox_player_id, "temp_level")) {
		        boss_state_timer = 0;
		        boss_fight_state = 1;
		        with (obj_stage_article) {
					if (get_article_script(id) == 1 && enemy_id == 0) {
						if (!done_intro) {
							if (phase == 0) {
								phase = 1;
								intro_timer = 0;
							}
							else {
								phase = 2;
								intro_timer = 0;
							}
						}
					}
				}
			}
			else {
				create_textbox(stored_text[textbox_index], stored_speaker[textbox_index]);
				textbox_index++;
			}
		}
	}
}
else { 
	boss_state_timer = 0;
    boss_fight_state = 1;
    with (obj_stage_article) {
		if (get_article_script(id) == 1 && enemy_id == 0) {
			if (!done_intro) {
				if (phase == 0) {
					phase = 1;
					intro_timer = 0;
				}
				else {
					phase = 2;
					intro_timer = 0;
				}
			}
		}
	}
}