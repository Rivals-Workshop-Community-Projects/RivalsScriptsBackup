if url != 1890617624{
	return;
}

// Fix issue with hit_player_obj stopping code running, thanks SAI :D
if !instance_exists(hit_player_obj){
    hit_player_obj = self
}

if (state == PS_CROUCH) {
    if (state_timer == 0) {
        sound_play(sound_get("crouch"));
    }
}

if (state == PS_WALL_JUMP) {
    if (state_timer == 0) {
        sound_play(sound_get("jump"));
    }
}

if (state == PS_WALK) {
    if (state_timer % 21 == 0) {
        sound_play(sound_get("stepwalk"));
    }
}

if (state == PS_DASH_START) {
    if (state_timer == 5) {
        sound_play(sound_get("steprun"));
    }
}

if (state == PS_DASH) {
    if (state_timer % 11 == 0) {
        sound_play(sound_get("steprun"));
    }
}

has_apple = true
with asset_get("obj_article1") {
        if player_id == other.id {
            player_id.has_apple = false
        }
    }


has_shake = true
with asset_get("obj_article2") {
        if player_id == other.id {
            player_id.has_shake = false
        }
    }

if !free and (state_cat == SC_GROUND_NEUTRAL or state_cat == SC_GROUND_COMMITTED){
    uspecialuses = 0;
}

if uspecialuses >= 1 + runeK and !golden{
    move_cooldown[AT_USPECIAL] = 9999
}
else{
    move_cooldown[AT_USPECIAL] = 0
}

if golden and get_gameplay_time() % 11 = 0 and attack != AT_EXTRA_2{
    if get_player_damage( player ) > 0{
        set_player_damage( player, get_player_damage( player ) - 1 )
    }
}

if super >= 100{
    super = 100
    var outlineclr = abs((sin((get_gameplay_time() - 100) * 0.075) * 255)) + 255
    outline_color = [ outlineclr * 0.4, outlineclr * 0.9, outlineclr * 1];
    init_shader();
}
else{
    if !golden{
        outline_color = [0,0,0]
        init_shader();
    }
    else{
        if get_gameplay_time() % 11 = 0 and attack != AT_EXTRA_2 and !za_warudo{
            super += 1
        }
        walk_speed = 5;
        walk_accel = 2;
        walk_turn_time = 0;
        initial_dash_speed = 20;
        dash_speed = 20;
        dash_stop_time = 0;
        dash_turn_time = 0;
        dash_stop_percent = 0;
        ground_friction = 3;
        max_jump_hsp = 9;
        air_max_speed = 7;
        jump_change = 5;
        djumps = 0;
        has_walljump = true
        var outlineclr = (sin((get_gameplay_time() - 100) * 0.05) * -128) + 128
        outline_color = [ outlineclr * 2, outlineclr * 1.75, outlineclr];
        init_shader();
    }
}

if awakening{
    var outlineclr = (sin((get_gameplay_time() - 100) * 0.1) * -255) + 128
    outline_color = [ outlineclr * 6, outlineclr, outlineclr];
    if attack == AT_EXTRA_3 and window > 6{
        outline_color = [ 0, 0, 0 ]
    }
    init_shader();
}

if (hit_player_obj.state_cat != SC_HITSTUN) {
    combo = 0;
}

if (attack == AT_EXTRA_1 and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR)){
    supertimer += 1;
}

if !awakening and !afakening and (state == PS_DEAD or state == PS_RESPAWN) and goldenexplode and !exploded{
    set_state( PS_IDLE );
    visible = true;
    x = deadx;
    y = deady;
    set_player_damage( player, deadpercent );
    
    if x <= 0{
        x = (0 + 5);
    }
    if x >= room_width{
        x = (room_width - 5);
    }
    
    if y >= room_height{
        y = (room_height - 5);
    }
}

//================================================================================
// Super triggers

// Za Warudo
var attacklist = [AT_EXTRA_1, AT_EXTRA_2, AT_EXTRA_3, AT_NTHROW, AT_UTHROW, AT_FSTRONG_2, AT_TAUNT, AT_TAUNT_2]
if runeM and !za_warudo and !free and (attack_pressed and shield_pressed and super >= 33 and array_find_index(attacklist, attack) == -1 and window == 1 and window_timer <= 3){
    set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("tech"));
    attack_end();
    set_attack( AT_NTHROW );
}

//===========================================================================================================================================================================================================
// Abyss Runes code

// Airdash
if runeG and free and move_cooldown[AT_FTHROW] == 0 and (state_cat == SC_AIR_NEUTRAL or (attack == AT_USPECIAL and can_jump)) and (left_hard_pressed or right_hard_pressed){
    var airdash_speed = 0
    if golden{
        airdash_speed = 20
    } else{
        move_cooldown[AT_FTHROW] = 30
        airdash_speed = 10
    }
    if (spr_dir = 1 and right_hard_pressed) or (spr_dir = -1 and left_hard_pressed){
        set_window_value(AT_FTHROW, 1, AG_WINDOW_HSPEED, airdash_speed)
        set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
    } else{
        set_window_value(AT_FTHROW, 1, AG_WINDOW_HSPEED, -airdash_speed)
        set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 1);
    }
    airdash_x = x
    airdash_y = y
    set_attack( AT_FTHROW );
}

// MC. BURST
if state_cat == SC_HITSTUN and attack_pressed and special_pressed and super >= 33 and !hitpause and runeN{
	can_move = false;
	can_fast_fall = false;
	marked = 0;
	wrapped = 0;
	burned = 0;
	bubbled = 0;
	poison = 0;
	stuck = 0;
	plasma_pause = 0;
	attack = AT_EXTRA_1;
	window = 0;
	window_timer = 0;
	hitpause = false;
	hitstop = 0;
	hitstop_full = 0;
	super -= 33;
    set_attack( AT_FSTRONG_2 );
    sound_play(sound_get("counter"));
    sound_play(sound_get("counter2"));
    sound_play(sound_get("voicecounter"));
	invincible = true;
	invince_time = 2;
	create_hitbox(AT_FSTRONG_2, 1, x, y)
}

//===========================================================================================================================================================================================================
// Time freeze

time_frozen = time_freeze_ticks > 0;
time_freeze_ticks = clamp(time_freeze_ticks - 1, 0, 9999);

if time_frozen{
    var articles = ["obj_article1", "obj_article2", "obj_article3", "obj_article_solid", "obj_article_platform"]
    
    with (asset_get("oPlayer")) {
        if (player != other.player) {
            //print_debug( string(hsp) + ", " + string(vsp) + " || " + string(old_hsp) + ", " + string(old_vsp))
            if (hitstop == 0 or abs(vsp) > 2 or abs(hsp) > 2){
                old_vsp = vsp;
                old_hsp = hsp;
                vsp = 0;
                hsp = 0;
            }
            vsp = 0;
            hsp = 0;
            hitstop = 2;
            hitstop_full = 2;
            hitpause = true;
        }
    }
	
	var attacks = [AT_JAB, AT_FTILT, AT_DTILT, AT_UTILT, AT_FSTRONG, AT_DSTRONG, AT_USTRONG, AT_DATTACK, AT_BAIR, AT_NAIR, AT_FAIR, AT_UAIR, AT_DAIR, AT_TAUNT, AT_NSPECIAL, AT_FSPECIAL, AT_USPECIAL, AT_DSPECIAL]
	
	with (asset_get("oPlayer")) {
        if (player != other.player) {
			for (var i = 0; i < array_length_1d(attacks); ++i){
				if move_cooldown[attacks[i]] < 2{
					move_cooldown[attacks[i]] = 2;
			    }
			}
        }
    }

    
    with (asset_get("oPlayer")) {
        for (var i = 0; i < array_length_1d(articles); ++i){
            with ( asset_get( string(articles[i]) ) ){
                hitstop = 2;
            }
        }
    }
}


//===========================================================================================================================================================================================================
// ZA WARUDO
if za_warudo{
    time_freeze_ticks = 2;
    invincible = true;
    invince_time = 2;
    
    var attacklist = [AT_EXTRA_1, AT_EXTRA_2, AT_EXTRA_3, AT_NTHROW, AT_UTHROW, AT_FSTRONG_2, AT_TAUNT, AT_TAUNT_2]
    if get_gameplay_time() % 4 == 0 and not((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) and array_find_index(attacklist, attack) != -1) and not(attack == AT_NTHROW and state == PS_ATTACK_GROUND and window <= 7){
        super = clamp(super - 1, 0, 100)
    }
    
    if super == 0{
        time_freeze_ticks = 1;
        
        if !free{
        	set_state( PS_IDLE );
        } else{
        	set_state( PS_IDLE_AIR );
        }
        
        // Exit
        if !free and state != PS_ATTACK_GROUND{
            set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("lazer"));
            set_attack(AT_NTHROW);
            hsp = 0;
            vsp = 0;
            can_move = false;
            can_fast_fall = false;
            window = 7;
            window_timer = 0;
        }
    }
}

if attack == AT_NTHROW and window >= 7{
    za_warudo = false;
    time_freeze_ticks = 2;
    super = 0;
}

// The game breaks if multiple Ronalds freeze time
if time_frozen{
	with oPlayer{
		if player != other.player{
			if variable_instance_exists(id, "time_frozen"){
				if time_frozen{
					other.time_frozen = false;
					other.time_freeze_ticks = 0;
					time_frozen = false;
					time_freeze_ticks = 0;
					set_state(PS_IDLE);
				}
			}	
		}
	}
}

//===========================================================================================================================================================================================================
// Golden / Awakening code

// Golden trigger
if get_player_color(player) >= 11{
    golden = true
}

// F**K YOU!! REEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
with oPlayer{
    if url != other.url{
        var url_blacklist = [2004804058, 2007412127, 1989766083, 2043149282, 1880727391, 1867634411, 1867390003, 1867713261]
        
        if url == noone or array_find_index(url_blacklist, url) != -1 { // RonaldGaucho? More like I'm going to Ronald gouge your eyes out (all in good fun of course)
            other.awakening = true
        }
        
        // UI fox had the quirky idea of randomizing his URL whenever he spawns, but that's okay, we can just snoop out variables instead
        // do you really think you can stop me
        if variable_instance_exists(id, "Int1") and variable_instance_exists(id, "Int2") and variable_instance_exists(id, "Int3"){
        	other.awakening = true
        }
        
        if url == 1867390003 and other.state == PS_SPAWN { // Explosives deserves to die instantly
            set_player_damage(other.player, 1)
        }
        if (url == noone or url == 2004804058) and get_player_color(player) == 4 { // Instakill instakillaz
            other.deathcounter = true
            set_player_damage(other.player, 1)
        }
        if url == 1877715009 { // A-fake-ening HAHAHAHHAHAHAHAHAHA
            if stupidbossbool{
                other.afakening = true
            }
        }
    }
}

if state == PS_SPAWN and (golden or awakening or afakening){
    can_move = false;
    can_jump = false;
    can_attack = false;
    can_special = false;
    can_shield = false;
    can_strong = false;
    can_ustrong = false;
    free = false;
    set_attack( AT_EXTRA_3 );
    if (awakening or afakening){
        window = 7
        set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("finger"))
    }
}

if attack != AT_EXTRA_2 and goldenexplode and !exploded{
    goldenexplode = false;
    can_move = false;
    can_fast_fall = false;
    window_timer = 0;
    attack = AT_EXTRA_2;
    spr_dir = 1;
    hitpause = 0;
    hsp = 0;
    vsp = 0;
    grav = 0;
    marked = 0;
    wrapped = 0;
    burned = 0;
    bubbled = 0;
    poison = 0;
    stuck = 0;
    super = 0;
    supertimer = 0;
    combo = 0;
	hitpause = false;
	hitstop = 0;
	hitstop_full = 0;
    set_attack( AT_EXTRA_2 );
}

if attack == AT_EXTRA_2{
    invincible = true;
}

if attack == AT_EXTRA_3{
    if window == 3 and window_timer == 1{
        sound_play(sound_get("explosionshake"));
        spawn_hit_fx( x, y + 10, shakeexplosion)
    }
    if window == 6{
        set_state(PS_IDLE)
    }
    if window == 10{
        if awakening{
            window = 2
            window_timer = 0
            set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 130);
            set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("tech"))
            i = 0
            for (var i = 0; i < 10; ++i){
                sound_play(sound_get("screech"))
                sound_play(sound_get("screech2"))
                sound_play(sound_get("screech3"))
            }
        } else{ // Funny death fakeout
            sound_play(sound_get("nuke"))
            set_attack(AT_TAUNT_2)
            window = 3
            window_timer = 0
        }
    }
}

if (awakening or afakening){
    invincible = true
    set_player_stocks(player, 999)
    
    if !golden{
		golden = true;
		
		if !runeA{
			var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
			for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
			    variable_instance_set(self, "rune" + rune_letters[rune_num], true);
			}
		}
    }
    
    if deathcounter{
        visible = true
        hitstop = 0
        hitpause = false
        invincible = true
        invince_time = 9999999999999
    } else{
        super_armor = true
        invincible = false
    }
    
    set_player_stocks(player, 999)
    
    if awakening and !instakill and get_player_damage(player) > 0 and attack != AT_TAUNT_2{
        set_player_damage(player, 0)
        deathcounter = true
        set_attack(AT_TAUNT_2)
    }
    
    if (y + vsp) < 10{
        y = (room_height - 15)
    }
    if (x + hsp) < 10 {
        x = (room_width - 15)
    }
    if (x + hsp) > (room_width - 10){
        x = 15
    }
    if (y + vsp) >= (room_height - 10){
        y = 15
    }
}

if deathcounter and (state == PS_DEAD or state == PS_RESPAWN){
    invincible = true;
    invince_time = 9999999999999
    visible = true;
    x = room_width/2
    y = room_height/2
    visible = false;
    set_state(PS_IDLE)
    set_attack(AT_TAUNT_2)
    if afakening{
        visible = false
        window = 4
        window_timer = 5
    }
}

if attack == AT_TAUNT_2{
    invince_time = 999;
    invincible = true;
    goldenexplode = false;
    spr_dir = 1;
    hitpause = 0;
    hsp = 0;
    vsp = 0;
    grav = 0;
    marked = 0;
    wrapped = 0;
    burned = 0;
    bubbled = 0;
    poison = 0;
    stuck = 0;
    super = 0;
    supertimer = 0;
    combo = 0;
    can_move = false;
    can_fast_fall = false;
    can_jump = false;
    can_attack = false;
    can_special = false;
    can_shield = false;
    can_strong = false;
    can_ustrong = false;
    free = false;
    
    if window == 1 and window_timer = 1 and !instakill{
        for (var i = 0; i < 40; ++i){
            sound_play(sound_get("counter_awakening"))
            sound_play(sound_get("counterhit"))
            sound_play(sound_get("voicecounter"))
        }
    }
    
    if window == 2 and window_timer >= 290{
        sound_play(sound_get("nuke"))
        window = 3
        window_timer = 0
    }
    
    if window == 3 and window_timer > 25 * 4{
        if !afakening{
            instakill = true
        } else{
            window = 4
            window_timer = 0
            visible = false
            set_player_stocks(player, 1)
            sound_play(sound_get("fakegame"))
            sound_play(sound_get("fakegame"))
            sound_play(sound_get("voicedeath"))
        }
    }
    
    if window == 4{
        visible = false
        if window_timer <= 1{
            set_player_stocks(player, 999)
            y = room_width * 10
        }
        if window_timer > 240{
            sound_play(sound_get("fakevictory"))
            sound_play(sound_get("fakevictory"))
            window = 5
            window_timer = 0
        }
    }
    
    with oPlayer{
        if url != other.url{
            invincible = false
            invince_time = 0
            outline_color = [0,0,0]
            init_shader();
            if x > other.x{
                spr_dir = -1
            } else{
                spr_dir = 1
            }
            hsp = -15 * spr_dir
            vsp = -10
            x += hsp
            y += vsp
            player = other.player
            hitstop = 999 ^ 9
            hitpause = true
            set_state(PS_HITSTUN)
            for (var i = 0; i < instance_number(player); ++i){
                var inst = instance_find(player,i);
                instance_destroy( inst );
            }
            if other.window >= 3{
                visible = false
                x = room_width/2
                y = room_height/2
                x = other.x
                y = other.y
            }
        }
    }
}

//===========================================================================================================================================================================================================
// INSTAKILL (snagged from my own Ronald Wins)


if instakill{
    invincible = true
    
    with oPlayer{
        set_player_stocks(player, 1)
        player = other.player
        y = room_height * 10
        visible = false
        for (var i = 0; i < instance_number(player); ++i){
            var inst = instance_find(player,i);
            instance_destroy( inst );
        }
    }
    
    for (var i = 0; i < 4; ++i){
        if i != player{
            set_player_stocks(i, 0)
            set_player_stocks(player, 2 * (abs(get_player_stocks(player)) + abs(get_player_stocks(i))))
            i.player = player
            i.y = room_height * 10
            i.visible = false
            for (var ii = 0; ii < instance_number(i); ++ii){
                var inst = instance_find(i,ii);
                instance_destroy( inst );
            }
        }
    }
    
    y = room_height * 10
}

// ============================================================================
// Compatibility stuff everyone bugs me to implement

// Trummel codec dialogue
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 12;
    trummelcodecsprite1 = sprite_get("ronaldcodec");
    trummelcodecsprite2 = sprite_get("idle");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Is that...";
    trummelcodecline[page,2] = "Ronald McDonald?";
    trummelcodecline[page,3] = "What on earth is he";
    trummelcodecline[page,4] = "doing here?";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "That's right, kids!";
    trummelcodecline[page,2] = "It's me, Ronald McDonald!";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 2
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "I used my magic to warp";
    trummelcodecline[page,2] = "myself here, so I could";
    trummelcodecline[page,3] = "give all you boys & girls";
    trummelcodecline[page,4] = "tasty McDonalds hamburgers!";
    page++; 
    
    //Page 3
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Something about this";
    trummelcodecline[page,2] = "guy doesn't bode well...";
    trummelcodecline[page,3] = "What's that weird smell";
    trummelcodecline[page,4] = "coming off of him?";
    page++; 
    
    //Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Yeurgh, I smell that too!";
    trummelcodecline[page,2] = "That's rank! I can't even";
    trummelcodecline[page,3] = "describe it!";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 5
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "arent you going to";
    trummelcodecline[page,2] = "mention how cheap ronald";
    trummelcodecline[page,3] = "is or something";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 6
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Oh, uh, right.";
    trummelcodecline[page,2] = "Ronald's attacks come";
    trummelcodecline[page,3] = "out super fast and have";
    trummelcodecline[page,4] = "hitboxes thicker than Flex Tape's powerful adhesive";
    page++; 
    
    //Page 7
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "He has a whole arsenal of";
    trummelcodecline[page,2] = "projectiles on top of that,";
    trummelcodecline[page,3] = "from hamburgers to nuclear";
    trummelcodecline[page,4] = "shakes to literal bombs!";
    page++; 
    
    //Page 8
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "So what you're saying";
    trummelcodecline[page,2] = "is he's ridiculously";
    trummelcodecline[page,3] = "overpowered, with way";
    trummelcodecline[page,4] = "too many tools up his sleeve?";
    page++; 

    //Page 9
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Yeah pretty much.";
    trummelcodecline[page,2] = "It's going to be a";
    trummelcodecline[page,3] = "pain fighting him";
    trummelcodecline[page,4] = "I'll say that.";
    page++; 
    
    //Page 10
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Side note, I've";
    trummelcodecline[page,2] = "discovered a morbid";
    trummelcodecline[page,3] = "rabbit hole while";
    trummelcodecline[page,4] = "looking into Ronald's data.";
    page++; 
    
    //Page 11
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "There's something wrong";
    trummelcodecline[page,2] = "here, I can't even describe";
    trummelcodecline[page,3] = "it.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 12
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "lol clown go haha";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
}

// Dracula stuff
if attack == AT_TAUNT and dracula{
    set_attack(AT_EXTRA_3);
    dracula = false;
}

#define locate_nearest_player
shortest_dist = 9999;
shortest_id = noone;

with (asset_get("oPlayer")) {
	if (player != other.player) {
		var curr_dist = point_distance(x,y,other.x,other.y);
		if (curr_dist < other.shortest_dist) {
			other.shortest_dist = curr_dist;
			other.shortest_id = id;
		}
	}
}