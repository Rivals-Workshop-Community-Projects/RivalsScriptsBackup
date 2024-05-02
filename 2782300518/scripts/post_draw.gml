var game_time = get_gameplay_time()
if (alt_cur == 18)
{
	maskHeader();
	draw_sprite_ext(sprite_index, image_index, x +draw_x, y + draw_y, (1+small_sprites) * spr_dir, 1+small_sprites, spr_angle, -1, 1);
	maskMidder();
	draw_sprite_tiled(sprite_get("gold_shimmer"), game_time * 0.4, x - 50 *spr_dir, y - (char_height/2) - 50);
	maskFooter();
}

//Draw Tail in front of Carol
if (tsprite_index!=-1 && tfront==true){
	init_shader();
	if (alt_cur == 14)
	{
		var base = 4*8;
		static_colorO[base] = 0.137;
		static_colorO[base+1] = 0.262;
		static_colorO[base+2] = 0.192;
	}
	shader_start();
	draw_sprite_ext(tsprite_index, timage_index, x+tx, y+ty, tsx*image_xscale, tsy, trotation, c_white, 1);
	shader_end();
}

//Draw Bike and shield in front of Carol
if (bsprite_index!=-1 && bfront==true)
{
	if (bshader == true)
	{
		init_shader();
		if (alt_cur == 14)
		{
			var base = 4*8;
			static_colorO[base] = 0.137;	
			static_colorO[base+1] = 0.262;
			static_colorO[base+2] = 0.192;
		}
		shader_start();
		draw_sprite_ext(bsprite_index, bimage_index, x+bx, y+by, bsx*image_xscale, bsy, brotation, c_white, 1);
		shader_end();
	}
	else
	{
		draw_sprite_ext(bsprite_index, bimage_index, x+bx, y+by, bsx*image_xscale, bsy, brotation, c_white, 1);
	}
}

switch (state)
{
	case PS_WALL_JUMP:
		if (motorbike == false)
		{
			//draw_sprite_ext(sprite_get("walljump_counter2"), walljump_number, x+18 * spr_dir, y-80, 2, 2, 0, c_white, 1);
			draw_sprite_ext(sprite_get("walljump_counter2"), walljump_number + 2, x+18 * spr_dir, y-80, 2 + (state_timer*0.75), 2 + (state_timer*0.75), 0, c_white, 1-state_timer*0.1);
		}
	break;
	case PS_ATTACK_AIR:
	case PS_ATTACK_GROUND:
		switch (attack)
		{
			case AT_FSPECIAL:
			case AT_FSPECIAL_AIR:
				if (motorbike == false && walljump_number > 0)
				{
					//draw_sprite_ext(sprite_get("walljump_counter2"), walljump_number, x+18 * spr_dir, y-80, 2, 2, 0, c_white, 1);
					draw_sprite_ext(sprite_get("walljump_counter2"), walljump_number, x+18 * spr_dir, y-80, 2 + (state_timer*0.75), 2 + (state_timer*0.75), 0, c_white, 1-state_timer*0.1);
				}
			break;
		}
	break;	
	default:
	break;
}

switch (prev_state)
{
	case PS_WALL_JUMP:
		if (motorbike == false && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)
		{
			draw_sprite_ext(sprite_get("walljump_counter2"), walljump_number +2, x+18 * spr_dir, y-80, 2, 2, 0, c_white, 1 - state_timer*0.05);
		}
	break;
	case PS_ATTACK_AIR:
	case PS_ATTACK_GROUND:
		switch (attack)
		{
			case AT_FSPECIAL:
			case AT_FSPECIAL_AIR:
				if (motorbike == false && walljump_number > 0)
				{
					draw_sprite_ext(sprite_get("walljump_counter2"), walljump_number, x+18 * spr_dir, y-80, 2, 2, 0, c_white, 1 - state_timer*0.05);
				}
			break;
		}
	break;
	default:
	break;
}

if (multikick_energy < 200)
{
	draw_sprite_ext(sprite_get("multikick_meter"), 0, x, y+6, 2, 2, 0, c_white, 1);
	if (multikick_energy > 0)
	{
		//draw the meter based on how much energy there is
		 draw_sprite_ext(sprite_get("multikick_charge"), 0, x-54, y+10, 2 * round(multikick_energy * 0.25), 2, 0, c_white, 1);
	}
}
else if (multikick_energy == 200 && multikick_ready_timer <100)
{
	draw_sprite_ext(sprite_get("multikick_meter_full"), 0, x, y+6, 2, 2, 0, c_white, 1);
}

if (nBoostReadyTimer < 100 && move_cooldown [AT_FSPECIAL_2] == 0 && motorbike == true)
{
	draw_sprite_ext(sprite_get("nitro_ready"), 0, x-36, y-94, 2, 2, 0, c_white, 1);
}

//Hyuponia's Changelog text
//*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
//       Playtest Changelog Template by hyuponia. change the code as much you'd like
//       please paste somewhere in "post_draw.gml"!
//*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
if (object_index == asset_get("oTestPlayer"))
{//this checks if it's in a playtest screen.
    if (!variable_instance_exists(id,"pn__init"))
    {//initialization part runs once
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

        patch_note_title[i] = "2.10"
        patch_note_text[i++] =  
"Quality of life change, when Carol says one of her voicelines during idle animation, that voiceline will no longer play for the rest of the duration that you remain in idle.

(I basically didn't know this was something that Freedom Planet 2 actually did until I heard the developer mention it)"

        patch_note_title[i] = "2.9"
        patch_note_text[i++] =  

"Fixed the walk sprite on bike being the wrong eye colours.

Added Wily Castle compatibility

Added Dialogue Buddy interaction with Ruby Rose by Nintenbro.

Added Neutralizing Gas compatibility. With the buddy equpped, Carol will be unable to use her bike."

        patch_note_title[i] = "2.8"
        patch_note_text[i++] =  

"Added Dream Nail compatibility

Added special quote on the character select screen if left idle with voice on for an extended period of time.

Carol can now sit on the bench in Shenlin Park by ATalksToSelf. Up taunt while not riding the bike next to the bench to do so."

        patch_note_title[i] = "2.7"
        patch_note_text[i++] =  

"Fair speed 8->7

Fair hitbox made smaller, 44 height to 34

Experimental change, Angle Flipper 6 added to all hits of Bike Nair.

Attempted to fix a bug where the bike would remain spinning on the stage by making it no longer possible to hit the bike if it isn't in idle state

Fixed a bug where Carol's Wild Kick NSpecial meter doesn't recharge after getting hit.

Re-enabled the ability to perform the secret taunt while in respawn state, the new solution will make her exit the respawn state if she moves."

        patch_note_title[i] = "2.5"
        patch_note_text[i++] =  

"Hotfix:

Disabled the ability to perform the secret taunt during respawn state due to a very Sans Boss Fight like movement which allowed you to move about on the platform.

Fixed the jitter on the HUD.

There is a known issue when selecting multiple Carols on the CSS, this is a Rivals bug. For now make sure the selected Carol isn't on the default alt to avoid game freezing."

        patch_note_title[i] = "2.4"
        patch_note_text[i++] =  

"Fixed the Wild Claw recolouring on alts.
Added Frame Data Woodcock support so that all attacks are correctly named and her cancels are properly documented along with how DSpecial_Air works.
Fixed a bunch of jank left over from the old version of Carol such as a hitbox spawning on double jump.
Changed the eye colour on all sprites for better contrast in shading on the eyes for the sake of the new portrait.
Altered base shading for certain alts, namely so that the boots, gloves and ear edges now all take the lighter shade as default.
New Bighurt frames.
Added death animation inspired by Freedom Planet where Carol bursts into feathers on death.
Added Christmas alt and also added Spade alt for Bendy.
Brand new portrait courtesy of Firehead Engine.
Brand new victory themes commissioned by BobTheGuyyy
Added Rivals RC compatibility
Added Wiimote compatibility
Updated unique dialogue with Lilac in Dialogue Buddy to be more interactive.
Victory screen has an extra flourish for the Stage Clear banner."

        patch_note_title[i] = "2.3"
        patch_note_text[i++] =  
"Fixed online voice button changing alts.

Recoded the Claw Combo system on Jab, Ftilt, Utilt and Dtilt, it is now easier to cancel into other moves rather than requiring exact timing.

Only the first hit of a Claw Combo is now actually untechable, cancelling into a different move makes more techable hits. This should hopefully help ease frustrations for opponents stuck in a claw combo.

Fixed a bug where Carol can heal all her health when hitting herself with her own bike, health now remains as it was before.

Both NSpecials no longer have super armor, they have Soft Armor 6 instead, (sprites haven't been adjusted on that one yet, will look to fix that one next time)

Fixed Dracula compatibility not working properly and also ensured it was the right one."

        patch_note_title[i] = "2.2"
        patch_note_text[i++] =  

"Walljump Limit 5 -> 3

You do however get a walljump back if you use them all and get hit.

USpec is restored when you get hit.

USpec goes into Pratfall unless you hit.

Uspec cooldown reduced in light of this change, 200 -> 80.

Off bike Dash Speed 7.5 - 7.2

Off bike Inital Dash Speed 7 - 6.7

On bike Initial Dash Speed 10 -> 7 (I want bike form to be better at killing but not so good at combos, nerfing the initial speed of dash helps with this while also making the acceleration a bit more bike like)

On bike initial Dash time 14 -> 16

Double jump speed 10 -> 9

Bike Fair Knockback 8 -> 7

NSpec (Both) Hitstun Multiplier 2-> 1.5

Prat Land Time 5 -> 10 (Her recovery is a bit better than warrenting a 5 even with some of the nerfs so this is being changed)

Bike can't be thrown through walls anymore

Hopefully fixed not being able to hitfall certain aerials."

        patch_note_title[i] = "2.1"
        patch_note_text[i++] =  

"Increased startup of FSpecial and FSpecial_Air to 18 to make it easier to aim.

Fixed a bug that set the direction too early.

Fixed a bug that prevented the disc from returning to you when throwing FSpecial and it hits.

Changed Cooldown for USpecial, it now resets recharge when you hit the ground.

After using all 5 Walljumps you can use USpec again.

Runes that give you additional pounces actually give you additional pounces.

Added a secret taunt (off-bike only).

Added three more Miiverse posts.

Added another sound layered to Dair on hit."

        patch_note_title[i] = "2.0"
        patch_note_text[i++] =  
        
        "Major character overhaul!
        
Entire moveset tweaked or revamped to some degree with 9 brand new moves, several other moves reanimated and a couple of new gimmicks to make her more of a Rivals character.

All sprites reshaded and recolourmapped for better alts.
        
Stats tweaked, Jump height reduced, short hop height aligned better with shorthop, Bike jump height is lower, double jump height standardised.
        
HUD redesigned, removed excess clutter, previous info that was on the HUD now pops up whenever relevant like the charge in the Wild Kick meter or the number of Wall jumps left.
        
You can now store the bike if thrown with the new FSpecial Air. Press Shield when it FSpecial or FSpecial Air on bike to get back on bike.
        
Using DSpecial on bike, Carol will now get off the bike and park in on the stage. Kicking the bike with NSpecial will deplete its fuel and when you run out of fuel as you kick the bike it will create an explosion that will cause significant knockback.
    	
Throwing the Jump Disc at a parked bike will pick up the bike and turn it into a projectile. If it comes back to Carol she gets on the bike, if you zoom to it the bike is stored instead.
    	
Using USpecial on the bike turns it into a spinning projectile that will go up and in the direction that you pounce on it and then come down again, resting on the stage again as a bike.

If the bike falls off the stage when you pounce on it then you fuel will start charging again.

You can only get back on the bike if its parked on the stage if you're standing next to it.
    	
Full moveset overhaul details:
    	
Nair: Scrapped
Fair: Now Nair
New Fair: Her low flying kick from FP2
Uair: Scrapped and replaced with her overhead kick from FP2
Bair: it's now backwards Kragg Fair
Dair: Has a bit of startup before the fall, now redesigned to encase Carol in a bubble (taken from Jade Creek stage). New bubble animation has more stretch on impact to help sell the animation better. No longer can free cancel the move, it is now a lot more committal.
DStrong: Cat roll is gone and is now instead Sonic DStrong.
UStrong: Still a flip ending in a handstand but she flips forward instead
All Strongs now have three windows in startup and structured properly.
USpecial: Is now the Pounce instead, Carol now actually has a double jump
Dspecial: No longer Limit Break charge fuel, fuel now charges itself.

Bike moveset changes:
Jab, Ftilt, Utilt and Dtilt are no longer cancellable freely into each other. Ftilt Utilt and Dtilt are also singular strikes.
Dtilt is now using the front wheel of the bike as a sawblade.
UStrong: Now the off bike UStrong but holding the bike for the hitbox.
Fair: Is now Fspecial Air but functions like Fspecial off bike.
New Fair: Carol swings the bike like a giant Hammer
Uair: Replaced with an on bike version of the overhead kick.
Bair: Changed to backwards Kragg Fair but holding the bike.
Dair: Now DSpecial Air instead and has a custom explosion effect.
New Dair: Downward thrust with the bike. 
Fspecial: No longer an instant boost and only usable on the ground. Has a lot more startup.
USpecial: Same height as off bike
Dspecial: You get off the bike and leave it on the stage.

NSpecial on both bike and off it no longer requires a full bar to use. Furthermore you now hold down the button to continue kicking.

In addition Jab, Ftilt, Utilt, Dtilt, FStrong, Nair, Dair, Bike Ftilt, Bike Utilt, Bike Nair, Bike DSpecial Air, Bike NSpecial, Bike FSpecial and Bike USpecial have all been reanimated.

Idle, Parry and Airdodge have been reanimated, Walk and Dash have been adjusted to be smoother and less jittery.

A bunch of bike animations have been tweaked a bit to show rotating wheels better as well as having more angles.

Added Wiimote compatibility.

Added Boris Anderson compatibility

Added Gold Sheen to Alt 18, renamed to Solid Gold Motorbike.

Added 8 new alts, Neera, Blaze, Honey, Niko, Kamen Rider, Wes, Valentino Rossi and Nanashi Mumei

In light of the revamped moveset added two new Abyss Runes to replace the now redundant ones.

Changed the size of the portrait and Char select so that the lines are proper and so that she's the same height as Lilac on the win screen."

		
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
        if (room == asset_get("network_char_select") || room == asset_get("workshop_room"))
        { //if in online playtest, or in extramode workshop list playtest
            //thanks to mr nart for heads up on using asset_get for room id's instead!
            pn__online = true; //switch to online view
        }
    }
    if (variable_instance_exists(id,"pn__init"))
    { //this is very unnecessary i just want to be safe to avoid error log
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
        //extramode workshop list playtest is room 72
        //online playtest is room 113
        
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
        if (pn__online)
        {//create online detection later
            var bc_x = clamp( 120, 100, 860 );//i guess this is the "center", bottom center
            var bc_y = clamp( (y + 111), 255, room_height-13 );
            var bc_yA = bc_y;
            var page_h = 190; //page height
        }
        var extendem = (pn__online)?260:0;
        
        //player freezer i hope
        if (pn__open)
        { //(if open)
            state = PS_SPAWN;
            state_timer = 89;
            hitpause = true; hitstop = 2; hitstop_full = 2;
        }
        //offset
        if (pn__opener_timer<pn__opener_timer_max)
        {
            pn__opener_timer++;
        }
        if (pn__select_timer<pn__select_timer_max)
        {
            pn__select_timer++;
        }
        if (pn__open)
        { //(if opened)
            var bc_yA = ease_expoOut( bc_yA-40, bc_y-page_h, pn__opener_timer, pn__opener_timer_max )
        }
        else
        { //(if closed)
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
        if (pn__open)
        { //(if opened)
            var txt_a = ease_expoOut( 0, 1, pn__opener_timer, pn__opener_timer_max )
        }
        else
        { //(if closed)
            var txt_a = ease_expoOut( 1, 0, pn__opener_timer, pn__opener_timer_max )
        }
        
        
        if (pn__open)
        { //(if open)
			//the main page contents
			//list page
			if (pn__displaying == false)
			{
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
				if (pn__open)
				{//scroll stuff n select stuff
					if (up_down)
					{
						if (pn__up_track==false)
						{
							pm__list_select_old = pn__list_select;  pn__list_select--;
							if (pn__list_select<0){pn__list_select = pn__list_max;}
							pn__up_track = true;
							pn__select_timer = 0;
							pn__list_old = "up"
							sound_play(pn__move_sound);
							pn__scroll_did = 0;
						}
					}
					else
					{ 
						pn__up_track = false; 
					};
					if (down_down)
					{
						if (pn__down_track==false)
						{
							pm__list_select_old = pn__list_select;  pn__list_select++;
							if (pn__list_select>pn__list_max){pn__list_select = 0;}
							pn__down_track = true;
							pn__select_timer = 0;
							pn__list_old = "down"
							sound_play(pn__move_sound);
							pn__scroll_did = 0;
						}
					}
					else
					{ 
						pn__down_track = false;
					};
					//list scroll stuff
					if ( ((pn_i*22)+26)+pn__scroll > page_h-20 )
					{//horrible puzzle of maths
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
					if (attack_down)
					{
						pn__displaying = true;
						pn__scroll = 0;
						sound_play(pn__confirm_sound);
					}
				}
				for (var t = 0; t <= pn__list_max; t += 1)
				{
					var x_off = (t==pn_i)?8+l_off_x:0;
					var y_off = (t==pn_i)?(t*22)+l_off_y:t*22;
					var y_loc = 26+pn__scroll-(l_off_y*pn__scroll_did);
					if (t==pn_i)
					{
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
	        if (pn__displaying == true)
	        {
				//txt set
				draw_set_halign(fa_left); draw_set_valign(fa_top);
				draw_set_font(asset_get("fName"));
				//time to draw changelog!!
				//text render is here!
				if (pn__open)
				{//scroll stuff
					var scroll_max = ( string_height_ext(patch_note_text[pn_i], 16+(4*sign(extendem)), 190+extendem)-113 )*-1//thanks vman for finding this function
					if (up_down)
					{ 
						pn__scroll+=pn__scroll_speed * (shield_down+1);
					} //hold shield to scroll faster
					if (down_down)
					{ 
						pn__scroll-=pn__scroll_speed * (shield_down+1); 
					}
					pn__scroll = clamp( pn__scroll, scroll_max, 0 );
					if (special_down)
					{
						pn__displaying = false;
						pn__scroll = false;
						sound_play(pn__cancel_sound);
					}
				}
				draw_text_ext_transformed_colour(bc_x-96, bc_yA+pn__scroll+12, patch_note_text[pn_i], 16+(4*sign(extendem)), 190+extendem, 1, 1, 0, pn_txt, pn_txt, pn_txt, pn_txt, txt_a);
			}//changelog over (if pn__displaying == true)
		}//open check over
     
		//taunt hold meter
		if (pn__taunt_timer>0)
		{
			var w_pr = ease_cubeIn( 2, pn__btn_width-2, round(pn__taunt_timer), pn__taunt_max );
			draw_rectangle_colour( bc_x-btn_wh, bc_yA-1, (bc_x-btn_wh)+w_pr, bc_yA, pn_acc,pn_acc,pn_acc,pn_acc, false );
			draw_set_alpha(1);
	    }
	    //checks for taunt being held, or if it's in list view and special is being held
	    if (taunt_down || (pn__open && special_down && pn__displaying == false))
	    {
	        if (pn__taunt_track == false)
	        {
	            pn__taunt_timer++;
	            if (pn__open){ pn__taunt_timer+=0.5; } //1.5x the speed when the panel is already open
	            if (pn__taunt_timer > pn__taunt_max)
	            {
					pn__open = !pn__open; //this toggles it hopefully
					pn__taunt_track = true;
					pn__taunt_timer = 0;
					pn__opener_timer = 0;
					sound_play(pn__swipe_sound);
				}
	        }
		}
		else
	    {
        	pn__taunt_track = false; 
        	pn__taunt_timer = 0; 
        };
        
        //change it back
        draw_set_alpha(a_str); draw_set_valign(fa_top); draw_set_halign(fa_center);
    }
}//testplay check over

#define maskHeader
{
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false, false, false, true);
	draw_set_alpha(0);
	draw_rectangle_color(-200, -200, room_width + 200, room_height + 200, c_white, c_white, c_white, c_white, false);
	draw_set_alpha(1);
}
#define maskMidder
{
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true, true, true, true);
	gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
}
#define maskFooter
{
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
}