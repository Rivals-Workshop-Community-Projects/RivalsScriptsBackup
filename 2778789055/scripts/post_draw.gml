// MunoPhone Touch code - don't touch
// should be at TOP of file
/*
muno_event_type = 4;
user_event(14);
*/

//draw_debug_text(x-7, y + -100,string(x));

if(attack == AT_FSTRONG && state == PS_ATTACK_GROUND){
    if(window == 1 && strong_charge > 0){
        var anim = 2 + (strong_charge / 4) % 3;
        //draw_sprite(sprite_get("dstrong_hold"), anim, x*2, y*2);
        draw_sprite_ext(sprite_get("fstrong_water"), anim, x + 0*spr_dir, y, 2 * spr_dir, 2, 0, c_white, 1);
    }
}

if(gumbo_ditto = false){
if(gumbo_scalding == true){
    outline_color = [ 140, 0, 0 ];
	init_shader();
}
if(gumbo_scalding == false){
    outline_color = [ 0, 0, 0 ];
	//init_shader();
}
}if(gumbo_ditto = true){
if(is_scalding == true){
    outline_color = [ 140, 0, 0 ];
	init_shader();
}
if(is_scalding == false){
    outline_color = [ 0, 0, 0 ];
	//init_shader();
}
}
var fx_image_index2 = get_gameplay_time() / 10;

if(move_cooldown[AT_FSPECIAL] > 0 || has_shrimp = false || shrimp_in_pot = true){
    if draw_indicator{
	draw_sprite_ext(sprite_get("po_hud"), fx_image_index2, x + 18, y - char_height - hud_offset - 40, 1, 1, 0, c_white, 1);
    }
}

//#region Tutorial WOOOOO ------------------------------------------------------------------

//tutorial
if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
if(attack == AT_TAUNT_2){
	if(window == 1){
	draw_sprite_ext(sprite_get("tutorialbox_spawn"), window_timer/3, x + -200, y - 780, 2, 2, 0, c_white, 1);
	}
}
}

if(tutorial == 1){
	//var box_w = 220;
	//if(!presentation_mode){
	var tb_x1 = x - 74;
    var tb_y1 = y - 140;
	draw_sprite_ext(sprite_get("tutorial_box"), 0, x + -200, y + -180, 2, 2, 0, c_white, 0.95);
	draw_sprite_ext(sprite_get(tutorial_speaker + "_faces"), speaker_face, x + -180, y + -110, 2, 2, 0, c_white, 1);
/*}else{
	var tb_x1 = x - 10;
    var tb_y1 = y - 240;
draw_sprite_ext(sprite_get("sitting-Sheet"), 0, x + -200, y + -280, 3, 3, 0, c_white, 1);	
draw_sprite_ext(sprite_get(tutorial_speaker + "_faces"), speaker_face, x + -110, y + -255, 2, 2, 0, c_white, 1);
}*/
	if(show_arrow){
	draw_sprite_ext(sprite_get("arrow"), get_gameplay_time() / 12, x + 160, y + 30, 2, 2, 0, c_white, 1);	
	}
	
	draw_set_halign(fa_left);
	if(textbox_skipped = false){
    draw_text_trans_outline(tb_x1, tb_y1, textbox_typetext, 16, -1, 1, 1, 0, c_white, c_black, 1);
	}
    draw_set_halign(fa_center);
	if(tutorialpage == 0){
		draw_debug_text(x + -175, y + -190, string("Press Shield to skip"));
		tutorial_speaker = "gumbo"
		speaker_face = 5;
		textbox_text = "... Crap."
	}	if(tutorialpage == 1){
		tutorial_speaker = "po"
		speaker_face = 2;
		textbox_text = "What? What's up?"
	}if(tutorialpage == 2){
		tutorial_speaker = "gumbo"
		speaker_face = 5;
		textbox_text = "This new phone I got after I dropped my last one in the soup we were making yesterday... It has to be broken."
	}if(tutorialpage == 3){
		tutorial_speaker = "gumbo"
		speaker_face = 3;
		textbox_text = "No tips, no cheats, no patch notes, no frame data... 
		I don't really get technology like this, but did we really have to go for something this... cheap?"
	}if(tutorialpage == 4){
		tutorial_speaker = "po"
		speaker_face = 3;
		textbox_text = "Hey, our priorities were gettin' you a new phone that doesn't impede your performance while working. 
		At least this one isn't lagging every few seconds."
	}if(tutorialpage == 5){
		tutorial_speaker = "gumbo"
		speaker_face = 4;
		textbox_text = "Yeah yeah, I hear ya. This'll have to do until that model is improved."
	}if(tutorialpage == 6){
		tutorial_speaker = "gumbo"
		speaker_face = 0;
		textbox_text = "So, what do we do if people want an explanation of what we do? 
		I've lost access to the About Me pages we made."
	}if(tutorialpage == 7){
		tutorial_speaker = "po"
		speaker_face = 1;
		textbox_text = "How about we just explain it ourselves? Like the old fashioned way?"
	}if(tutorialpage == 8){
		draw_debug_text(x + -175, y + -190, string("Press Shield to close"));
	temp_x = x;
	temp_y = y;
	var box_w = 252;
		tutorial_speaker = "po"
		speaker_face = 0;
		textbox_text = "Yo, what'cha wanna learn about?"
		textDraw(temp_x - 34, temp_y - 120, "fName", c_white, 16, box_w, fa_left, 1, false, 1, tutorial_text);
		tutorial_text = "Gimmick
		Nspecial
		Fspecial
		Uspecial
		Dspecial
		Strongs
		Secret Alts
		Workshop Compatibility
		About Po & Gumbo
		Codec?"
		draw_sprite_ext(sprite_get("select_arrow"), get_gameplay_time() / 18, x + -64, y + arrow_heightvar, 2, 2, 0, c_white, 1);
	}
//#region Gimmick ------------------------------------------------------------------	
	if(tutorialpage == 9){
	draw_debug_text(x + -175, y + -190, string("Gimmick: Scalding"));	
		tutorial_speaker = "gumbo"
		speaker_face = 1;
		textbox_text = "Check it. Any attack that Po is involved in will apply a status called 'Scalding'.
		Enemies we scald can be trapped in my trusty cookin' pot! 
		(Check Nspecial for more info about the pot)"
	}	if(tutorialpage == 10){
	draw_debug_text(x + -175, y + -190, string("Gimmick: Scalding"));	
		tutorial_speaker = "gumbo"
		speaker_face = 2;
		textbox_text = "And then I cook 'em alive! So don't think 'bout pickin' fights with us!"
	}if(tutorialpage == 11){
	draw_debug_text(x + -175, y + -190, string("Gimmick: Scalding"));	
		tutorial_speaker = "po"
		speaker_face = 2;
		textbox_text = "You've gotta be the most corniest guy I've met."
	}if(tutorialpage == 12){
	draw_debug_text(x + -175, y + -190, string("Gimmick: Scalding"));	
		tutorial_speaker = "po"
		speaker_face = 4;
		textbox_text = "Fstrong, Dstrong, Ustrong, Fspecial, Uspecial, and Dspecial are the attacks that apply scalding when I'm with Gumbo.
		Too complicated? It's every attack that isn't a normal aside from Nspecial."
	}
//#region Nspecial ------------------------------------------------------------------
	if(tutorialpage == 14){
	draw_debug_text(x + -175, y + -190, string("Nspecial: Cooking Pot"));
		tutorial_speaker = "po"
		speaker_face = 4;
		textbox_text = "Use this attack if you want Gum to throw out his 'trusty cooking pot'.
		It's an article that can be pushed around by everyone in the match."
	}if(tutorialpage == 15){
	draw_debug_text(x + -175, y + -190, string("Nspecial: Cooking Pot"));
		tutorial_speaker = "po"
		speaker_face = 0;
		textbox_text = "If an enemy is scalding and in hitstun near the pot, they'll get trapped in it. Pretty neat, huh?"
	}if(tutorialpage == 16){
	draw_debug_text(x + -175, y + -190, string("Nspecial: Cooking Pot"));
		tutorial_speaker = "gumbo"
		speaker_face = 1;
		textbox_text = "This is my favorite part!
		After a lil' bit, the pot'll get too hot for 'em to handle, and they'll shoot out cause of the heat!"
	}if(tutorialpage == 17){
	draw_debug_text(x + -175, y + -190, string("Nspecial: Cooking Pot"));
		tutorial_speaker = "gumbo"
		speaker_face = 0;
		textbox_text = "But of course, they'd take more damage if the pot was spicier.
		When I hit the pot with my 'tilt attacks', spice will be added to the mix!"
	}if(tutorialpage == 18){
	draw_debug_text(x + -175, y + -190, string("Nspecial: Cooking Pot"));
		tutorial_speaker = "po"
		speaker_face = 3;
		textbox_text = "We can't make the pot any spicier than a tier 3 though.
		If we make it any spicier than that, the food won't sell well, unfortunately."
	}if(tutorialpage == 19){
	draw_debug_text(x + -175, y + -190, string("Nspecial: Cooking Pot"));
		tutorial_speaker = "gumbo"
		speaker_face = 6;
		textbox_text = "For real we gotta move locations, just throwing the pot with Nspecial isn't enough..
		I can't live with customers who can't handle spice."
	}if(tutorialpage == 20){
	draw_debug_text(x + -175, y + -190, string("Nspecial: Cooking Pot"));
		tutorial_speaker = "po"
		speaker_face = 4;
		textbox_text = "For real."
	}
//#region Fspecial ------------------------------------------------------------------
	if(tutorialpage == 22){
	draw_debug_text(x + -175, y + -190, string("FSpecial: Po Throw / Secondary Gimmick"));
		tutorial_speaker = "gumbo"
		speaker_face = 3;
		textbox_text = "This attack's always a fun one! It's sorta like one of those 'Bros Attacks' our plumber likes to talk about."
	}	if(tutorialpage == 23){
	draw_debug_text(x + -175, y + -190, string("FSpecial: Po Throw / Secondary Gimmick"));
		tutorial_speaker = "po"
		speaker_face = 5;
		textbox_text = "..."
	}if(tutorialpage == 24){
	draw_debug_text(x + -175, y + -190, string("FSpecial: Po Throw / Secondary Gimmick"));
		tutorial_speaker = "gumbo"
		speaker_face = 5;
		textbox_text = "Heh. Uh.."
	}if(tutorialpage == 25){
	draw_debug_text(x + -175, y + -190, string("FSpecial: Po Throw / Secondary Gimmick"));
		tutorial_speaker = "blank"
		speaker_face = 0;
		textbox_text = "Gumbo's Fspecial throws Po as a projectile. It serves as an essential part of their neutral game, and also applies scalding."
	}if(tutorialpage == 26){
	draw_debug_text(x + -175, y + -190, string("FSpecial: Po Throw / Secondary Gimmick"));
		tutorial_speaker = "gumbo"
		speaker_face = 5;
		textbox_text = "The bad part about this kinda attack is when I throw Po, I'm alone for a while until he can recover.
		All of the attacks we do together, like my specials and strongs, change cause it's just me doing them."
	}if(tutorialpage == 27){
	draw_debug_text(x + -175, y + -190, string("FSpecial: Po Throw / Secondary Gimmick"));
		tutorial_speaker = "po"
		speaker_face = 5;
		textbox_text = "The bad part is actually that you THROW ME LIKE A BALL! 
		I'm not built like you man! I'm not made for fighting!"
	}if(tutorialpage == 28){
	draw_debug_text(x + -175, y + -190, string("FSpecial: Po Throw / Secondary Gimmick"));
		tutorial_speaker = "blank"
		speaker_face = 0;
		textbox_text = "The attacks that change while Gumbo doesn't have Po are: Fstrong, Ustrong, Dstrong, Fspecial, Uspecial, and Dspecial.
		Without Po, Gumbo has no way of applying Scalding to opponents."
	}if(tutorialpage == 29){
	draw_debug_text(x + -175, y + -190, string("FSpecial: Po Throw / Secondary Gimmick"));
		tutorial_speaker = "blank"
		speaker_face = 0;
		textbox_text = "If Po is parried and hits Gumbo, he will become scalded, and can be trapped in his own pot.
		Not so shrimple now, is it?"
	}if(tutorialpage == 30){
	draw_debug_text(x + -175, y + -190, string("FSpecial: Po Throw / Secondary Gimmick"));
		tutorial_speaker = "po"
		speaker_face = 1;
		textbox_text = "When Gumbo rudely throws me into his pot, I can set up shop there. It's like my own little food vendor, the 'Po on Wheels'.
		When I'm in the pot, it won't have a hitbox when being knocked around either so Gum can easily transport it closer to customers."
	}if(tutorialpage == 31){
	draw_debug_text(x + -175, y + -190, string("FSpecial: Po Throw / Secondary Gimmick"));
		tutorial_speaker = "gumbo"
		speaker_face = 0;
		textbox_text = "Once Po enters the pot, it's invunerable to enemy attacks for a little bit.
		After that little bit is up, I can remotely make the pot burst by using 'Nspecial' again."
	}if(tutorialpage == 32){
	draw_debug_text(x + -175, y + -190, string("FSpecial: Po Throw / Secondary Gimmick"));
		tutorial_speaker = "gumbo"
		speaker_face = 4;
		textbox_text = "The only projectiles I have for Fspecial without Po are random ingredients I have laying on me.
		My mamma said it's important to only throw 3 at a time to not make a mess."
	}if(tutorialpage == 33){
	draw_debug_text(x + -175, y + -190, string("FSpecial: Po Throw / Secondary Gimmick"));
		tutorial_speaker = "po"
		speaker_face = 1;
		textbox_text = "I'm pretty sure throwing ANY ingredients would make a mess bro."
	}if(tutorialpage == 34){
	draw_debug_text(x + -175, y + -190, string("FSpecial: Po Throw / Secondary Gimmick"));
		tutorial_speaker = "blank"
		speaker_face = 0;
		textbox_text = "Landing all 3 projectiles from Shrimp-less Fspecial into the pot will raise it up to 3 spice.
		And that's convenience cooking, ladies and gentlemen."
	}	
//#region Uspecial ------------------------------------------------------------------
	if(tutorialpage == 36){
	draw_debug_text(x + -175, y + -190, string("USpecial: Bubble Beam / Gator Roll"));
		tutorial_speaker = "gumbo"
		speaker_face = 0;
		textbox_text = "Po likes to call this one the 'Bubble Beam'. 
		Hehe, dude thinks he's one of them 'Pachinko Monsters' or something like that."
	}if(tutorialpage == 37){
	draw_debug_text(x + -175, y + -190, string("USpecial: Bubble Beam / Gator Roll"));
		tutorial_speaker = "po"
		speaker_face = 2;
		textbox_text = "Dude, it's called 'Bubble Beam' cause I'm shooting bubbles in a beam."
	}if(tutorialpage == 38){
	draw_debug_text(x + -175, y + -190, string("USpecial: Bubble Beam / Gator Roll"));
		tutorial_speaker = "gumbo"
		speaker_face = 3;
		textbox_text = "Huh, I never thought about it that way. I take what I said back."
	}if(tutorialpage == 39){
	draw_debug_text(x + -175, y + -190, string("USpecial: Bubble Beam / Gator Roll"));
		tutorial_speaker = "blank"
		speaker_face = 0;
		textbox_text = "By pressing left and right, you can angle the direction Bubble Beam goes."
	}if(tutorialpage == 40){
	draw_debug_text(x + -175, y + -190, string("USpecial: Bubble Beam / Gator Roll"));
		tutorial_speaker = "gumbo"
		speaker_face = 5;
		textbox_text = "When I don't have Po, my recovery gets a lot worse. It's kind of like that one monkey dudes Uspecial, but bad."
	}if(tutorialpage == 41){
	draw_debug_text(x + -175, y + -190, string("USpecial: Bubble Beam / Gator Roll"));
		tutorial_speaker = "po"
		speaker_face = 0;
		textbox_text = "At least it has a hitbox that can get kills off the top.
		Can't you press shield at the start of Bubble Beam to transition to Gator Roll too?"
	}if(tutorialpage == 42){
	draw_debug_text(x + -175, y + -190, string("USpecial: Bubble Beam / Gator Roll"));
		tutorial_speaker = "gumbo"
		speaker_face = 1;
		textbox_text = "Yeah, that's right! 
		Gator Roll also gets powered up if I'm steamy. It's kind of like that one monkey dudes Uspecial."
	}if(tutorialpage == 43){
	draw_debug_text(x + -175, y + -190, string("USpecial: Bubble Beam / Gator Roll"));
		tutorial_speaker = "po"
		speaker_face = 4;
		textbox_text = "And how would you get steamy? You'd have to get hit by like, a projectile that scalds you, right?"
	}if(tutorialpage == 44){
	draw_debug_text(x + -175, y + -190, string("USpecial: Bubble Beam / Gator Roll"));
		tutorial_speaker = "po"
		speaker_face = 5;
		textbox_text = "Wait a minute..."
	}if(tutorialpage == 45){
	draw_debug_text(x + -175, y + -190, string("USpecial: Bubble Beam / Gator Roll"));
		tutorial_speaker = "gumbo"
		speaker_face = 1;
		textbox_text = "See the Fspecial section for more info about that!"
	}
//#region Dspecial ------------------------------------------------------------------	
	if(tutorialpage == 47){
	draw_debug_text(x + -175, y + -190, string("DSpecial: Chef's Dropkick / Chef's Kiss"));
		tutorial_speaker = "gumbo"
		speaker_face = 4;
		textbox_text = "Not many people know this, but this technique was passed down to me from many generations ago..."
	}	if(tutorialpage == 48){
	draw_debug_text(x + -175, y + -190, string("DSpecial: Chef's Dropkick / Chef's Kiss"));
		tutorial_speaker = "po"
		speaker_face = 0;
		textbox_text = "I help Gum with this attack by boosting him upwards at the beginning of the attack. During startup, he can also turn around and airdodge out of the attack."
	}if(tutorialpage == 49){
	draw_debug_text(x + -175, y + -190, string("DSpecial: Chef's Dropkick / Chef's Kiss"));
		tutorial_speaker = "po"
		speaker_face = 4;
		textbox_text = "If the attack hits the pot, I'll be put into it as well.
		Check out the part of Fspecial that talks about the pot for more info about that."
	}if(tutorialpage == 50){
	draw_debug_text(x + -175, y + -190, string("DSpecial: Chef's Dropkick / Chef's Kiss"));
		tutorial_speaker = "gumbo"
		speaker_face = 0;
		textbox_text = "Without Po, the attack doesn't travel as far, and I don't get the height boost.
		It's a lot more bland without you, man."
	}if(tutorialpage == 51){
	draw_debug_text(x + -175, y + -190, string("DSpecial: Chef's Dropkick / Chef's Kiss"));
		tutorial_speaker = "po"
		speaker_face = 4;
		textbox_text = "Life's a lot more bland without you too bro."
	}
//#region Strongs ------------------------------------------------------------------
	if(tutorialpage == 53){
	draw_debug_text(x + -175, y + -190, string("Strong Attacks"));
		tutorial_speaker = "po"
		speaker_face = 4;
		textbox_text = "When I'm with Gumbo, our Strongs have some more properties than they do when he's alone."
	}	if(tutorialpage == 54){
	draw_debug_text(x + -175, y + -190, string("Strong Attacks"));
		tutorial_speaker = "po"
		speaker_face = 0;
		textbox_text = "Fstrong travels further the longer you hold it, Ustrong has a sweet spot in front of Gumbo, and Dstrong has way bigger hitboxes."
	}if(tutorialpage == 55){
	draw_debug_text(x + -175, y + -190, string("Strong Attacks"));
		tutorial_speaker = "po"
		speaker_face = 3;
		textbox_text = "See! I do all of the heavy lifting around here! Haha!"
	}if(tutorialpage == 56){
	draw_debug_text(x + -175, y + -190, string("Strong Attacks"));
		tutorial_speaker = "gumbo"
		speaker_face = 0;
		textbox_text = "Po, could you bring me a new gas canister? This one's empty and we have a line forming."
	}if(tutorialpage == 57){
	draw_debug_text(x + -175, y + -190, string("Strong Attacks"));
		tutorial_speaker = "po"
		speaker_face = 4;
		textbox_text = "...
		
		
		No, Gumbo. No I can't."
	}
//#region Secret alts ------------------------------------------------------------------
if(tutorialpage == 59){
	draw_debug_text(x + -175, y + -190, string("Secret Alts"));
		tutorial_speaker = "gumbo"
		speaker_face = 3;
		textbox_text = "Secret alts? Hm... Oh! You gotta be talking about our secret menu."
	}if(tutorialpage == 60){
	draw_debug_text(x + -175, y + -190, string("Secret Alts"));
		tutorial_speaker = "gumbo"
		speaker_face = 0;
		textbox_text = "Check it out! It's reserved for our favorite customers! 
		These can be activated by pressing Attack and Taunt at the same time during the beginning of the round."
	}if(tutorialpage == 61){
	draw_debug_text(x + -175, y + -190, string("Secret Alts"));
		tutorial_speaker = "blank"
		speaker_face = 0;
		textbox_text = "Fishing Trout Lads - Avocado, snappystunner
		Something Something Florida Alligator - Old TAG color scheme
		Odor Blocker - Champed-Up, Jordan
		Having Fun at Dave Land - The Best, BendyJW
		From Mud to Sludge - Mishima, Jay/InnerOtaku
		Fresh off the Grill - Investigator, FantasticFungus"
	}
//#region WS Compat ------------------------------------------------------------------
if(tutorialpage == 63){
	draw_debug_text(x + -175, y + -190, string("Workshop Compatibility"));
		tutorial_speaker = "gumbo"
		speaker_face = 0;
		textbox_text = "I recently finished my course of the culinary arts, so lately we've been takin' suggestions for what to cook!
		If you have a recipe, we can make it!"
	}if(tutorialpage == 64){
	draw_debug_text(x + -175, y + -190, string("Workshop Compatibility"));
		tutorial_speaker = "po"
		speaker_face = 4;
		textbox_text = "(He didn't actually finish a course like that, but don't call him out for it. It healthily boosts his ego.)"
	}if(tutorialpage == 65){
	draw_debug_text(x + -175, y + -190, string("Workshop Compatibility"));
		tutorial_speaker = "blank"
		speaker_face = 0;
		textbox_text = "If you're interested in putting Po & Gumbo compatibility on your character, here's what you need to do:
		- Make a food sprite using the plate_strip1 image in Gumbo's files
		- In your character's init.gml, make the variable 'pot_compat_variable', and have it equal your food sprite's name"
	}if(tutorialpage == 66){
	draw_debug_text(x + -175, y + -190, string("Workshop Compatibility"));
		tutorial_speaker = "blank"
		speaker_face = 0;
		textbox_text = "- Also make a variable 'pot_compat_text', and have it equal the name of the food you made
		And that's it! No need to offset or resize the food sprite, Gumbo's code handles it on it's own. 
		Here's an example of the foods and how to name it:"
	}if(tutorialpage == 67){
	draw_debug_text(x + -175, y + -190, string("Workshop Compatibility"));
		tutorial_speaker = "blank"
		speaker_face = 0;
		textbox_text = " "
		draw_sprite_ext(sprite_get("food"), get_gameplay_time() / 28, x - 20, y + -140, 2, 2, 0, c_white, 1);
		draw_sprite_ext(sprite_get("example"), get_gameplay_time() / 28, x + -178, y + -60, 1, 1, 0, c_white, 1);
	}
//#region About me ------------------------------------------------------------------
if(tutorialpage == 69){
	draw_debug_text(x + -175, y + -190, string("About Po & Gumbo"));
		tutorial_speaker = "po"
		speaker_face = 4;
		textbox_text = "Ok, first off: I'm Po, the shrimp. Gumbo is the alligator. Too many people mix up our names!"
	}if(tutorialpage == 70){
	draw_debug_text(x + -175, y + -190, string("About Po & Gumbo"));
		tutorial_speaker = "gumbo"
		speaker_face = 7;
		textbox_text = "It's not that hard to remember, and it sounds better than Gumbo and Po.
		Also Po comes first in our title cause he drives me like that one movie with the rats."
	}if(tutorialpage == 71){
	draw_debug_text(x + -175, y + -190, string("About Po & Gumbo"));
		tutorial_speaker = "po"
		speaker_face = 1;
		textbox_text = "Mecharats Battle-force 7900?"
	}if(tutorialpage == 72){
	draw_debug_text(x + -175, y + -190, string("About Po & Gumbo"));
		tutorial_speaker = "gumbo"
		speaker_face = 3;
		textbox_text = "I thought it was called Ratamaphooie-something, but I think you're right."
	}if(tutorialpage == 73){
	draw_debug_text(x + -175, y + -190, string("About Po & Gumbo"));
		tutorial_speaker = "gumbo"
		speaker_face = 1;
		textbox_text = "Our food stand The Mud Flats is located down by the border of Neo Fire and Merchant Town.
		Come check us out!"
	}if(tutorialpage == 74){
	draw_debug_text(x + -175, y + -190, string("About Po & Gumbo"));
		tutorial_speaker = "po"
		speaker_face = 0;
		textbox_text = "Me n' Gum have been working together for a couple years now. It's been fun."
	}if(tutorialpage == 75){
	draw_debug_text(x + -175, y + -190, string("About Po & Gumbo"));
		tutorial_speaker = "gumbo"
		speaker_face = 0;
		textbox_text = "Let's see, an interesting fact about me...
		I've been cooking ever since I was young! Kinda comes naturally."
	}if(tutorialpage == 76){
	draw_debug_text(x + -175, y + -190, string("About Po & Gumbo"));
		tutorial_speaker = "po"
		speaker_face = 1;
		textbox_text = "Oh we're doing facts? Dang, uh.."
	}if(tutorialpage == 77){
	draw_debug_text(x + -175, y + -190, string("About Po & Gumbo"));
		tutorial_speaker = "po"
		speaker_face = 4;
		textbox_text = "I graduated top of my class in the cooking department. That's why our stand has an A rating.
		
		...Think that'll bring in customers, Gum?"
	}if(tutorialpage == 78){
	draw_debug_text(x + -175, y + -190, string("About Po & Gumbo"));
		tutorial_speaker = "gumbo"
		speaker_face = 0;
		textbox_text = "It sure will bro, it sure will."
	}
//#region Codec? ------------------------------------------------------------------
if(tutorialpage == 80){
	draw_debug_text(x + -175, y + -190, string("Codec?"));
		tutorial_speaker = "po"
		speaker_face = 4;
		textbox_text = "Interested in a codec, huh..."
	}if(tutorialpage == 81){
	draw_debug_text(x + -175, y + -190, string("Codec?"));
		tutorial_speaker = "po"
		speaker_face = 0;
		textbox_text = "We're still taking notes on all of the fighters here, so we're not ready to share our thoughts yet."
	}if(tutorialpage == 82){
	draw_debug_text(x + -175, y + -190, string("Codec?"));
		tutorial_speaker = "po"
		speaker_face = 2;
		textbox_text = "For now though? Here's a generic one that we'll use on an enemy we don't recognize."
	}if(tutorialpage == 83){
	draw_debug_text(x + -175, y + -190, string("Codec?"));
		tutorial_speaker = "po"
		speaker_face = 4;
		textbox_text = "..."
	}if(tutorialpage == 84){
	draw_debug_text(x + -175, y + -190, string("Codec?"));
		tutorial_speaker = "po"
		speaker_face = 4;
		textbox_text = "Hey Gumbo, you know about that thing we heard in the news the other day?"
	}if(tutorialpage == 85){
	draw_debug_text(x + -175, y + -190, string("Codec?"));
		tutorial_speaker = "po"
		speaker_face = 2;
		textbox_text = "Something about like... Mysterious portals that are popping up around the area?"
	}if(tutorialpage == 86){
	draw_debug_text(x + -175, y + -190, string("Codec?"));
		tutorial_speaker = "po"
		speaker_face = 0;
		textbox_text = "Y'know, messing with the space time continuum, alternate dimensions.. that kinda thing?"
	}if(tutorialpage == 87){
	draw_debug_text(x + -175, y + -190, string("Codec?"));
		tutorial_speaker = "gumbo"
		speaker_face = 4;
		textbox_text = "Man, you think I listen to the news? I hear ya though, I hear ya. What about it?"
	}if(tutorialpage == 88){
	draw_debug_text(x + -175, y + -190, string("Codec?"));
		tutorial_speaker = "po"
		speaker_face = 3;
		textbox_text = "I think this shady guy we're looking at might be a result of it. 
		I've never seen 'em around here before."
	}if(tutorialpage == 89){
	draw_debug_text(x + -175, y + -190, string("Codec?"));
		tutorial_speaker = "gumbo"
		speaker_face = 3;
		textbox_text = "Hm... Yeah yeah, they look pretty weird, huh? So what'cha wanna do about 'em?"
	}if(tutorialpage == 90){
	draw_debug_text(x + -175, y + -190, string("Codec?"));
		tutorial_speaker = "po"
		speaker_face = 4;
		textbox_text = "I suppose we should do what we always do."
	}if(tutorialpage == 91){
	draw_debug_text(x + -175, y + -190, string("Codec?"));
		tutorial_speaker = "gumbo"
		speaker_face = 6;
		textbox_text = "A'ight, you owe me dinner after this though!"
	}
/*	
if(tutorialpage == 93){
	//draw_debug_text(x + -175, y + -190, string("Codec?"));
	var box_w = 442;
		tutorial_speaker = "po"
		speaker_face = 0;
		textbox_text = "Yo, what's up Workshop Community? Pretty wild awards ceremony so far huh?"
	}if(tutorialpage == 94){
		tutorial_speaker = "gumbo"
		speaker_face = 3;
		textbox_text = "Robo asked us to cover for him on this award. Something ‘bout.. Temporary sentience, or uh. Yeah."
	}if(tutorialpage == 95){
		tutorial_speaker = "po"
		speaker_face = 4;
		textbox_text = "Since Jerma can't exactly do this speech himself, we're here instead."
	}if(tutorialpage == 96){
		tutorial_speaker = "gumbo"
		speaker_face = 0;
		textbox_text = "Uhhh, lemme pull out the script he told us to read off."
	}if(tutorialpage == 97){
		tutorial_speaker = "gumbo"
		speaker_face = 3;
		textbox_text = "'Thank you so much for the award. I'm a little surprised I managed to sneak in two of my characters in this category'..."
	}if(tutorialpage == 98){
		tutorial_speaker = "gumbo"
		speaker_face = 1;
		textbox_text = "Oh yeah huh, we were nominated for this award too! Look Po, that's us on the screen!"
	}if(tutorialpage == 99){
		tutorial_speaker = "po"
		speaker_face = 1;
		textbox_text = "It's not like we're fully voiced like Jerma is though."
	}if(tutorialpage == 100){
		tutorial_speaker = "gumbo"
		speaker_face = 3;
		textbox_text = "Yeah. Wonder what you'd sound like with a voice."
	}if(tutorialpage == 101){
		tutorial_speaker = "po"
		speaker_face = 2;
		textbox_text = "Probably better than you'd sound. Get back to reading the script, we're going off topic."
	}if(tutorialpage == 102){
		tutorial_speaker = "gumbo"
		speaker_face = 0;
		textbox_text = "Alright alright. Apparently Robo's upset he had to remove the swears from the default voice mode Jerma had, but he's glad that people enjoy them anyways."
	}if(tutorialpage == 103){
		tutorial_speaker = "gumbo"
		speaker_face = 5;
		textbox_text = "Heh, he would be wouldn't he."
	}if(tutorialpage == 104){
		tutorial_speaker = "gumbo"
		speaker_face = 0;
		textbox_text = "And uh.. what word is that? Oh right right… He'd like to thank a couple of other characters that inspired the voice mode itself such as, Goku by Muno, and Naruto by Dr. Flux."
	}if(tutorialpage == 105){
		tutorial_speaker = "gumbo"
		speaker_face = 3;
		textbox_text = "Hm.. Looks like that's it. Anything else you wanna say, Po?"
	}if(tutorialpage == 106){
		tutorial_speaker = "po"
		speaker_face = 4;
		textbox_text = "Nah, I'm good. Enjoy the rest of the awards, guys."
	}*/
	
	if(textbox_skipped == true){
		//if(!presentation_mode){
	temp_x = x - 74;
	temp_y = y - 140;
	var box_w = 252;
	textDraw(temp_x, temp_y, "fName", c_white, 16, box_w, fa_left, 1, false, 1, "* " + textbox_text);
		/*}else{
	temp_x = x - 10;
	temp_y = y - 240;
	var box_w = 442;
	textDraw(temp_x, temp_y, "fName", c_white, 16, box_w, fa_left, 1, false, 1, "* " + textbox_text);
		}*/
	}
}



#define draw_text_trans_outline(_x, _y, str, separ, w, xscale, yscale, angl, text_colour, outline_colour, alph)
for (i = - 1; i < 2; i++) for (j = -1; j < 2; j++) draw_text_ext_transformed_color(_x+i*2,_y+j*2,"* " + str,separ, w, xscale, yscale, angl, outline_colour, outline_colour, outline_colour, outline_colour, 1);
draw_text_ext_transformed_color(_x,_y,"* " + str,separ, w, xscale, yscale, angl, text_colour, text_colour, text_colour, text_colour, 1);

#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, "* " + text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];