//Init Shader

NUM_ALTS = 32; // update this with however many alts you have (it's 32 because Joshua had that many)
if("alt_name" in self || !("ping_color" in self)){ // this ensures that the code doesn't run on the online CSS
    var curAlt = get_player_color(player); // this gets the game's current alt
    if(!sprite_get_bbox_left(sprite_get("dog"))){  // this checks if you've set the real current alt to anything yet
        sprite_change_offset("dog", curAlt, curAlt); // set it
        sprite_change_collision_mask("dog", false, 2, 1, 1, 1, 1, 1); // mark that you've set it
        // this is only necessary so that the real alt variable matches your alt when you start a match in online mode (wouldn't be necessary if online wasn't jank)
    }
    var curRealAlt = sprite_get_xoffset(sprite_get("dog")); // get your real alt
    var prevAlt = sprite_get_yoffset(sprite_get("dog")); // get the previous game alt
    if(curAlt != prevAlt){ // if the game alt has changed
        if((curAlt > prevAlt && curAlt < prevAlt + 8) || curAlt < prevAlt - 8){ // the game alt was increased (accounts for skipping alts due to multiple players and looping back)
            curRealAlt++; // increase real alt
            if(curRealAlt == NUM_ALTS){ // reset the real alt if you've reached the max alts
                curRealAlt = 0;
            }
        } else{ // the game alt was decreased
            if(curRealAlt == 0){ // set the to max real alts if you're at the first alt
                curRealAlt = NUM_ALTS;
            }
            curRealAlt--; // decrease the real alt
        }
    }
   
   sneakyalt = curRealAlt;
   
    // set shading to normal
    for(i = 0; i < 8; i++){ // this is necessary if any your alts adjust the shading so that they don't change the shading for other alts
        set_character_color_shading(i, 1);
    }
    
    // Resets Title
    arena_title = "The Legendary Lightener";
    arena_short_name = "Kris"
 
    // here is where you set the alts [Edit necessary]
    // You have to set the alts for all of the alts, not just the extra ones.
    switch(curRealAlt){
        case 6:
            seasonal = true;
        break;
        case 12:
            pride = true;
        break;
        case 15:
            shilling = true;
        break;
        case 16:
            obama_freed = true;
        break;
        default:
            seasonal = false;
            pride = false; // :(
            shilling = false;
            obama_freed = false;
    }
    
	if (("vman_skinkit_maxcolors" in self || "vman_skinkit_current_color_id" in self) && "SkinExtraColors" in self) {
		//print_debug("Doing the custom cols")
		if ("vman_skinkit_player_colors" in self) {
			//print_debug("Extra col array: "+string(vman_skinkit_player_colors))
			var col_len = array_length_1d(vman_skinkit_player_colors)
			var col_group = [0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3]
			var col_num = [0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 0, 1, 2, 3, 4, 5, 0, 1, 2, 3]
			for (var i = 8; i<col_len; i++) {
				if (vman_skinkit_player_colors[i] != 0) {
					SkinExtraColors[@col_group[i-8]][@col_num[i-8]] = make_color_rgb(vman_skinkit_player_colors[i][0], vman_skinkit_player_colors[i][1], vman_skinkit_player_colors[i][2])
				}
			}
		}
		//print_debug("My col array: "+string(SkinExtraColors))
		SkinAlreadySet = 1 + phone_practice //doesn't work if you don't got a MunoPhone
		//print_debug("Finished the custom cols, doing again? "+string(SkinAlreadySet))
	} else {
		SkinAlreadySet = 1
		//print_debug("Doing the default cols")
		SkinExtraColors = [
			[ //Susie
				$88176A, //hair
				$FF53B6, //body
				$002017, //jacket
				$5F1F9C, //jacket 2
				$7556A1, //axe handle
				$67668C, //axe head
				$3EE9C2, //axe blade
				$FAB13A //gold
			],
			[ //Ralsei
				$4DCC8C, //green
				$32715A, //green shad
				$F31095, //scarf
				$000000, //fluffy
				$32715A //fluffy outline
			],
			[ //Jevil
				$6D6DC0, //Blurple
				$101010, //Black
				$B5E61D, //Green
				$FFF200, //Yellow
				$A6BDD0, //Blade
				$A6BDD0 //Skin
			],
			[ //Lancer
				$5585BD, //blue
				$323232, //black
				$15191D, //dark black
				$F9F9F9 //white
			]
		]
		SusieAlpha = [255, 255, 255, 255, 255, 255, 255, 255]
		RalseiAlpha = [255, 255, 255, 255, 255]
		JevilAlpha = [255, 255, 255, 255, 255, 255]
		LancerAlpha = [255, 255, 255, 255]
		switch(curRealAlt){
			case 0: // Default
				set_character_color_slot(0, 237, 148, 165); //SWORD
				set_character_color_slot(1, 201, 228, 242); //ARMOR
				set_character_color_slot(2, 235, 9, 152); //CAPE
				set_character_color_slot(3, 11, 11, 59); //HAIR
				set_character_color_slot(4, 117, 10, 87); //HILT
				set_character_color_slot(5, 117, 250, 237); //SKIN
				set_character_color_slot(6, 255, 0, 0); //SOUL
				set_character_color_slot(7, 217, 16, 144); //STRONG HIT
				break;
			case 1: // Blue (Lancer)
				set_character_color_slot(5, 255, 255, 255); //SKIN
				set_character_color_slot(1, 70, 129, 185); //ARMOR
				set_character_color_slot(2, 30, 55, 102); //CAPE
				set_character_color_slot(3, 42, 40, 61); //HAIR
				set_character_color_slot(4, 25, 25, 25); //HILT
				set_character_color_slot(0, 200, 200, 255); //SWORD
				set_character_color_slot(6, 0, 63, 255); //SOUL
				set_character_color_slot(7, 255, 255, 255); //STRONG HIT
				arena_title = "Lancer's #1 Fan";
				SkinExtraColors = [
					[ //Susie
						$AC3548, //hair
						$FFFFFF, //body
						$4A2430, //jacket
						$4A2430, //jacket 2
						$AC3548, //axe handle
						$FFFFFF, //axe head
						$AC3548, //axe blade
						$FFFFFF //gold
					],
					[ //Ralsei
						$E8FFF3, //green
						$91BFAE, //green shad
						$35AC92, //scarf
						$244A3C, //fluffy
						$91BFAE //fluffy outline
					],
					[ //Jevil
						$FD9128, //Blurple
						$634978, //Black
						$7E4C56, //Green
						$FF902A, //Yellow
						$9687C3, //Blade
						$9687C3 //Skin
					],
					[ //Lancer
						$100063, //blue
						$E6E1E6, //black
						$15191D, //dark black
						$F9F9F9 //white
					]
				]
				break;
			case 2: // Red (Susie)
				set_character_color_slot(5, 244, 135, 217); //SKIN
				set_character_color_slot(1, 49, 49, 49); //ARMOR
				set_character_color_slot(2, 159, 24, 207); //CAPE
				set_character_color_slot(3, 104, 7, 78); //HAIR
				set_character_color_slot(4, 30, 235, 205); //HILT
				set_character_color_slot(0, 145, 150, 182); //SWORD
				set_character_color_slot(6, 255, 255, 255); //SOUL
				set_character_color_slot(7, 30, 235, 205); //STRONG HIT
				arena_title = "The ?!?";
				SkinExtraColors = [
					[ //Susie
						$0B0B3B, //hair
						$75FAED, //body
						$D3D0F5, //jacket
						$D3D0F5, //jacket 2
						$73245E, //axe handle
						$B37489, //axe head
						$D911A4, //axe blade
						$EB0998 //gold
					],
					[ //Ralsei
						$5585BB, //green
						$325F8F, //green shad
						$FFFFFF, //scarf
						$323232, //fluffy
						$325F8F //fluffy outline
					],
					[ //Jevil
						$4DCC8C, //Blurple
						$32715A, //Black
						$F31095, //Green
						$E8DF2E, //Yellow
						$F31095, //Blade
						$2F2F2F //Skin
					],
					[ //Lancer
						$FFCD35, //blue
						$332C3C, //black
						$101010, //dark black
						$D66E42 //white
					]
				]
				break;
			case 3: // Green (Ralsei)
				set_character_color_slot(5, 39, 38, 38); //SKIN
				set_character_color_slot(1, 45, 49, 45); //ARMOR
				set_character_color_slot(2, 244, 12, 159); //CAPE
				set_character_color_slot(3, 71, 211, 141); //HAIR
				set_character_color_slot(4, 101, 28, 3); //HILT
				set_character_color_slot(0, 237, 237, 118); //SWORD
				set_character_color_slot(6, 0, 166, 0); //SOUL
				set_character_color_slot(7, 0, 166, 81); //STRONG HIT
				arena_title = "The Fun Friend";
				SkinExtraColors = [
					[ //Susie
						$E4BA00, //hair
						$FFFFFF, //body
						$EB0998, //jacket
						$EB0998, //jacket 2
						$E50000, //axe handle
						$E50000, //axe head
						$E50000, //axe blade
						$5E5492 //gold
					],
					[ //Ralsei
						$53FFF6, //green
						$479499, //green shad
						$D3D0F5, //scarf
						$2F2F2F, //fluffy
						$479499 //fluffy outline
					],
					[ //Jevil
						$643214, //Blurple
						$2C1708, //Black
						$C08226, //Green
						$DF9640, //Yellow
						$C08226, //Blade
						$C08226 //Skin
					],
					[ //Lancer
						$88176A, //blue
						$002017, //black
						$002017, //dark black
						$FF53B6 //white
					]
				]
				break;
			case 4: // Black (Jevil)
				set_character_color_slot(5, 158, 184, 206); //SKIN
				set_character_color_slot(1, 110, 111, 189); //ARMOR
				set_character_color_slot(2, 18, 7, 7); //CAPE
				set_character_color_slot(3, 44, 41, 91); //HAIR
				set_character_color_slot(4, 240, 245, 53); //HILT
				set_character_color_slot(0, 160, 177, 196); //SWORD
				set_character_color_slot(6, 211, 54, 221); //SOUL
				set_character_color_slot(7, 181, 230, 29); //STRONG HIT
				arena_title = "The World Revolving";
				SkinExtraColors = [
					[ //Susie
						$625DC2, //hair
						$9687C3, //body
						$101010, //jacket
						$101010, //jacket 2
						$A0BD1C, //axe handle
						$67668C, //axe head
						$E8DF2E, //axe blade
						$E8DF2E //gold
					],
					[ //Ralsei
						$625DC2, //green
						$4845A8, //green shad
						$E8DF2E, //scarf
						$101010, //fluffy
						$4845A8 //fluffy outline
					],
					[ //Jevil
						$D3D0F5, //Blurple
						$13134F, //Black
						$53FFF6, //Green
						$D33BBB, //Yellow
						$ED94A5, //Blade
						$53FFF6 //Skin
					],
					[ //Lancer
						$625DC2, //blue
						$101010, //black
						$101010, //dark black
						$9687C3 //white
					]
				]
				break;
			case 5: // Purple (Scarlet Forest)
				set_character_color_slot(5, 150, 106, 150); //SKIN
				set_character_color_slot(1, 160, 0, 128); //ARMOR
				set_character_color_slot(2, 224, 32, 64); //CAPE
				set_character_color_slot(3, 32, 32, 64); //HAIR
				set_character_color_slot(4, 97, 44, 97); //HILT
				set_character_color_slot(0, 224, 32, 64); //SWORD
				set_character_color_slot(6, 224, 32, 64); //SOUL
				set_character_color_slot(7, 243, 119, 214); //STRONG HIT
				SkinExtraColors = [
					[ //Susie
						$202040, //hair
						$622C63, //body
						$C00080, //jacket
						$C00080, //jacket 2
						$202040, //axe handle
						$67668C, //axe head
						$E02040, //axe blade
						$E02040 //gold
					],
					[ //Ralsei
						$E02040, //green
						$891327, //green shad
						$202040, //scarf
						$2F2F2F, //fluffy
						$891327 //fluffy outline
					],
					[ //Jevil
						$E02040, //Blurple
						$202040, //Black
						$C00080, //Green
						$A00080, //Yellow
						$622C63, //Blade
						$622C63 //Skin
					],
					[ //Lancer
						$E02040, //blue
						$202040, //black
						$15191D, //dark black
						$F9F9F9 //white
					]
				]
				break;
			case 6: // Seasonal
				//colors.gml OR init_shader.gml:
				switch (get_match_setting(SET_SEASON)) {
				  case 1: // valentines
					set_character_color_slot(5, 236, 210, 230 ); //Skin
					set_character_color_slot(1, 224, 179, 207 ); //Armor
					set_character_color_slot(2, 242, 65, 166 ); //Cape
					set_character_color_slot(3, 120, 24, 42 ); //Hair
					set_character_color_slot(4, 255, 79, 130 ); //Hilt
					set_character_color_slot(0, 227, 113, 196 ); //Sword
					set_character_color_slot(6, 209, 27, 161 ); //Soul
					set_character_color_slot(7, 222, 24, 68 ); //Strong Hit
					break;
				  case 2: // summer
					set_character_color_slot(5, 223, 223, 223); //SKIN
					set_character_color_slot(1, 192, 10, 49); //ARMOR
					set_character_color_slot(2, 1, 41, 105); //CAPE
					set_character_color_slot(3, 32, 32, 32); //HAIR
					set_character_color_slot(4, 207, 92, 24); //HILT
					set_character_color_slot(0, 255, 215, 1); //SWORD
					set_character_color_slot(6, 207, 92, 24); //SOUL
					set_character_color_slot(7, 192, 10, 49); //STRONG HIT
					SkinExtraColors = [
						[ //Susie
							$C00A31, //hair
							$DFDFDF, //body
							$202020, //jacket
							$202020, //jacket 2
							$761E45, //axe handle
							$102B8F, //axe head
							$336CE8, //axe blade
							$FFD701 //gold
						],
						[ //Ralsei
							$FFD701, //green
							$D76E00, //green shad
							$C00A31, //scarf
							$2F2F2F, //fluffy
							$D76E00 //fluffy outline
						],
						[ //Jevil
							$C00A31, //Blurple
							$012969, //Black
							$CF5C18, //Green
							$FFD701, //Yellow
							$DFDFDF, //Blade
							$DFDFDF //Skin
						],
						[ //Lancer
							$012969, //blue
							$202020, //black
							$15191D, //dark black
							$DFDFDF //white
						]
					]
					break;
				  case 3: // halloween
					set_character_color_slot(5, 184, 184, 160); //SKIN
					set_character_color_slot(1, 120, 136, 112); //ARMOR
					set_character_color_slot(2, 16, 16, 40); //CAPE
					set_character_color_slot(3, 32, 40, 80); //HAIR
					set_character_color_slot(4, 0, 56, 56); //HILT
					set_character_color_slot(0, 168, 184, 160); //SWORD
					set_character_color_slot(6, 211, 226, 154); //SOUL
					set_character_color_slot(7, 211, 226, 154); //STRONG HIT
					SkinExtraColors = [
						[ //Susie
							$302C28, //hair
							$D9D9D9, //body
							$584E31, //jacket
							$584E31, //jacket 2
							$262420, //axe handle
							$67668C, //axe head
							$E83F3F, //axe blade
							$262525 //gold
						],
						[ //Ralsei
							$FFFFFF, //green
							$FFFFFF, //green shad
							$8AF2B2, //scarf
							$2F2F2F, //fluffy
							$FFFFFF //fluffy outline
						],
						[ //Jevil
							$75CA7E, //Blurple
							$7D2AAB, //Black
							$E5DA1C, //Green
							$DEE82E, //Yellow
							$E5E5E5, //Blade
							$E5E5E5 //Skin
						],
						[ //Lancer
							$2E2E2E, //blue
							$C21B1B, //black
							$2E1717, //dark black
							$FAFEFF //white
						]
					]
					RalseiAlpha = [162, 106, 161, 255, 106]
					break;
				  case 4: // christmas
					set_character_color_slot(5, 141, 236, 130); //SKIN
					set_character_color_slot(1, 255, 252, 252); //ARMOR
					set_character_color_slot(2, 222, 72, 72); //CAPE
					set_character_color_slot(3, 97, 154, 62); //HAIR
					set_character_color_slot(4, 222, 72, 72); //HILT
					set_character_color_slot(0, 253, 235, 232); //SWORD
					set_character_color_slot(6, 222, 72, 72); //SOUL
					set_character_color_slot(7, 222, 72, 72); //STRONG HIT
					SkinExtraColors = [
						[ //Susie
							$DE4848, //hair
							$FFFCFC, //body
							$619A3E, //jacket
							$619A3E, //jacket 2
							$720000, //axe handle
							$FDEBE8, //axe head
							$FFFFFF, //axe blade
							$8DEC82 //gold
						],
						[ //Ralsei
							$8DEC82, //green
							$619A3E, //green shad
							$C00A31, //scarf
							$F9F9F9, //fluffy
							$619A3E //fluffy outline
						],
						[ //Jevil
							$619A3E, //Blurple
							$720000, //Black
							$FDEBE8, //Green
							$F6BEC5, //Yellow
							$FFFCFC, //Blade
							$FFFCFC //Skin
						],
						[ //Lancer
							$DE4848, //blue
							$720000, //black
							$15191D, //dark black
							$FFFFFF //white
						]
					]
					break;
				}
				arena_title = "The Festive Hero";
				break;
			case 7: // Abyss
				set_character_color_slot(5, 141, 131, 188); //SKIN
				set_character_color_slot(1, 79, 61, 94); //ARMOR
				set_character_color_slot(2, 220, 113, 255); //CAPE
				set_character_color_slot(3, 86, 84, 146); //HAIR
				set_character_color_slot(4, 64, 26, 93); //HILT
				set_character_color_slot(0, 228, 246, 255); //SWORD
				set_character_color_slot(6, 179, 70, 215); //SOUL
				set_character_color_slot(7, 217, 113, 255); //STRONG HIT
				SkinExtraColors = [
					[ //Susie
						$565492, //hair
						$9687C3, //body
						$221B2C, //jacket
						$221B2C, //jacket 2
						$5D5192, //axe handle
						$9687C3, //axe head
						$AA44AE, //axe blade
						$5D4459 //gold
					],
					[ //Ralsei
						$5D5192, //green
						$4B4080, //green shad
						$EB0998, //scarf
						$2F2F2F, //fluffy
						$4B4080 //fluffy outline
					],
					[ //Jevil
						$5D5192, //Blurple
						$221B2C, //Black
						$EB0998, //Green
						$ED94A5, //Yellow
						$9687C3, //Blade
						$9687C3 //Skin
					],
					[ //Lancer
						$221B2C, //blue
						$221B2C, //black
						$15191D, //dark black
						$9687C3 //white
					]
				]
				break;
			case 8: // Early Access
				set_character_color_slot(5, 167, 186, 74); //SKIN
				set_character_color_slot(1, 83, 122, 62); //ARMOR
				set_character_color_slot(2, 211, 226, 154); //CAPE
				set_character_color_slot(3, 83, 122, 62); //HAIR
				set_character_color_slot(4, 83, 122, 62); //HILT
				set_character_color_slot(0, 211, 226, 154); //SWORD
				set_character_color_slot(6, 211, 226, 154); //SOUL
				set_character_color_slot(7, 211, 226, 154); //STRONG HIT
				
				for(i = 0; i < 8; i++){
						set_character_color_shading(i, 0);
				}
				SkinExtraColors = [
					[ //Susie
						$486E26, //hair
						$A7BA4A, //body
						$0E2415, //jacket
						$0E2415, //jacket 2
						$537A3E, //axe handle
						$A7BA4A, //axe head
						$A7BA4A, //axe blade
						$A7BA4A //gold
					],
					[ //Ralsei
						$A7BA4A, //green
						$537A3E, //green shad
						$A7BA4A, //scarf
						$0E2415, //fluffy
						$537A3E //fluffy outline
					],
					[ //Jevil
						$486E26, //Blurple
						$0E2415, //Black
						$A7BA4A, //Green
						$A7BA4A, //Yellow
						$A7BA4A, //Blade
						$A7BA4A //Skin
					],
					[ //Lancer
						$486E26, //blue
						$0E2415, //black
						$0E2415, //dark black
						$A7BA4A //white
					]
				]
				break;
			case 9: // Overworld
				set_character_color_slot(5, 255, 184, 0); //SKIN
				set_character_color_slot(1, 255, 255, 0); //ARMOR
				set_character_color_slot(2, 80, 57, 67); //CAPE
				set_character_color_slot(3, 61, 18, 14); //HAIR
				set_character_color_slot(4, 190, 2, 29); //HILT
				set_character_color_slot(0, 201, 197, 201); //SWORD
				set_character_color_slot(6, 255, 144, 0); //SOUL
				set_character_color_slot(7, 255, 255, 255); //STRONG HIT
				arena_title = "Toriel's Kid";
				SkinExtraColors = [
					[ //Susie
						$491C39, //hair
						$AF67AF, //body
						$1A0D18, //jacket
						$1A0D18, //jacket 2
						$5F1F9C, //axe handle
						$E9E9E9, //axe head
						$401647, //axe blade
						$6E52B6 //gold
					],
					[ //Ralsei
						$4DCC8C, //green
						$32715A, //green shad
						$F31095, //scarf
						$FFFFFF, //fluffy
						$ED94A5 //fluffy outline
					],
					[ //Jevil
						$6D6DC0, //Blurple
						$101010, //Black
						$B5E61D, //Green
						$FFF200, //Yellow
						$A6BDD0, //Blade
						$A6BDD0 //Skin
					],
					[ //Lancer
						$5585BD, //blue
						$323232, //black
						$15191D, //dark black
						$F9F9F9 //white
					]
				]
				break;
			case 10: // Noelle
				set_character_color_slot(5, 215, 124, 81); //SKIN
				set_character_color_slot(1, 52, 43, 60); //ARMOR
				set_character_color_slot(2, 255, 255, 255); //CAPE
				set_character_color_slot(3, 234, 168, 35); //HAIR
				set_character_color_slot(4, 38, 174, 72); //HILT
				set_character_color_slot(0, 220, 21, 16); //SWORD
				set_character_color_slot(6, 255, 254, 0); //SOUL
				set_character_color_slot(7, 153, 240, 200); //STRONG HIT
				break;
			case 11: // Frisk
				set_character_color_slot(5, 255, 203, 28); //SKIN
				set_character_color_slot(1, 99, 189, 237); //ARMOR
				set_character_color_slot(2, 197, 42, 192); //CAPE
				set_character_color_slot(3, 57, 15, 10); //HAIR
				set_character_color_slot(4, 117, 51, 39); //HILT
				set_character_color_slot(0, 187, 112, 62); //SWORD
				set_character_color_slot(6, 255, 0, 0); //SOUL
				set_character_color_slot(7, 255, 0, 0); //STRONG HIT
				arena_title = "The Fallen Child";
				break;
			case 12: // Pride
				set_character_color_slot(5, 255, 255, 255); //SKIN
				set_character_color_slot(1, 220, 220, 220); //ARMOR
				set_character_color_slot(2, 255, 0, 255); //CAPE
				set_character_color_slot(3, 25, 25, 25); //HAIR
				set_character_color_slot(4, 32, 32, 32); //HILT
				set_character_color_slot(0, 255, 0, 255); //SWORD
				set_character_color_slot(6, 255, 0, 255); //SOUL
				set_character_color_slot(7, 255, 0, 255); //STRONG HIT
				arena_title = "LGBTQ Rights!";
				break;
			case 13: // Rapetti
				set_character_color_slot(5, 251, 179, 148); //SKIN
				set_character_color_slot(1, 230, 238, 255); //ARMOR
				set_character_color_slot(2, 226, 226, 226); //CAPE
				set_character_color_slot(3, 55, 46, 42); //HAIR
				set_character_color_slot(4, 102, 102, 153); //HILT
				set_character_color_slot(0, 230, 230, 255); //SWORD
				set_character_color_slot(6, 80, 252, 120); //SOUL
				set_character_color_slot(7, 153, 255, 204); //STRONG HIT
				break;
			case 14: // Kaho (for Giik)
				set_character_color_slot(5, 238, 203, 179); //SKIN
				set_character_color_slot(1, 53, 42, 42); //ARMOR
				set_character_color_slot(2, 237, 230, 229); //CAPE
				set_character_color_slot(3, 120, 4, 5); //HAIR
				set_character_color_slot(4, 117, 5, 8); //HILT
				set_character_color_slot(0, 152, 26, 21); //SWORD
				set_character_color_slot(6, 255, 52, 0); //SOUL
				set_character_color_slot(7, 255, 52, 0); //STRONG HIT
				arena_title = "im";
				arena_short_name = "Giik"
				break;
			case 15: // Seggo
				set_character_color_slot(5, 238, 203, 179); //SKIN
				set_character_color_slot(1, 40, 123, 105); //ARMOR
				set_character_color_slot(2, 73, 214, 223, .95);
				set_character_color_slot(3, 36, 35, 33); //HAIR
				set_character_color_slot(4, 150, 150, 152); //HILT
				set_character_color_slot(0, 237, 237, 237, .75);
				set_character_color_slot(6, 255, 255, 255); //SOUL
				set_character_color_slot(7, 255, 255, 255); //STRONG HIT
				arena_title = "Best Kris Ever";
				arena_short_name = "Seggo"
				break;
			case 16: // OBAMA
				set_character_color_slot(5, 117, 75, 75 ); //Skin
				set_character_color_slot(1, 178, 181, 185 ); //Armor
				set_character_color_slot(2, 50, 81, 168 ); //Cape
				set_character_color_slot(3, 23, 22, 33 );
				set_character_color_slot(4, 166, 33, 33); //HILT
				set_character_color_slot(0, 152, 26, 21); //SWORD
				set_character_color_slot(6, 255, 52, 0); //SOUL
				set_character_color_slot(7, 255, 52, 0); //STRONG HIT
				arena_title = "The Legend";
				break;
			case 17: // Roy's Our Boy
				set_character_color_slot(5, 247, 224, 197 ); //Skin
				set_character_color_slot(1, 36, 61, 138 ); //Armor
				set_character_color_slot(2, 136, 48, 48 ); //Cape
				set_character_color_slot(3, 178, 46, 48 ); // HAIR
				set_character_color_slot(4, 235, 224, 164); //HILT
				set_character_color_slot(0, 190, 190, 190 ); //SWORD
				set_character_color_slot(6, 90, 79, 165); //SOUL
				set_character_color_slot(7, 218, 84, 40); //STRONG HIT
				arena_title = "The Young Lion";
				break;
			case 18: // Chrome
				set_character_color_slot(5, 227, 196, 175 ); //Skin
				set_character_color_slot(1, 127, 123, 122 ); //Armor
				set_character_color_slot(2, 236, 234, 237 ); //Cape
				set_character_color_slot(3, 57, 73, 96 ); // HAIR
				set_character_color_slot(4, 153, 67, 52); //HILT
				set_character_color_slot(0, 218, 220, 217 ); //SWORD
				set_character_color_slot(6, 255, 255, 255); //SOUL
				set_character_color_slot(7, 255, 255, 255); //STRONG HIT
				arena_title = "Prince of Ylisse";
				break;
			case 19: // Acid Rainbows
				set_character_color_slot(5, 255, 206, 183 ); //Skin
				set_character_color_slot(1, 193, 52, 209 ); //Armor
				set_character_color_slot(2, 42, 183, 81 ); //Cape
				set_character_color_slot(3, 194, 50, 210 ); // HAIR
				set_character_color_slot(4, 255, 37, 27); //HILT
				set_character_color_slot(0, 255, 37, 27 ); //SWORD
				set_character_color_slot(6, 255, 37, 27); //SOUL
				set_character_color_slot(7, 98, 69, 99); //STRONG HIT (nice)
				break;
			case 20: // Jotaro
				set_character_color_slot(5, 232, 168, 88 ); //Skin
				set_character_color_slot(1, 224, 88, 184 ); //Armor
				set_character_color_slot(2, 88, 88, 248 ); //Cape
				set_character_color_slot(3, 88, 88, 248 ); // HAIR
				set_character_color_slot(4, 200, 136, 8); //HILT
				set_character_color_slot(0, 248, 248, 32 ); //SWORD
				set_character_color_slot(6, 192, 248, 176); //SOUL
				set_character_color_slot(7, 152, 56, 120); //STRONG HIT
				arena_title = "(menacing)";
				break;
			case 21: // Link
				set_character_color_slot(5, 253, 224, 180 ); //Skin
				set_character_color_slot(1, 26, 207, 250 ); //Armor
				set_character_color_slot(2, 142, 147, 185 ); //Cape
				set_character_color_slot(3, 245, 200, 99 ); // HAIR
				set_character_color_slot(4, 4, 52, 88); //HILT
				set_character_color_slot(0, 244, 244, 244 ); //SWORD
				set_character_color_slot(6, 245, 200, 99); //SOUL
				set_character_color_slot(7, 244, 244, 244); //STRONG HIT
				arena_title = "Champion of Hyrule";
				break;
			case 22: // Cloud
				set_character_color_slot(5, 248, 197, 152 ); //Skin
				set_character_color_slot(1, 85, 99, 100 ); //Armor
				set_character_color_slot(2, 154, 21, 14 ); //Cape
				set_character_color_slot(3, 255, 219, 62 ); // HAIR
				set_character_color_slot(4, 154, 172, 174); //HILT
				set_character_color_slot(0, 56, 64, 75 ); //SWORD
				set_character_color_slot(6, 0, 0, 0); //SOUL
				set_character_color_slot(7, 56, 64, 75); //STRONG HIT
				arena_title = "SOLDIER 1st Class";
				break;
			case 23: // Hey SpriteStar
				set_character_color_slot(5, 133, 81, 66 ); //Skin
				set_character_color_slot(1, 177, 171, 180 ); //Armor
				set_character_color_slot(2, 178, 19, 51 ); //Cape
				set_character_color_slot(3, 66, 61, 61 ); // HAIR
				set_character_color_slot(4, 220, 211, 223); //HILT
				set_character_color_slot(0, 245, 245, 245 ); //SWORD
				set_character_color_slot(6, 0, 255, 0); //SOUL
				set_character_color_slot(7, 245, 245, 245); //STRONG HIT
				arena_title = "Monster Addict";
				break;
			case 24: // Clairen
				set_character_color_slot(5, 66, 54, 78 ); //Skin
				set_character_color_slot(1, 181, 181, 181 ); //Armor
				set_character_color_slot(2, 170, 34, 74 ); //Cape
				set_character_color_slot(3, 68, 69, 89 ); // HAIR
				set_character_color_slot(4, 185, 180, 177); //HILT
				set_character_color_slot(0, 254, 13, 107 ); //SWORD
				set_character_color_slot(6, 196, 68, 165); //SOUL
				set_character_color_slot(7, 18, 247, 240); //STRONG HIT
				arena_title = "Fire's Last Hope";
				break;
			case 25: // Strider
				set_character_color_slot(5, 246, 158, 118 ); //Skin
				set_character_color_slot(1, 54, 59, 88 ); //Armor
				set_character_color_slot(2, 245, 39, 15 ); //Cape
				set_character_color_slot(3, 140, 72, 37 ); // HAIR
				set_character_color_slot(4, 202, 204, 191); //HILT
				set_character_color_slot(0, 202, 204, 191 ); //SWORD
				set_character_color_slot(6, 245, 39, 15); //SOUL
				set_character_color_slot(7, 156, 255, 242); //STRONG HIT
				break;
			case 26: // Adventure Time!
				set_character_color_slot(5, 250, 218, 203 ); //Skin
				set_character_color_slot(1, 1, 108, 202 ); //Armor
				set_character_color_slot(2, 10, 164, 218 ); //Cape
				set_character_color_slot(3, 240, 240, 240 ); // HAIR
				set_character_color_slot(4, 38, 40, 63); //HILT
				set_character_color_slot(0, 251, 232, 111 ); //SWORD
				set_character_color_slot(6, 237, 57, 34); //SOUL
				set_character_color_slot(7, 255, 229, 114); //STRONG HIT
				arena_title = "The Human of Ooo";
				break;
			case 27: // Adora IG
				set_character_color_slot(5, 249, 205, 146 ); //Skin
				set_character_color_slot(1, 240, 240, 240 ); //Armor
				set_character_color_slot(2, 233, 106, 83 ); //Cape
				set_character_color_slot(3, 205, 160, 83 ); // HAIR
				set_character_color_slot(4, 240, 175, 19); //HILT
				set_character_color_slot(0, 160, 217, 231 ); //SWORD
				set_character_color_slot(6, 160, 217, 231); //SOUL
				set_character_color_slot(7, 160, 217, 231); //STRONG HIT
				arena_title = "The Mighty She-Ra";
				break;
			case 28: // Bow Chan
				set_character_color_slot(5, 253, 236, 226 ); //Skin
				set_character_color_slot(1, 249, 249, 249 ); //Armor
				set_character_color_slot(2, 52, 39, 39 ); //Cape
				set_character_color_slot(3, 126, 44, 57 ); // HAIR
				set_character_color_slot(4, 50, 50, 50); //HILT
				set_character_color_slot(0, 170, 170, 170 ); //SWORD
				set_character_color_slot(6, 255, 0, 0); //SOUL
				set_character_color_slot(7, 170, 170, 170); //STRONG HIT
				arena_title = "The Lovesick";
				break;
			case 29: // Masked Man
				set_character_color_slot(5, 249, 205, 146 ); //Skin
				set_character_color_slot(1, 200, 218, 208 ); //Armor
				set_character_color_slot(2, 96, 96, 96 ); //Cape
				set_character_color_slot(3, 247, 128, 0 ); // HAIR
				set_character_color_slot(4, 240, 175, 19); //HILT
				set_character_color_slot(0, 248, 248, 0 ); //SWORD
				set_character_color_slot(6, 0, 0, 0); //SOUL
				set_character_color_slot(7, 248, 248, 0); //STRONG HIT
				arena_title = "The Masked Man";
				break;
			case 30: // CURSED
				set_character_color_slot(5, 255, 255, 255 ); //Skin
				set_character_color_slot(1, 255, 255, 255 ); //Armor
				set_character_color_slot(2, 0, 0, 0 ); //Cape
				set_character_color_slot(3, 0, 0, 0 ); // HAIR
				set_character_color_slot(4, 255, 255, 255 ); //HILT
				set_character_color_slot(0, 0, 0, 0 ); //SWORD
				set_character_color_slot(6, 255, 0, 0 ); //SOUL
				set_character_color_slot(7, 255, 0, 0 ); //STRONG HIT
					
				for(i = 0; i < 8; i++){
						set_character_color_shading(i, 0);
				}
				break;
			case 31: // Extended Workshop
				set_character_color_slot(5, 253, 255, 255 );
				set_character_color_slot(1, 207, 207, 207 );
				set_character_color_slot(2, 190, 230, 164 );
				set_character_color_slot(3, 12, 59, 14 );
				set_character_color_slot(4, 26, 82, 29 );
				set_character_color_slot(0, 255, 255, 255 );
				set_character_color_slot(6, 255, 255, 255 );
				set_character_color_slot(7, 255, 255, 255 );
				break;
		}
	}
	
	// this stores the real alt and current game alt (which becomes the previous game alt)
	sprite_change_offset("dog", curRealAlt, curAlt); // x is the actual alt and is the previous normal alt
	
	if ("ExtraColGroup" in self) {
		switch(ExtraColGroup) {
			case 0: //Susie
				SetArticleCol(0, SkinExtraColors[0][0], SusieAlpha[0])
				SetArticleCol(1, SkinExtraColors[0][1], SusieAlpha[1])
				SetArticleCol(2, SkinExtraColors[0][2], SusieAlpha[2])
				SetArticleCol(3, SkinExtraColors[0][3], SusieAlpha[3])
				SetArticleCol(4, SkinExtraColors[0][5], SusieAlpha[4])
				SetArticleCol(5, SkinExtraColors[0][4], SusieAlpha[5])
				SetArticleCol(6, SkinExtraColors[0][6], SusieAlpha[6])
				SetArticleCol(7, SkinExtraColors[0][7], SusieAlpha[7])
				break
			case 1: //Ralsei
				SetArticleCol(0, SkinExtraColors[1][0], RalseiAlpha[0])
				SetArticleCol(1, SkinExtraColors[1][1], RalseiAlpha[1])
				SetArticleCol(2, SkinExtraColors[1][2], RalseiAlpha[2])
				SetArticleCol(3, SkinExtraColors[1][3], RalseiAlpha[3])
				SetArticleCol(4, SkinExtraColors[1][4], RalseiAlpha[4])
				break
			case 2: //Jevil
				SetArticleCol(0, SkinExtraColors[2][0], JevilAlpha[0])
				SetArticleCol(1, SkinExtraColors[2][1], JevilAlpha[1])
				SetArticleCol(2, SkinExtraColors[2][2], JevilAlpha[2])
				SetArticleCol(3, SkinExtraColors[2][3], JevilAlpha[3])
				SetArticleCol(4, SkinExtraColors[2][4], JevilAlpha[4])
				SetArticleCol(5, SkinExtraColors[2][5], JevilAlpha[5])
				break
			case 3: //Lancer
				SetArticleCol(0, SkinExtraColors[3][0], LancerAlpha[0])
				SetArticleCol(1, SkinExtraColors[3][1], LancerAlpha[1])
				SetArticleCol(2, SkinExtraColors[3][2], LancerAlpha[2])
				SetArticleCol(3, SkinExtraColors[3][3], LancerAlpha[3])
		}
	}
}

#define SetArticleCol(num, col, alpha)
//set_article_color_slot(num, 255, 127, 64, alpha)
set_article_color_slot(num, colour_get_blue(col), colour_get_green(col), colour_get_red(col), alpha)