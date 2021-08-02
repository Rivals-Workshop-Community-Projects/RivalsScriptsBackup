//
//draw_set_font(asset_get("medFont"));
//draw_text_color(temp_x + 160, temp_y - 20, string(nanaDamage) +"%", c_white, c_white, c_white, c_white, 1)
//draw_set_font(asset_get("fName"));
if !is_nana {
	

if "nana_state" !in self && !custom_clone {
	shader_start();
	draw_sprite_ext(sprite_get("hudStare"), 0, temp_x + 160, temp_y - 32, 2, 2, 0, c_white, 1)
	shader_end();

	if nanaDamage < 10 {
	draw_debug_text(temp_x + 172, temp_y + 10, string(nanaDamage) +"%")
	} else {
		if nanaDamage < 100 {
			draw_debug_text(temp_x + 164, temp_y + 10, string(nanaDamage) +"%")
		} else {
			draw_debug_text(temp_x + 156, temp_y + 10, string(nanaDamage) +"%")
		}
	}
}


//Cooldown Stuff

//Specials
if army.move_cooldown[AT_NSPECIAL] = 0 {
	draw_sprite_ext(sprite_get("hudCooldown"), 2, temp_x + hudShiftX + 0, temp_y + hudShiftY - 8, 4,4, 0, c_white, 1)
} else {
	draw_sprite_ext(sprite_get("hudCooldown"), 3, temp_x + hudShiftX + 0, temp_y + hudShiftY - 8, 4,4, 0, c_white, 1)
}
if army.move_cooldown[AT_FSPECIAL] = 0 {
	draw_sprite_ext(sprite_get("hudCooldown"), 2, temp_x + hudShiftX - 8, temp_y + hudShiftY - 8, 4,4, 0, c_white, 1)
} else {
	draw_sprite_ext(sprite_get("hudCooldown"), 3, temp_x + hudShiftX - 8, temp_y + hudShiftY - 8, 4,4, 0, c_white, 1)
}
if army.move_cooldown[AT_DSPECIAL] = 0 {
	draw_sprite_ext(sprite_get("hudCooldown"), 2, temp_x + hudShiftX + 0, temp_y + hudShiftY + 0, 4,4, 0, c_white, 1)
} else {
	draw_sprite_ext(sprite_get("hudCooldown"), 3, temp_x + hudShiftX + 0, temp_y + hudShiftY + 0, 4,4, 0, c_white, 1)
}
if army.move_cooldown[AT_USPECIAL] = 0 {
	draw_sprite_ext(sprite_get("hudCooldown"), 2, temp_x + hudShiftX + 0, temp_y + hudShiftY - 16, 4,4, 0, c_white, 1)
} else {
	draw_sprite_ext(sprite_get("hudCooldown"), 3, temp_x + hudShiftX + 0, temp_y + hudShiftY - 16, 4,4, 0, c_white, 1)
}
if army.has_airdodge != 0 {
	draw_sprite_ext(sprite_get("hudCooldown"), 10, temp_x + hudShiftX - 8, temp_y + hudShiftY - 16, 4,4, 0, c_white, 1)
} else {
	draw_sprite_ext(sprite_get("hudCooldown"), 11, temp_x + hudShiftX - 8, temp_y + hudShiftY - 16, 4,4, 0, c_white, 1)
}

//Other stuff doesn't need it


//DinoBrowser
if canTutorial == 1 {
	if tutorialDisplay == 1 {
		shader_start();
			draw_sprite_ext(sprite_get("hudScreen"), 11, 480, 270, 1,1, 0, c_white, 1)
			
	//Buttons
		
			draw_sprite( sprite_get("hudArrow"), round((get_gameplay_time() % 32) /8), tutorialX - 12, tutorialY + 404 + (tutorialArrow * 20));
			
		shader_end();
			//Header Text
			draw_debug_text(tutorialX, tutorialY, "Page " + string(tutorialPage) + " / " + string(tutorialPageTotal))
			draw_debug_text(tutorialX + 540, tutorialY,  "Version: V1.3" )
			draw_debug_text(tutorialX + 540, tutorialY + 20,  "Release: 8/2/2020" )
			//Footer Text End
			
			//Footer Text
			draw_debug_text(tutorialX, tutorialY + 384 - 15, "Taunt to Confirm & Up/Down to move. Shield to Leave")
			draw_debug_text(tutorialX, tutorialY + 384 + 15, "Next Page")
			draw_debug_text(tutorialX, tutorialY + 384 + 35, "Last Page")
			draw_debug_text(tutorialX, tutorialY + 384 + 55, "Change Log")
			draw_debug_text(tutorialX, tutorialY + 384 + 75, "Debug Variables " + string(debug ) )
			draw_debug_text(tutorialX, tutorialY + 384 + 95, "Exit")

			
			draw_debug_text(tutorialX + 572, tutorialY + 384 + 75, "Created by DinoBros")
			draw_debug_text(tutorialX + 572, tutorialY + 384 + 95, "twitter.com/DinoBros_")
			//Footer Text End
			
			
			//Body Text
			
			
			
			
			switch(tutorialPage) { 
				// 20 is a line space or an indent
				case 1: //Float
					//Header (Title)
					draw_debug_text(tutorialX, tutorialY + 20,  "General")
					//Body
					draw_debug_text(tutorialX, tutorialY + 60, "Info:" )
					draw_debug_text(tutorialX + 20, tutorialY + 80, "Mone is the Anemone. I would classify him as a ZONER with command grabs." )
					draw_debug_text(tutorialX + 20, tutorialY + 100, "Kash is the Clownfish. I would classify him as a RUSHDOWN with negative disjoints" )
					draw_debug_text(tutorialX + 20, tutorialY + 120, "Together, they are The Symbiotic Dio, Kash & Mone. They are a puppet character." )
					
					draw_debug_text(tutorialX, tutorialY + 160, "Gameplay:" )
					draw_debug_text(tutorialX + 20, tutorialY + 180, "They share inputs to attack in a desynced manner with different movesets." )
					draw_debug_text(tutorialX + 20, tutorialY + 200, "Pressing NSPECIAL or TAUNT will let you have freedom over Kash (Clownfish)." )
					draw_debug_text(tutorialX + 40, tutorialY + 220, "NSPECIAL cancels when you press NSPECIAL, when an opponent is near, or knocked back" )
					draw_debug_text(tutorialX + 40, tutorialY + 240, "TAUNT is canceled by pressing taunt again or when knocked back." )
					
					draw_debug_text(tutorialX, tutorialY + 280, "Hud:" )
					draw_debug_text(tutorialX + 20, tutorialY + 300, "Kash's (Clownfish) Percent is below the image of himself and will go up as he is damaged." )
					draw_debug_text(tutorialX + 20, tutorialY + 320, "The red squares show when Kash (Clownfish) can use a certain special move based on direction" )
					draw_debug_text(tutorialX + 20, tutorialY + 340, "The grey square is wheter or not Kash (Clownfish) has his airdodge or not." )
					
					shader_start();
					draw_sprite( sprite_get("idle") , round((get_gameplay_time() % 40) / 6.6), tutorialX + 672, tutorialY + 128);
					draw_sprite( sprite_get("f_idle") , round((get_gameplay_time() % 60) / 8), tutorialX + 672, tutorialY + 220);
					shader_end();
				break;
				
				case 2: //Float
					//Header (Title)
					draw_debug_text(tutorialX, tutorialY + 20,  "Mone - General")
					//Body
					draw_debug_text(tutorialX , tutorialY + 60, "Mone is the Anemone, I would classify him as a Zoner with command grabs." )
					draw_debug_text(tutorialX , tutorialY + 80, "He is a slow moving character with long range and slow frame data." )
					draw_debug_text(tutorialX + 20 , tutorialY + 100, "Using certain moves will give him a speed boost to compensate." )
					draw_debug_text(tutorialX , tutorialY + 120, "Mone is a very slippery fighter with a slippery wave dash." )
					draw_debug_text(tutorialX + 20, tutorialY + 140, "Use the momentum from various methods to use sliding attacks." )
					draw_debug_text(tutorialX + 20, tutorialY + 160, "Due to the slidy nature of Mone, I made it so strongs can used offledge." )
					
					draw_debug_text(tutorialX , tutorialY + 200, "Personal Experience:" )
					draw_debug_text(tutorialX + 20 , tutorialY + 220, "Mone should try to get most kills off the top because of his strong Vertical Angled Moves." )
					draw_debug_text(tutorialX + 20 , tutorialY + 240, "NSPECIAL is quite risky so protect Mone with Kash's quick moves" )
					
					draw_debug_text(tutorialX , tutorialY + 280, "Cancels/Other:" )
					draw_debug_text(tutorialX + 20 , tutorialY + 300, "UTILT can be held to increase damage a bit. Kash can attack during this to get more damage/kills." )
					draw_debug_text(tutorialX + 20 , tutorialY + 320, "USPECIAL can be walljump cancelled at any point. USPECIAL can be plat-dropped" )
					draw_debug_text(tutorialX + 20 , tutorialY + 340, "Extra Hitpause on Tentacle Moves: B/F/N/UAIR, D/F/USTRONG, D/FTILT, FSPECIAL, JAB, and DATTACK " )
					
					shader_start();
					draw_sprite( sprite_get("idle") , round((get_gameplay_time() % 40) / 6.6), tutorialX + 672, tutorialY + 128);
					shader_end();
				break;
				
				case 3: //Float
					//Header (Title)
					draw_debug_text(tutorialX, tutorialY + 20,  "Mone - Grabs 1")
					//Body
					draw_debug_text(tutorialX, tutorialY + 60, "The following moves have Command Grabs, NSPECIAL, USTRONG, and UAIR." )
					draw_debug_text(tutorialX + 20, tutorialY + 80, "When viewing hitboxes, the command grabs are blue hitboxes." )
					draw_debug_text(tutorialX, tutorialY + 100, "FSPECIAL is a grab-like move, but doesn't initate the throw. More Detail Later." )
					draw_debug_text(tutorialX, tutorialY + 120, "Each of these can hit Bubble and Kash and will restore Kash's bubble." )
		
					
					shader_start();
					draw_sprite( sprite_get("nspecial") , round((get_gameplay_time() % 60) / (60 / 7) ), tutorialX + 64, tutorialY + 336);
					draw_sprite_ext(sprite_get("nspecial_hurt"), round((get_gameplay_time() % 60) / (60 / 7) ), tutorialX + 64, tutorialY + 336, 1, 1, 0, c_white, .5)
					
					draw_sprite( sprite_get("ustrong") , round((get_gameplay_time() % 60) / (60 / 6)), tutorialX + 196, tutorialY + 336);
					draw_sprite_ext(sprite_get("ustrong_hurt"), round((get_gameplay_time() % 60) / (60 / 6) ), tutorialX + 196, tutorialY + 336, 1, 1, 0, c_white, .5)
					
					draw_sprite( sprite_get("uair") , round((get_gameplay_time() % 60) / (60 / 8)), tutorialX + 352, tutorialY + 336);
					draw_sprite_ext(sprite_get("uair_hurt"), round((get_gameplay_time() % 60) / (60 / 8)), tutorialX + 352, tutorialY + 336, 1, 1, 0, c_white, .5)
					
					draw_sprite( sprite_get("fspecial") , round((get_gameplay_time() % 60) / (60 / 8)), tutorialX + 512, tutorialY + 336);
					draw_sprite_ext(sprite_get("fspecial_hurt"), round((get_gameplay_time() % 60) / (60 / 8)), tutorialX + 512, tutorialY + 336, 1, 1, 0, c_white, .5)
					shader_end();
				break;
				
				case 4: //Float
					//Header (Title)
					draw_debug_text(tutorialX, tutorialY + 20,  "Mone - Grabs 2")
					//Body
					draw_debug_text(tutorialX, tutorialY + 60, "NSPECIAL, USTRONG, or UAIR will initate a throw." )
					draw_debug_text(tutorialX + 20, tutorialY + 80, "Grabbing an opponent launches them upwards." )
					draw_debug_text(tutorialX + 20, tutorialY + 100, "Grabbing a Bubble/Kash moves them around." )
					draw_debug_text(tutorialX, tutorialY + 120, "Only the endlag of a throw has a hurtbox." )

					draw_debug_text(tutorialX, tutorialY + 160, "NSPECIAL is trap you can set to have Kash free roam" )
					draw_debug_text(tutorialX + 20, tutorialY + 180, "NSPECIAL activates automatically if your opponent is close enough" )
					draw_debug_text(tutorialX + 20, tutorialY + 200, "NSPECIAL can be activated early by pressing Special with no other direction inputed" )
					draw_debug_text(tutorialX, tutorialY + 220, "Gives a speed boost when activated" )
					draw_debug_text(tutorialX, tutorialY + 240, "Reversible by holding opposite direction or Shield." )

					draw_debug_text(tutorialX, tutorialY + 280, "FSPECIAL interacts with players and platform" )
					draw_debug_text(tutorialX + 20, tutorialY + 300, "a Successful hit will give Mone a big speed boost" )
					draw_debug_text(tutorialX + 40, tutorialY + 320, "If Mone hits a player, he can jump cancel the fspecial." )
		
					shader_start();
						draw_sprite( sprite_get("throw") , round((get_gameplay_time() % 60) / (60 / 7)), tutorialX + 548, tutorialY + 192);
						draw_sprite_ext(sprite_get("throw_hurt"), round((get_gameplay_time() % 60) / (60 / 7)), tutorialX + 548, tutorialY + 192, 1, 1, 0, c_white, .5)
						
						draw_sprite( sprite_get("nspecial") , round((get_gameplay_time() % 60) / (60 / 7)), tutorialX + 672, tutorialY + 256);
						draw_sprite_ext(sprite_get("nspecial_hurt"), round((get_gameplay_time() % 60) / (60 / 7)), tutorialX + 672, tutorialY + 256, 1, 1, 0, c_white, .5)
					
						draw_sprite( sprite_get("fspecial") , round((get_gameplay_time() % 60) / (60 / 8)), tutorialX + 512, tutorialY + 336);
						draw_sprite_ext(sprite_get("fspecial_hurt"), round((get_gameplay_time() % 60) / (60 / 8)), tutorialX + 512, tutorialY + 336, 1, 1, 0, c_white, .5)
					shader_end();
				break;
				
				case 5: //Float
					//Header (Title)
					draw_debug_text(tutorialX, tutorialY + 20,  "Mone - Grabs 3")
					//Body
					draw_debug_text(tutorialX, tutorialY + 60, "UAIR is both a Grab and a Kill Move" )
					draw_debug_text(tutorialX + 20, tutorialY + 80, "If you grab the opponent and fastfall quickly onto a plat you will cancel the throw" )
					draw_debug_text(tutorialX + 40, tutorialY + 100, "This cancel has set knockback and will work at any %" )
		
					shader_start();
						draw_sprite( sprite_get("uair") , round((get_gameplay_time() % 60) / (60 / 8)), tutorialX + 512, tutorialY + 256);
						draw_sprite_ext(sprite_get("uair_hurt"), round((get_gameplay_time() % 60) / (60 / 8)), tutorialX + 512, tutorialY + 256, 1, 1, 0, c_white, .5)
					shader_end();
				break;
				
				case 6: //Float
					//Header (Title)
					draw_debug_text(tutorialX, tutorialY + 20,  "Mone - Specials")
					//Body
					draw_debug_text(tutorialX, tutorialY + 60, "NSPECIAL and FSPECIAL were covered in Grabs 2, go to page 4 for a refresher" )
					
					draw_debug_text(tutorialX, tutorialY + 100, "USPECIAL is a basic recovery option with a large hitbox and a good finisher." )
					draw_debug_text(tutorialX + 20, tutorialY + 120, "USPECIAL helps Kash's recovery, but Kash can hold down to not be effected.") 
					draw_debug_text(tutorialX + 20, tutorialY + 140, "Kash cannot use USPECIAL when above Mone.") 

					
					draw_debug_text(tutorialX, tutorialY + 240, "DSPECIAL spawns in a bubble that acts like a player, but cannot attack." )
					draw_debug_text(tutorialX + 20, tutorialY + 260, "Bubble will slowly move if it's too close to a blastzone" )
					draw_debug_text(tutorialX + 20, tutorialY + 280, "Bubble is extremely fragile and breaks off of one hit" )
					draw_debug_text(tutorialX, tutorialY + 300, "DAIR can be used to get a vertical boost off of Bubble/Kash" )
					draw_debug_text(tutorialX, tutorialY + 320, "Kash can recover his bubble state by being inside of Bubble when he has no bubble" )

					shader_start();
						draw_sprite( sprite_get("uspecial") , round((get_gameplay_time() % 60) / (60 / 10)), tutorialX + 256, tutorialY + 232);
						draw_sprite_ext(sprite_get("uspecial_hurt"), round((get_gameplay_time() % 60) / (60 / 10)), tutorialX + 256, tutorialY + 232, 1, 1, 0, c_white, .5)
						
						draw_sprite( sprite_get("dspecial") , round((get_gameplay_time() % 60) / (60 / 10)), tutorialX + 640, tutorialY + 320);
						draw_sprite_ext(sprite_get("dspecial_hurt"), round((get_gameplay_time() % 60) / (60 / 10)), tutorialX + 640, tutorialY + 320, 1, 1, 0, c_white, .5)
					shader_end();
				break;
				
				case 7: //Float
					//Header (Title)
					draw_debug_text(tutorialX, tutorialY + 20,  "Kash - General")
					//Body
					draw_debug_text(tutorialX, tutorialY + 60, "Kash has two states: Bubble and No Bubble. He will always want to have Bubble." )
					draw_debug_text(tutorialX + 20, tutorialY + 80, "Bubble state makes Kash floaty and have .5 kb_adj." )
					draw_debug_text(tutorialX + 20, tutorialY + 100, "Bubbleless state makes Kash weak and go into pratfall on hit." )
					draw_debug_text(tutorialX + 40, tutorialY + 120, "He only has one attack that gives him a slight vertical boost in this state" )
					draw_debug_text(tutorialX, tutorialY + 140, "Bubble can be restored on Death, Being grabbed by Mone, or Being in a placed Bubble" )
					draw_debug_text(tutorialX, tutorialY + 180, "Kash loses access to specials when Mone is in normal states so that Kash won't SD easily" )
					draw_debug_text(tutorialX + 20, tutorialY + 200, "With Mone NSPECIAL, Kash gains access to USPECIAL, FSPECIAL and DSPECIAL." )
					draw_debug_text(tutorialX + 40, tutorialY + 220, "Kash NSPECIAL can be gained if Mone is in Taunt or Taunt is held down during Mone NSPECIAL." )
					
					draw_debug_text(tutorialX + 20, tutorialY + 260, "Kash is freely actionable when ever Mone is in an attack." )

					shader_start();
					draw_sprite( sprite_get("f_idle") , round((get_gameplay_time() % 60) / (60 / 8)), tutorialX + 672, tutorialY + 128);
					draw_sprite( sprite_get("f_die") , round((get_gameplay_time() % 21) / (21 / 7)), tutorialX + 672, tutorialY + 160);
					shader_end();
				break;
				
				
				case 8: //Float
					//Header (Title)
					draw_debug_text(tutorialX, tutorialY + 20,  "Kash - Moves")
					//Body
					draw_debug_text(tutorialX, tutorialY + 60, "NSPECIAL is a rollout that can be held to increase release speed. Higher speeds make it easier to SD." )
					draw_debug_text(tutorialX + 20, tutorialY + 80, "There is an audio cue for when speed is maxed out" )
					draw_debug_text(tutorialX + 20, tutorialY + 100, "Can be jump cancelled on the ground" )

					draw_debug_text(tutorialX, tutorialY + 140, "FSPECIAL is lunge that only has a forwards sending spike hitbox that loses bubble on usage." )
					draw_debug_text(tutorialX, tutorialY + 160, "DSPECIAL is a ground pound that gives a little hop if it hits a(n) opponent/bubble/ground." )
					draw_debug_text(tutorialX, tutorialY + 180, "USPECIAL is a big jump that loses bubble on usage" )
					
					draw_debug_text(tutorialX, tutorialY + 220, "Letting go of a direction when using FAIR reduces Kash's movement" )

					shader_start();
						draw_sprite( sprite_get("f_nspecial") , round((get_gameplay_time() % 60) / (60 / 12)), tutorialX + 32, tutorialY + 320);
						draw_sprite_ext(sprite_get("f_nspecial_hurt"), round((get_gameplay_time() % 60) / (60 / 12)), tutorialX + 32, tutorialY + 320, 1, 1, 0, c_white, .5)
						
						draw_sprite( sprite_get("f_fspecial") , round((get_gameplay_time() % 60) / (60 / 11)), tutorialX + 128, tutorialY + 320);
						draw_sprite_ext(sprite_get("f_fspecial_hurt"), round((get_gameplay_time() % 60) / (60 / 11)), tutorialX + 128, tutorialY + 320, 1, 1, 0, c_white, .5)
						
						draw_sprite( sprite_get("f_dspecial") , round((get_gameplay_time() % 60) / (60 / 9)), tutorialX + 288, tutorialY + 352);
						draw_sprite_ext(sprite_get("f_dspecial_hurt"), round((get_gameplay_time() % 60) / (60 / 9)), tutorialX + 288, tutorialY + 352, 1, 1, 0, c_white, .5)
						
						draw_sprite( sprite_get("f_uspecial") , round((get_gameplay_time() % 60) / (30 / 3)), tutorialX + 416, tutorialY + 352);
						draw_sprite_ext(sprite_get("f_uspecial_hurt"), round((get_gameplay_time() % 60) / (30 / 3)), tutorialX + 416, tutorialY + 352, 1, 1, 0, c_white, .5)
						
						draw_sprite( sprite_get("f_fair") , round((get_gameplay_time() % 60) / (30 / 3)), tutorialX + 512, tutorialY + 320);
						draw_sprite_ext(sprite_get("f_fair_hurt"), round((get_gameplay_time() % 60) / (30 / 3)), tutorialX + 512, tutorialY + 320, 1, 1, 0, c_white, .5)
					shader_end();
				break;

				case 9: //Advanced
					//Header (Title)
					draw_debug_text(tutorialX, tutorialY + 20,  "Advanced Techniques")
					//Body
					draw_debug_text(tutorialX, tutorialY + 60, "Damage Combos:" )
					draw_debug_text(tutorialX + 20, tutorialY + 80, "Mone UTILT into Kash DAIR using strong button can be comboed into another Mone UTILT" )
					
					draw_debug_text(tutorialX, tutorialY + 100, "Kill Confirms: (Basically ways to get a guranteed kill at kill %'s)" )
					draw_debug_text(tutorialX + 20, tutorialY + 120, "Mone UTILT into Kash charged FSTRONG. (Very Consistent any%)" )
					draw_debug_text(tutorialX + 20, tutorialY + 140, "Mone NAIR into Mone FAIR (Consistent mid-high% based on Di Read)" )
					draw_debug_text(tutorialX + 20, tutorialY + 160, "Mone NAIR into Mone Double Jump UAIR (Low Consistency mid-high% and based on Di Read)" )
					draw_debug_text(tutorialX + 20, tutorialY + 180, "Mone USPECIAL on a plat into Mone Plat Drop FAIR. (Consistent any% if positioned correctly)" )
					draw_debug_text(tutorialX + 20, tutorialY + 200, "Mone DTILT into Mone UAIR. (Fairly mid-high% Consistent on DI IN)" )

					draw_debug_text(tutorialX, tutorialY + 220, "Other Kill Options: (Stray is not a combo. Cheese are ways to kill at low %'s)" )
					draw_debug_text(tutorialX + 20, tutorialY + 240, "Stray: Kash hitting opponents into Mone NSPECIAL at high %'s." )
					draw_debug_text(tutorialX + 20, tutorialY + 260, "Stray: Kash FSPECIAL when the opponent is off stage." )
					draw_debug_text(tutorialX + 20, tutorialY + 280, "Stray: Mone sweet spot DAIR." )
					draw_debug_text(tutorialX + 20, tutorialY + 300, "Cheese: Kash DAIR or DSPECIAL into itself." )
					draw_debug_text(tutorialX + 20, tutorialY + 320, "Cheese: Kash FSTRONG in neutral to catch bad di." )

				break;

				case 10: //Float
					//Header (Title)
					draw_debug_text(tutorialX, tutorialY + 20,  "Known Issues that I don't know how to fix")
					//Body
					draw_debug_text(tutorialX, tutorialY + 60, "If Kash is airdodging, it is very likely you will not have access to Mone airdodge." )
					draw_debug_text(tutorialX, tutorialY + 80, "Offscreen indicators are custom, so they won't always match up with the normal indicators" )
					draw_debug_text(tutorialX, tutorialY + 100, "Bubble messes up the camera bit" )
				break;
				
				

				case 999: //Float
					//Header (Title)
					draw_debug_text(tutorialX, tutorialY + 20,  "Change Log")
					//Body
					draw_debug_text(tutorialX, tutorialY + 60, "Kash has a new Down Special." )
					draw_debug_text(tutorialX, tutorialY + 80, "Kash can now do specials during Mone's non-special attacks" )
					draw_debug_text(tutorialX, tutorialY + 100, "Mone FSPECIAL no longer consumes double jump when grounded." )
					draw_debug_text(tutorialX, tutorialY + 120, "If Shield is down during Mone early NSPECIAL, he will reverse his direction." )
					draw_debug_text(tutorialX, tutorialY + 140, "Various AI Improvements and other Quality of Life features." )
					draw_debug_text(tutorialX + 20, tutorialY + 160, "Kash is less restricted and the player has more control over positioning him." )
					draw_debug_text(tutorialX + 20, tutorialY + 180, "Auto recovery based on the lines. Red/Green are stationary. Yellow is Mone based." )
					
					draw_debug_text(tutorialX, tutorialY + 220, "Mone's Throw is a bit weaker now. 1.15 kbs -> 1 kbs. 10 bkb -> 8 bkb" )
					
					draw_debug_text(tutorialX, tutorialY + 260, "A few bug fixes" )
					
					draw_debug_text(tutorialX, tutorialY + 320, "More Details can be found on the Steam Page version history. Only Important things are here." )
					
					 
					
					shader_start();
						//draw_sprite_ext(sprite_get("hudStare"), 0, 240, tutorialY + 60, 24, 24, 0, c_white, .25)
					shader_end();

				break;
				
				default:
				break;
			}
			

			
		
	} else {
		draw_debug_text( temp_x - 8, temp_y - 64, "Shield + Taunt for Tutorial Menu")
	}
}

}

if attack_pressed {
	print("Squish, Squish")
}