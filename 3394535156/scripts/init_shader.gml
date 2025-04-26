var player = (room == asset_get("network_char_select") && object_index != oTestPlayer) ? 0 : self.player

// init_shader.gml
//colors of powder/casing
var bomb_color_mappings = [
	{
		powder: /*#*/$f81dff, // cascade
		casing: /*#*/$af70c5
	},
	{
		powder: /*#*/$46dd10, // black
		casing: /*#*/$e989a1
	},
	{
		powder: /*#*/$1d68f6, //cluster
		casing: /*#*/$5e777e
	},
	{
		powder: /*#*/$62d7e9, // sparkler
		casing: /*#*/$4a737e
	}
];

// Checks which current color the player has
var alt_cur = get_player_color(player);


//Color Mapping (if needed)
if (get_player_color(player) == 0) {
    //set_character_color_slot(slotNum, R, G, B, 1); //
    set_character_color_slot(3, 32, 71, 98, 1); // robe lower
    set_character_color_slot(4, 190, 219, 89, 1); // robe acc
}

// green
if (get_player_color(player) == 3){
	set_character_color_shading( 2, 1.25 );
	set_character_color_shading( 3, 1.25 );
}

// monochrome
if (get_player_color(player) == 4){
	set_character_color_shading( 2, 0.85 );
	set_character_color_shading( 3, 0.85 );
}

// dandy duds
if (get_player_color(player) == 8){
	set_character_color_shading( 2, 1.25 );
	set_character_color_shading( 3, 1.25 );
}

// white
if (get_player_color(player) == 10){
	set_character_color_shading( 2, 1.3 );
	set_character_color_shading( 3, 1.3 );
}

// pink
if (get_player_color(player) == 11){
	set_character_color_shading( 2, 1.45 );
	set_character_color_shading( 3, 1.45 );
}


// seafoam
if (get_player_color(player) == 13){
	set_character_color_shading( 3, 1.45 );
}

// infamous
if (get_player_color(player) == 16){
	set_character_color_shading( 2, 1.4 );
	set_character_color_shading( 3, 1.4 );
}

// ranked gold
if (get_player_color(player) == 18){
	set_character_color_shading( 2, 1.4 );
	set_character_color_shading( 3, 1.9 );
}

// Deep Gray: Champion
if (get_player_color(player) == 19){
	var opacAmt = 0.5;
	set_character_color_slot(2, 70, 75, 84, opacAmt); // robe upper
	set_character_color_slot(3, 70, 75, 84, opacAmt); // robe lower
	//set_character_color_shading( 7, 1.9 );
}

// lunatic cultist
if (get_player_color(player) == 21){
	set_character_color_shading( 2, 1.5 );
	set_character_color_shading( 3, 1.5 );
}

var powder = "current_bomb_powder" in self ? current_bomb_powder : 1

var color = bomb_color_mappings[powder];
var casing_color = color.casing
var powder_color = color.powder
var casing_red = color_get_red(casing_color);
var casing_green = color_get_green(casing_color);
var casing_blue = color_get_blue(casing_color);

var powder_red = color_get_red(powder_color);
var powder_green = color_get_green(powder_color);
var powder_blue = color_get_blue(powder_color);
set_character_color_slot(6, powder_red, powder_green, powder_blue);
set_character_color_slot(7, casing_red, casing_green, casing_blue);
set_article_color_slot(6, powder_red, powder_green, powder_blue);
set_article_color_slot(7, casing_red, casing_green, casing_blue);

// uncomment this once we implement the gameboy alt

// GB no-shading
if (get_player_color(player) == 7){
	for(i = 0; i <= 5; i++){//>
		set_character_color_shading(i, 0);
	}
}

if (!instance_exists(alt_cur)){
	alt_cur = get_player_color(player);
}

if alt_cur == 15 and "pandemoniumCloakColors" in self {
	for (i = 0; i <= 5; i++){//>
		var new_cloak_r = color_get_red(pandemoniumCloakColors[determinedPandemoniumCloakColor, i])
		var new_cloak_g = color_get_green(pandemoniumCloakColors[determinedPandemoniumCloakColor, i])
		var new_cloak_b = color_get_blue(pandemoniumCloakColors[determinedPandemoniumCloakColor, i])
	
		set_color_profile_slot(15, i, new_cloak_b, new_cloak_g, new_cloak_r);
	
		set_character_color_slot( i, new_cloak_b, new_cloak_g, new_cloak_r); //uses that variable to set the slot's new colours
		set_article_color_slot( i, new_cloak_b, new_cloak_g, new_cloak_r); //uses that variable to set the slot's new colours
		
	}
}