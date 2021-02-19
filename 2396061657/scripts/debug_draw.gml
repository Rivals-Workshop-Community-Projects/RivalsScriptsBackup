// debug_draw.gml
// draws debug text/sprites in front of everything

/*
// Display Code for my Sanity
draw_debug_text(x - 30, y - 260, "DG_chat_num: " + string(DG_chat_num));
draw_debug_text(x - 30, y - 60, "Visual State: " + string(DG_visual_state));
draw_debug_text(x - 30, y - 80, "Visual Timer: " + string(DG_visual_timer));
draw_debug_text(x - 30, y - 100, "Chat Index: " + string(chatindex));
draw_debug_text(x - 30, y - 120, "Option Select: " + string(Select));
draw_debug_text(x - 30, y - 140, "Answer Select: " + string(answerselect[Cursor - 1]));
draw_debug_text(x - 30, y - 160, "Cursor: " + string(Cursor));
draw_debug_text(x - 30, y - 180, "is Unique: " + string(is_unique[Cursor - 1]));
draw_debug_text(x - 30, y - 200, "Return Unique: " + string(return_unique[Cursor - 1]));
draw_debug_text(x - 30, y - 220, "Return Path: " + string(nextindex));
draw_debug_text(x - 30, y - 240, "ChatNumber: " + string(ChatNumber));
*/

/*
// Displays Dialogue
var testdialogue = 

"How can something make the beautiful horizon look so empty 
										and unfulfilled. A divide that makes it's surroundings feel 
										so empty, and at the center a lonely tower.";

draw_sprite(sprite_get("display"), 1, view_get_xview() - 2, view_get_yview() + 400);
draw_debug_text(view_get_xview() + 16, view_get_yview() + 393, testdialogue); // Line 1
*/

/*
with (oPlayer){
	shader_start();
	draw_sprite_ext(other.basecast_portraits, 3, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
	shader_end();
}
*/

///////////////////////////////////////////////////////////
///////////////////   Stage Dialogue   ////////////////////
///////////////////////////////////////////////////////////

// Stage Dialogue
if (DG_chat_num >= 1 && isTaunt){ // Stage Dialogue

	//draw_sprite(visual_bg, 1, room_width - (get_stage_data(SD_X_POS) * 2), get_stage_data(SD_Y_POS));

	// Initial Display - Listening Mode
		if (DG_visual_state == 1){
			DG_visual_timer++;

			// Display Left side
			if (expression_left > 1 && expression_left < 20 && adopts_color_left && !workshop_left){

				giik_please_fix_basecast_shaders_already_left = true;

				if (expression_left == 10){ // Special Ori outfit
					draw_sprite_ext(sprite_get("bounty_layer"), 1, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
				}
				if (expression_left == 7){
					draw_sprite_ext(sprite_get("maypul_layer"), 1, view_get_xview() - 40, view_get_yview(), 1, 1, 0, -1, 1);
				}
			}
			else {
				if (workshop_left){
					if (adopts_color_left){
						workshop_left = true;
					}
					else {
						draw_sprite_ext(custom_left, expression_left, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
					}
				}
				else {
					if (adopts_color_right){
						shader_start();
						draw_sprite_ext(basecast_portraits, expression_left, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
						shader_end();
					}
					else {
						draw_sprite_ext(basecast_portraits, expression_left, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
					}
				}
			}

			// Player Mask
			if (expression_left = 1 && !workshop_left){
				draw_sprite_ext(sprite_get("Player_mask"), 0, view_get_xview() - 40, view_get_yview(), 1, 1, 0,  get_player_hud_color(player), 1)
			}
			
			// Displays Dialogue
			draw_sprite(sprite_get("display"), 1, view_get_xview() - 2, view_get_yview() + 400);
			draw_debug_text(view_get_xview() + 16, view_get_yview() + 393, dialogue[chatindex]); // Line 1
			
			// Displays Right side
			if (expression_right > 1 && expression_right < 20 && adopts_color_right && !workshop_right){

				giik_please_fix_basecast_shaders_already_right = true;

				if (expression_right == 10){
					draw_sprite_ext(sprite_get("bounty_layer"), 1, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1);
				}
				if (expression_right == 7){
					draw_sprite_ext(sprite_get("maypul_layer"), 1, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1);
				}
			}
			else {
				if (workshop_right){
					if (adopts_color_right){
						workshop_right = true;
					}
					else {
						draw_sprite_ext(custom_right, expression_right, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
					}
				}
				else {
					if (adopts_color_right){
						shader_start();
						draw_sprite_ext(basecast_portraits, expression_right, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1)			
						shader_end();
					}
					else {
						draw_sprite_ext(basecast_portraits, expression_right, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1)
					}
				}
			}
			// Player Mask
			if (expression_right = 1 && !workshop_right){
				draw_sprite_ext(sprite_get("Player_mask"), 0, view_get_xview() + 1000, view_get_yview(), -1, 1, 0,  get_player_hud_color(player), 1)
			}
						
			
			draw_sprite(sprite_get("display"), 1, view_get_xview() + 478, view_get_yview() + 400);
				
			if (right_speaker){
				draw_debug_text(view_get_xview() + 496, view_get_yview() + 393, right_dialogue[chatindex]); // Line 1
			}

			if (DG_visual_timer >= 20){
				draw_sprite(sprite_get("cursor2"), get_gameplay_time() / 4, view_get_xview() + 444, view_get_yview() + 438);
				if (attack_pressed || jump_pressed){
					sound_play(sound_get("Highlight Selection")); // Plays Sound every Third option once it reached super speed mode
					switch (chattingoptions[chatindex]){
						case 1:
							DG_visual_timer = 0;
							DG_visual_state = 2;
						break;
						case 2:
							chatindex = nextindex;
							DG_visual_timer = 0;
							DG_visual_state = 1;
						break;
						case 3:
							DG_visual_timer = 0;
							isTaunt = false;
							exit;
						break;
					}
				}
			}
		}
	// End Listen Mode

	// Responding Display - Response Mode
		if (DG_visual_state == 2){
			DG_visual_timer++;

			// Display Left side
			if (expression_left > 1 && expression_left < 20 && adopts_color_left && !workshop_left){

				giik_please_fix_basecast_shaders_already_left = true;

				if (expression_left == 10){
					draw_sprite_ext(sprite_get("bounty_layer"), 1, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
				}
				if (expression_left == 7){
					draw_sprite_ext(sprite_get("maypul_layer"), 1, view_get_xview() - 40, view_get_yview(), 1, 1, 0, -1, 1);
				}
			}
			else {
				
				if (workshop_left){
					if (adopts_color_left){
						workshop_left = true;
					}
					else {
						draw_sprite_ext(custom_left, expression_left, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
					}
				}
				else {
					if (adopts_color_right){
						shader_start();
						draw_sprite_ext(basecast_portraits, expression_left, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
						shader_end();
					}
					else {
						draw_sprite_ext(basecast_portraits, expression_left, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
					}
				}
			}

			// Player Mask
			if (expression_left = 1 && !workshop_left){
				draw_sprite_ext(sprite_get("Player_mask"), 0, view_get_xview() - 40, view_get_yview(), 1, 1, 0,  get_player_hud_color(player), 1)
			}
			
			// Displays Dialogue
			draw_sprite(sprite_get("display"), 1, view_get_xview() - 2, view_get_yview() + 400);
			draw_debug_text(view_get_xview() + 16, view_get_yview() + 393, dialogue[chatindex]); // Line 1
			
			// Displays Right side
			if (expression_right > 1 && expression_right < 20 && adopts_color_right && !workshop_right){

				giik_please_fix_basecast_shaders_already_right = true;

				if (expression_right == 10){
					draw_sprite_ext(sprite_get("bounty_layer"), 1, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1);
				}
				if (expression_right == 7){
					draw_sprite_ext(sprite_get("maypul_layer"), 1, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1);
				}
			}
			else {
				if (workshop_right){
					if (adopts_color_right){
						workshop_right = true;
					}
					else {
						draw_sprite_ext(custom_right, expression_right, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
					}
				}
				else {
					if (adopts_color_right){
						shader_start();
						draw_sprite_ext(basecast_portraits, expression_right, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1)			
						shader_end();
					}
					else {
						draw_sprite_ext(basecast_portraits, expression_right, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1)
					}
				}
			}
			// Player Mask
			if (expression_right = 1 && !workshop_right){
				draw_sprite_ext(sprite_get("Player_mask"), 0, view_get_xview() + 1000, view_get_yview(), -1, 1, 0,  get_player_hud_color(player), 1)
			}
			
			draw_sprite(sprite_get("display"), 1, view_get_xview() + 478, view_get_yview() + 400);

			draw_debug_text(view_get_xview() + 492, view_get_yview() + 383, "What will you say?");		
			draw_debug_text(view_get_xview() + 510, view_get_yview() + 402, optionselect[chatindex]); // Option 1
			
			if (DG_visual_timer >= 20) {
				switch (Cursor){ // Cursor Selector
					case 1:
						draw_sprite(sprite_get("cursor"), get_gameplay_time() / 4, view_get_xview() + 500, view_get_yview() + 402);
					break;
					case 2:
						draw_sprite(sprite_get("cursor"), get_gameplay_time() / 4, view_get_xview() + 500, view_get_yview() + 422);			
					break;
					case 3:
						draw_sprite(sprite_get("cursor"), get_gameplay_time() / 4, view_get_xview() + 500, view_get_yview() + 442);
					break;
				}		
					
			// Choice Selector
			// QOL holding Up/Down makes it slowly speed up faster and faster (Has no real use but it's neat)
				if (down_down || up_down){
					held_delay++;
					
					if (held_delay == 1 || held_delay == 15 || held_delay == 30 || held_delay == 40 || held_delay == 50 || held_delay == 60 || held_delay == 70 || held_delay == 75 || held_delay == 80 || held_delay == 85 || held_delay == 90 || held_delay == 95 || held_delay >= 100){
						if (held_delay < 100 || held_delay > 100 && Cursor == 1){ // Plays Sound on select
							sound_play(sound_get("Highlight Selection")); // Plays Sound every Third option once it reached super speed mode
						}
						if (down_down){
							if (Cursor < 3){
								Cursor++;
							}
							else{
								Cursor = 1;
							}
						}
						else{
							if (Cursor > 1){
								Cursor--;
							}
							else{
								Cursor = 3;
							}
						}
					}
				}
			// Resets holding mode timer when not holding Up/Down
				if (!down_down && !up_down){
					held_delay = 0;
				}
			// Actual Selection process
				if (attack_pressed || jump_pressed){
					sound_play(sound_get("Highlight Selection")); // Plays Sound every Third option once it reached super speed mode
					switch (Cursor){
						case 1: 
							Select = answerselect[0];
						break;
						case 2: 
							Select = answerselect[1];
						break;
						case 3: 
							Select = answerselect[2];
						break;
					}
//					soundReaction = soundSelect[dialogueSequence][Cursor-1];
					if (is_unique[Cursor - 1] == true){
						DG_visual_state = 3;
						chatindex = return_unique[Cursor - 1]
					}
					else {
						DG_visual_state = 1;
						chatindex = Select;
					}
					DG_visual_timer = 0;
				}
			}	
		}
	// End Response Mode
		
	// Double Display - Double Response Mode
		if (DG_visual_state == 3){
			DG_visual_timer++;

			// Display Left side
			if (expression_left > 1 && expression_left < 20 && adopts_color_left && !workshop_left){

				giik_please_fix_basecast_shaders_already_left = true;

				if (expression_left == 10){
					draw_sprite_ext(sprite_get("bounty_layer"), 1, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
				}
				if (expression_left == 7){
					draw_sprite_ext(sprite_get("maypul_layer"), 1, view_get_xview() - 40, view_get_yview(), 1, 1, 0, -1, 1);
				}
			}
			else {
				
				if (workshop_left){
					if (adopts_color_left){
						workshop_left = true;
					}
					else {
						draw_sprite_ext(custom_left, expression_left, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
					}
				}
				else {
					if (adopts_color_right){
						shader_start();
						draw_sprite_ext(basecast_portraits, expression_left, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
						shader_end();
					}
					else {
						draw_sprite_ext(basecast_portraits, expression_left, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
					}
				}
			}

			// Player Mask
			if (expression_left = 1 && !workshop_left){
				draw_sprite_ext(sprite_get("Player_mask"), 0, view_get_xview() - 40, view_get_yview(), 1, 1, 0,  get_player_hud_color(player), 1)
			}
			
			// Displays Dialogue
			draw_sprite(sprite_get("display"), 1, view_get_xview() - 2, view_get_yview() + 400);
			draw_debug_text(view_get_xview() + 16, view_get_yview() + 393, dialogue[chatindex]); // Line 1
			
			// Displays Right side
			if (expression_right > 1 && expression_right < 20 && adopts_color_right && !workshop_right){

				giik_please_fix_basecast_shaders_already_right = true;

				if (expression_right == 10){
					draw_sprite_ext(sprite_get("bounty_layer"), 1, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1);
				}
				if (expression_right == 7){
					draw_sprite_ext(sprite_get("maypul_layer"), 1, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1);
				}
			}
			else {
				if (workshop_right){
					if (adopts_color_right){
						workshop_right = true;
					}
					else {
						draw_sprite_ext(custom_right, expression_right, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
					}
				}
				else {
					if (adopts_color_right){
						shader_start();
						draw_sprite_ext(basecast_portraits, expression_right, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1)			
						shader_end();
					}
					else {
						draw_sprite_ext(basecast_portraits, expression_right, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1)
					}
				}
			}
			// Player Mask
			if (expression_right = 1 && !workshop_right){
				draw_sprite_ext(sprite_get("Player_mask"), 0, view_get_xview() + 1000, view_get_yview(), -1, 1, 0,  get_player_hud_color(player), 1)
			}
			
			draw_sprite(sprite_get("display"), 1, view_get_xview() + 478, view_get_yview() + 400);
			if (right_speaker){
				draw_debug_text(view_get_xview() + 490, view_get_yview() + 393, right_dialogue[chatindex]); // Line 1
			}

			if (DG_visual_timer >= 20){
				draw_sprite(sprite_get("cursor2"), get_gameplay_time() / 4, view_get_xview() + 444, view_get_yview() + 455);
				if (attack_pressed || jump_pressed){
					sound_play(sound_get("Highlight Selection")); // Plays Sound every Third option once it reached super speed mode
					switch (chattingoptions[chatindex]){
						case 1:
							DG_visual_timer = 0;
							DG_visual_state = 2;
						break;
						case 2:
							chatindex = nextindex;
							DG_visual_timer = 0;
							DG_visual_state = 1;
						break;
						case 3:
							DG_visual_timer = 0;
							isTaunt = false;
							exit;
						break;
					}
				}
			}
		}
	// End Double Response Mode
}

///////////////////////////////////////////////////////////
///////////////////   Character Dialogue   ////////////////////
///////////////////////////////////////////////////////////
/*
// Character Dialogue
if (DG_chat_num == 1 && isTaunt){ // Stage Dialogue

	//draw_sprite(visual_bg, 1, room_width - (get_stage_data(SD_X_POS) * 2), get_stage_data(SD_Y_POS));

	// Initial Display - Listening Mode
		if (DG_visual_state == 1){
			DG_visual_timer++;

			// Display Left side
			if (expression_left > 1 && expression_left < 20 && adopts_color_left){

				giik_please_fix_basecast_shaders_already_left = true;

				if (expression_left == 10){ // Special Ori outfit
					draw_sprite_ext(sprite_get("bounty_layer"), 1, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
				}
			}
			else {
				if (workshop_left){
					if (adopts_color_left){
						workshop_left = true;
					}
					else {
						draw_sprite_ext(custom_left, expression_left, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
					}
				}
				else {
					if (adopts_color_left){
						shader_start();
						draw_sprite_ext(basecast_portraits, expression_left, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
						shader_end();
					}
					else {
						draw_sprite_ext(basecast_portraits, expression_left, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
					}
				}
			}

			// Player Mask
			if (expression_left = 1 && !workshop_left){
				draw_sprite_ext(sprite_get("Player_mask"), 0, view_get_xview() - 40, view_get_yview(), 1, 1, 0,  get_player_hud_color(player), 1)
			}
			
			// Displays Dialogue
			draw_sprite(sprite_get("display"), 1, view_get_xview() - 2, view_get_yview() + 400);
			draw_debug_text(view_get_xview() + 16, view_get_yview() + 393, dialogue[chatindex]); // Line 1
			
			// Displays Right side
			if (expression_right > 1 && expression_right < 20 && adopts_color_right){

				giik_please_fix_basecast_shaders_already_right = true;

				if (expression_right == 10){
					draw_sprite_ext(sprite_get("bounty_layer"), 1, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1);
				}
			}
			else {
				if (workshop_right){
					if (adopts_color_right){
						workshop_right = true;
					}
					else {
						draw_sprite_ext(custom_right, expression_right, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
					}
				}
				else {
					if (adopts_color_right){
						shader_start();
						draw_sprite_ext(basecast_portraits, expression_right, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1)			
						shader_end();
					}
					else {
						draw_sprite_ext(basecast_portraits, expression_right, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1)
					}
				}
			}
			// Player Mask
			if (expression_right = 1 && !workshop_right){
				draw_sprite_ext(sprite_get("Player_mask"), 0, view_get_xview() + 1000, view_get_yview(), -1, 1, 0,  get_player_hud_color(player), 1)
			}
			
			draw_sprite(sprite_get("display"), 1, view_get_xview() + 478, view_get_yview() + 400);

			if (DG_visual_timer >= 20){
				draw_sprite(sprite_get("cursor2"), get_gameplay_time() / 4, view_get_xview() + 444, view_get_yview() + 438);
				if (attack_pressed || jump_pressed){
					sound_play(sound_get("Highlight Selection")); // Plays Sound every Third option once it reached super speed mode
					switch (chattingoptions[chatindex]){
						case 1:
							DG_visual_timer = 0;
							DG_visual_state = 2;
						break;
						case 2:
							chatindex = nextindex;
							DG_visual_timer = 0;
							DG_visual_state = 1;
						break;
						case 3:
							DG_visual_timer = 0;
							isTaunt = false;
							exit;
						break;
					}
				}
			}
		}
	// End Listen Mode

	// Responding Display - Response Mode
		if (DG_visual_state == 2){
			DG_visual_timer++;

			// Display Left side
			if (expression_left > 1 && expression_left < 20 && adopts_color_left){

				giik_please_fix_basecast_shaders_already_left = true;

				if (expression_left == 10){
					draw_sprite_ext(sprite_get("bounty_layer"), 1, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
				}
			}
			else {
				
				if (workshop_left){
					if (adopts_color_left){
						workshop_left = true;
					}
					else {
						draw_sprite_ext(custom_left, expression_left, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
					}
				}
				else {
					if (adopts_color_right){
						shader_start();
						draw_sprite_ext(basecast_portraits, expression_left, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
						shader_end();
					}
					else {
						draw_sprite_ext(basecast_portraits, expression_left, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
					}
				}
			}

			// Player Mask
			if (expression_left = 1 && !workshop_left){
				draw_sprite_ext(sprite_get("Player_mask"), 0, view_get_xview() - 40, view_get_yview(), 1, 1, 0,  get_player_hud_color(player), 1)
			}
			
			// Displays Dialogue
			draw_sprite(sprite_get("display"), 1, view_get_xview() - 2, view_get_yview() + 400);
			draw_debug_text(view_get_xview() + 16, view_get_yview() + 393, dialogue[chatindex]); // Line 1
			
			// Displays Right side
			if (expression_right > 1 && expression_right < 20 && adopts_color_right){

				giik_please_fix_basecast_shaders_already_right = true;

				if (expression_right == 10){
					draw_sprite_ext(sprite_get("bounty_layer"), 1, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1);
				}
			}
			else {
				if (workshop_right){
					if (adopts_color_right){
						workshop_right = true;
					}
					else {
						draw_sprite_ext(custom_right, expression_right, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
					}
				}
				else {
					if (adopts_color_right){
						shader_start();
						draw_sprite_ext(basecast_portraits, expression_right, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1)			
						shader_end();
					}
					else {
						draw_sprite_ext(basecast_portraits, expression_right, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1)
					}
				}
			}
			// Player Mask
			if (expression_right = 1 && !workshop_right){
				draw_sprite_ext(sprite_get("Player_mask"), 0, view_get_xview() + 1000, view_get_yview(), -1, 1, 0,  get_player_hud_color(player), 1)
			}
			
			draw_sprite(sprite_get("display"), 1, view_get_xview() + 478, view_get_yview() + 400);

			draw_debug_text(view_get_xview() + 492, view_get_yview() + 383, "What will you say?");		
			draw_debug_text(view_get_xview() + 510, view_get_yview() + 402, optionselect[chatindex]); // Option 1
			
			if (DG_visual_timer >= 20) {
				switch (Cursor){ // Cursor Selector
					case 1:
						draw_sprite(sprite_get("cursor"), get_gameplay_time() / 4, view_get_xview() + 500, view_get_yview() + 402);
					break;
					case 2:
						draw_sprite(sprite_get("cursor"), get_gameplay_time() / 4, view_get_xview() + 500, view_get_yview() + 422);			
					break;
					case 3:
						draw_sprite(sprite_get("cursor"), get_gameplay_time() / 4, view_get_xview() + 500, view_get_yview() + 442);
					break;
				}		
					
			// Choice Selector
			// QOL holding Up/Down makes it slowly speed up faster and faster (Has no real use but it's neat)
				if (down_down || up_down){
					held_delay++;
					
					if (held_delay == 1 || held_delay == 15 || held_delay == 30 || held_delay == 40 || held_delay == 50 || held_delay == 60 || held_delay == 70 || held_delay == 75 || held_delay == 80 || held_delay == 85 || held_delay == 90 || held_delay == 95 || held_delay >= 100){
						if (held_delay < 100 || held_delay > 100 && Cursor == 1){ // Plays Sound on select
							sound_play(sound_get("Highlight Selection")); // Plays Sound every Third option once it reached super speed mode
						}
						if (down_down){
							if (Cursor < 3){
								Cursor++;
							}
							else{
								Cursor = 1;
							}
						}
						else{
							if (Cursor > 1){
								Cursor--;
							}
							else{
								Cursor = 3;
							}
						}
					}
				}
			// Resets holding mode timer when not holding Up/Down
				if (!down_down && !up_down){
					held_delay = 0;
				}
			// Actual Selection process
				if (attack_pressed || jump_pressed){
					sound_play(sound_get("Highlight Selection")); // Plays Sound every Third option once it reached super speed mode
					switch (Cursor){
						case 1: 
							Select = answerselect[0];
						break;
						case 2: 
							Select = answerselect[1];
						break;
						case 3: 
							Select = answerselect[2];
						break;
					}
//					soundReaction = soundSelect[dialogueSequence][Cursor-1];
					if (is_Double[Cursor - 1] == true){
						DG_visual_state = 3;
						chatindex = return_Double[Cursor - 1]
					}
					else {
						DG_visual_state = 1;
						chatindex = Select;
					}
					DG_visual_timer = 0;
				}
			}	
		}
	// End Response Mode
		
	// Double Display - Double Response Mode
		if (DG_visual_state == 3){
						DG_visual_timer++;

			// Display Left side
			if (expression_left > 1 && expression_left < 20 && adopts_color_left){

				giik_please_fix_basecast_shaders_already_left = true;

				if (expression_left == 10){
					draw_sprite_ext(sprite_get("bounty_layer"), 1, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
				}
			}
			else {
				
				if (workshop_left){
					if (adopts_color_left){
						workshop_left = true;
					}
					else {
						draw_sprite_ext(custom_left, expression_left, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
					}
				}
				else {
					if (adopts_color_right){
						shader_start();
						draw_sprite_ext(basecast_portraits, expression_left, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
						shader_end();
					}
					else {
						draw_sprite_ext(basecast_portraits, expression_left, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
					}
				}
			}

			// Player Mask
			if (expression_left = 1 && !workshop_left){
				draw_sprite_ext(sprite_get("Player_mask"), 0, view_get_xview() - 40, view_get_yview(), 1, 1, 0,  get_player_hud_color(player), 1)
			}
			
			// Displays Dialogue
			draw_sprite(sprite_get("display"), 1, view_get_xview() - 2, view_get_yview() + 400);
			draw_debug_text(view_get_xview() + 16, view_get_yview() + 393, dialogue[chatindex]); // Line 1
			
			// Displays Right side
			if (expression_right > 1 && expression_right < 20 && adopts_color_right){

				giik_please_fix_basecast_shaders_already_right = true;

				if (expression_right == 10){
					draw_sprite_ext(sprite_get("bounty_layer"), 1, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1);
				}
			}
			else {
				if (workshop_right){
					if (adopts_color_right){
						workshop_right = true;
					}
					else {
						draw_sprite_ext(custom_right, expression_right, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
					}
				}
				else {
					if (adopts_color_right){
						shader_start();
						draw_sprite_ext(basecast_portraits, expression_right, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1)			
						shader_end();
					}
					else {
						draw_sprite_ext(basecast_portraits, expression_right, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1)
					}
				}
			}
			// Player Mask
			if (expression_right = 1 && !workshop_right){
				draw_sprite_ext(sprite_get("Player_mask"), 0, view_get_xview() + 1000, view_get_yview(), -1, 1, 0,  get_player_hud_color(player), 1)
			}
			
			draw_sprite(sprite_get("display"), 1, view_get_xview() + 478, view_get_yview() + 400);

			if (DG_visual_timer >= 20){
				draw_sprite(sprite_get("cursor2"), get_gameplay_time() / 4, view_get_xview() + 444, view_get_yview() + 455);
				if (attack_pressed || jump_pressed){
					sound_play(sound_get("Highlight Selection")); // Plays Sound every Third option once it reached super speed mode
					switch (chattingoptions[chatindex]){
						case 1:
							DG_visual_timer = 0;
							DG_visual_state = 2;
						break;
						case 2:
							chatindex = nextindex;
							DG_visual_timer = 0;
							DG_visual_state = 1;
						break;
						case 3:
							DG_visual_timer = 0;
							isTaunt = false;
							exit;
						break;
					}
				}
			}
		}
	// End Double Response Mode
}
*/