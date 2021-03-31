
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

switch(get_player_color(player)){
	case 1: // Blue (Lancer)
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
	case 11: // Frisk
		arena_title = "The Fallen Child";
		break;
	case 12: // Pride
		pride = true;
		arena_title = "LGBTQ Rights!";
		break;
	case 14: // Kaho (for Giik)
		arena_title = "im";
		arena_short_name = "Giik"
		break;
	case 15: // Seggo
		arena_title = "Best Kris Ever";
		arena_short_name = "Seggo"
		break;
	case 16: // OBAMA
		arena_title = "The Legend";
		break;
	case 17: // Roy's Our Boy
		arena_title = "The Young Lion";
		break;
	case 18: // Chrome
		arena_title = "Prince of Ylisse";
		break;
	case 20: // Jotaro
		arena_title = "(menacing)";
		break;
	case 21: // Link
		arena_title = "Champion of Hyrule";
		break;
	case 22: // Cloud
		arena_title = "SOLDIER 1st Class";
		break;
	case 23: // Hey SpriteStar
		arena_title = "Monster Addict";
		break;
	case 24: // Clairen
		arena_title = "Fire's Last Hope";
		break;
	case 26: // Adventure Time!
		arena_title = "The Human of Ooo";
		break;
	case 27: // Adora IG
		arena_title = "The Mighty She-Ra";
		break;
	case 28: // Bow Chan
		arena_title = "The Lovesick";
		break;
	case 29: // Masked Man
		arena_title = "The Masked Man";
		break;
	case 30: // CURSED
		for(i = 0; i < 8; i++){
				set_character_color_shading(i, 0);
		}
		break;
	case 31:	// BLM
		arena_title = "Black Lives Matter";
		SkinExtraColors = [
			[ //Susie
				$f7e700, //hair
				$955f47, //body
				$3d3c3e, //jacket
				$040404, //jacket 2
				$3d3c3e, //axe handle
				$E9E9E9, //axe head
				$f7e700, //axe blade
				$f7e700 //gold
			],
			[ //Ralsei
				$fffafd, //green
				$7f7f7d, //green shad
				$f7e700, //scarf
				$3d3c3e, //fluffy
				$040404 //fluffy outline
			],
			[ //Jevil
				$fffafd, //Blurple
				$3d3c3e, //Black
				$f7e700, //Green
				$f7e700, //Yellow
				$3d3c3e, //Blade
				$955f47 //Skin
			],
			[ //Lancer
				$f7e700, //blue
				$3d3c3e, //black
				$040404, //dark black
				$fffafd //white
			]
		]
		break;
}

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

#define SetArticleCol(num, col, alpha)
//set_article_color_slot(num, 255, 127, 64, alpha)
set_article_color_slot(num, colour_get_blue(col), colour_get_green(col), colour_get_red(col), alpha)