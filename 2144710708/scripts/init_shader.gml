// init shader

owen_shading_intensity = 2;

// default pallette color
// this is necessary due to the way i color mapped stuff
if (get_player_color( player ) == 0) {	
	set_character_color_slot(6, 207, 155, 229, 1 ); // body shading
	set_character_color_slot(7, 193, 120, 229, 1 ); // hair shading
}

if (get_player_color( player ) == 0) { // default
	set_character_color_shading( 2, owen_shading_intensity);
	set_character_color_shading( 3, owen_shading_intensity);
	set_character_color_shading( 4, owen_shading_intensity);
	set_character_color_shading( 5, owen_shading_intensity);
}

if (get_player_color( player ) == 1) { // carrot
	set_character_color_shading( 2, owen_shading_intensity);
	set_character_color_shading( 3, owen_shading_intensity);
	set_character_color_shading( 4, owen_shading_intensity);
	set_character_color_shading( 5, owen_shading_intensity);
}

if (get_player_color( player ) == 2) { //  grise
	set_character_color_shading( 2, owen_shading_intensity);
	set_character_color_shading( 3, owen_shading_intensity);
	set_character_color_shading( 4, owen_shading_intensity);
	set_character_color_shading( 5, owen_shading_intensity);
}

if (get_player_color( player ) == 3) { //  blue
	set_character_color_shading( 2, owen_shading_intensity);
	set_character_color_shading( 3, owen_shading_intensity);
	set_character_color_shading( 4, owen_shading_intensity);
	set_character_color_shading( 5, owen_shading_intensity);
}

if (get_player_color( player ) == 4) { //  setaria
	set_character_color_shading( 2, owen_shading_intensity);
	set_character_color_shading( 3, owen_shading_intensity);
	set_character_color_shading( 4, owen_shading_intensity);
	set_character_color_shading( 5, owen_shading_intensity);
}

if (get_player_color( player ) == 5) { //  gray shirt
	set_character_color_shading( 2, owen_shading_intensity);
	set_character_color_shading( 3, owen_shading_intensity);
	set_character_color_shading( 4, owen_shading_intensity);
	set_character_color_shading( 5, owen_shading_intensity);
}

if (get_player_color( player ) == 6) { //  freeman
	set_character_color_shading( 2, owen_shading_intensity);
	set_character_color_shading( 3, owen_shading_intensity);
	set_character_color_shading( 4, owen_shading_intensity);
	set_character_color_shading( 5, owen_shading_intensity);
}

if (get_player_color( player ) == 7) { //  natsumi
	set_character_color_shading( 2, owen_shading_intensity);
	set_character_color_shading( 3, owen_shading_intensity);
	set_character_color_shading( 4, owen_shading_intensity);
	set_character_color_shading( 5, owen_shading_intensity);
}

if (get_player_color( player ) == 8) { //  SAKK
	set_character_color_shading( 2, owen_shading_intensity);
	set_character_color_shading( 3, owen_shading_intensity);
	set_character_color_shading( 4, owen_shading_intensity * 0);
	set_character_color_shading( 5, owen_shading_intensity * 0);
}
if (get_player_color( player ) == 9) { //  orin
	set_character_color_shading( 2, owen_shading_intensity);
	set_character_color_shading( 3, owen_shading_intensity);
	set_character_color_shading( 4, owen_shading_intensity);
	set_character_color_shading( 5, owen_shading_intensity);
}

if (get_player_color( player ) == 10) { //  niko
	set_character_color_shading( 2, owen_shading_intensity);
	set_character_color_shading( 3, owen_shading_intensity);
	set_character_color_shading( 4, owen_shading_intensity);
	set_character_color_shading( 5, owen_shading_intensity);
}

if (get_player_color( player ) == 11) { // scaryami alt (no shading trololol)
	set_character_color_shading( 2, 0);
	set_character_color_shading( 3, 0);
	set_character_color_shading( 4, 0);
	set_character_color_shading( 5, 0);
}


if (get_player_color( player ) == 12) { //  rainbow
	set_character_color_shading( 2, owen_shading_intensity); // shirt
	set_character_color_shading( 3, owen_shading_intensity * 0); // shorts
	set_character_color_shading( 4, owen_shading_intensity); // crowbar
	set_character_color_shading( 5, owen_shading_intensity * 0); // crowbar edges
}

if (get_player_color( player ) == 13) { //  abyss
	set_character_color_shading( 2, owen_shading_intensity);
	set_character_color_shading( 3, owen_shading_intensity);
	set_character_color_shading( 4, owen_shading_intensity);
	set_character_color_shading( 5, owen_shading_intensity);
}

if (get_player_color( player ) == 14) { // early access alt (no shading)
	set_character_color_shading( 2, 0);
	set_character_color_shading( 3, 0);
	set_character_color_shading( 4, 0);
	set_character_color_shading( 5, 0);
	outline_color = [35, 67, 49];
}


if (get_player_color( player ) == 15) { //  seasonal
	set_character_color_shading( 2, owen_shading_intensity);
	set_character_color_shading( 3, owen_shading_intensity);
	set_character_color_shading( 4, owen_shading_intensity);
	set_character_color_shading( 5, owen_shading_intensity);
}

if (get_player_color( player ) == 16) { //  trans rights
	set_character_color_shading( 2, owen_shading_intensity);
	set_character_color_shading( 3, owen_shading_intensity);
	set_character_color_shading( 4, owen_shading_intensity); 
	set_character_color_shading( 5, owen_shading_intensity * -1);
}

if (get_player_color( player ) == 17) { //  100 bec
	set_character_color_shading( 2, owen_shading_intensity); // shirt
	set_character_color_shading( 3, owen_shading_intensity); // shorts
	set_character_color_shading( 4, owen_shading_intensity); // crowbar
	set_character_color_shading( 5, owen_shading_intensity); // crowbar edges
}

if (get_player_color( player ) == 18) { //  sunny
	set_character_color_shading( 2, owen_shading_intensity); // shirt
	set_character_color_shading( 3, owen_shading_intensity); // shorts
	set_character_color_shading( 4, owen_shading_intensity); // crowbar
	set_character_color_shading( 5, owen_shading_intensity); // crowbar edges
}

if (get_player_color( player ) == 19) { //  clairen
	set_character_color_shading( 2, owen_shading_intensity); // shirt
	set_character_color_shading( 3, owen_shading_intensity); // shorts
	set_character_color_shading( 4, 0*owen_shading_intensity); // crowbar
	set_character_color_shading( 5, 0*owen_shading_intensity); // crowbar edges
}

if (get_player_color( player ) == 20) { // nb
	set_character_color_shading( 2, owen_shading_intensity); // shirt
	set_character_color_shading( 3, owen_shading_intensity); // shorts
	set_character_color_shading( 4, owen_shading_intensity); // crowbar
	set_character_color_shading( 5, owen_shading_intensity); // crowbar edges
}

if (get_player_color( player ) == 21) { // sand cat
	set_character_color_shading( 2, owen_shading_intensity); // shirt
	set_character_color_shading( 3, owen_shading_intensity); // shorts
	set_character_color_shading( 4, owen_shading_intensity); // crowbar
	set_character_color_shading( 5, owen_shading_intensity); // crowbar edges
}

if (get_player_color( player ) == 22) { // nes
	set_character_color_shading( 2, 0); // shirt
	set_character_color_shading( 3, 0); // shorts
	set_character_color_shading( 4, 0); // crowbar
	set_character_color_shading( 5, 0); // crowbar edges
}

if (get_player_color( player ) == 23) { // the zerks one
	set_character_color_shading( 2, owen_shading_intensity); // shirt
	set_character_color_shading( 3, owen_shading_intensity); // shorts
	set_character_color_shading( 4, owen_shading_intensity); // crowbar
	set_character_color_shading( 5, owen_shading_intensity); // crowbar edges
}

if (get_player_color( player ) == 24) { // genesis
	set_character_color_shading( 0, owen_shading_intensity); // body
	set_character_color_shading( 1, owen_shading_intensity); // hair
	set_character_color_shading( 2, owen_shading_intensity); // shirt
	set_character_color_shading( 3, owen_shading_intensity); // shorts
	set_character_color_shading( 4, owen_shading_intensity); // crowbar
	set_character_color_shading( 5, owen_shading_intensity); // crowbar edges
}

if (get_player_color( player ) == 25) { // blm
	set_character_color_shading( 2, owen_shading_intensity); // shirt
	set_character_color_shading( 3, owen_shading_intensity); // shorts
	set_character_color_shading( 4, owen_shading_intensity); // crowbar
	set_character_color_shading( 5, owen_shading_intensity); // crowbar edges
}

if (get_player_color( player ) == 26) { // mae
	set_character_color_shading( 2, owen_shading_intensity); // shirt
	set_character_color_shading( 3, owen_shading_intensity); // shorts
	set_character_color_shading( 4, owen_shading_intensity); // crowbar
	set_character_color_shading( 5, owen_shading_intensity); // crowbar edges
}

if (get_player_color( player ) == 27) { // banana rat
	set_character_color_shading( 2, owen_shading_intensity); // shirt
	set_character_color_shading( 3, owen_shading_intensity); // shorts
	set_character_color_shading( 4, owen_shading_intensity); // crowbar
	set_character_color_shading( 5, owen_shading_intensity); // crowbar edges
}

if (get_player_color( player ) == 28) { // skitteh
	set_character_color_shading( 2, owen_shading_intensity); // shirt
	set_character_color_shading( 3, owen_shading_intensity); // shorts
	set_character_color_shading( 4, owen_shading_intensity); // crowbar
	set_character_color_shading( 5, owen_shading_intensity); // crowbar edges
}

if (get_player_color( player ) == 29) { // the cooler mae
	set_character_color_shading( 2, owen_shading_intensity); // shirt
	set_character_color_shading( 3, owen_shading_intensity); // shorts
	set_character_color_shading( 4, owen_shading_intensity); // crowbar
	set_character_color_shading( 5, owen_shading_intensity); // crowbar edges
}

if (get_player_color( player ) == 30) { // this place makes bootcamp look like disneyland
	set_character_color_shading( 2, owen_shading_intensity); // shirt
	set_character_color_shading( 3, owen_shading_intensity); // shorts
	set_character_color_shading( 4, owen_shading_intensity); // crowbar
	set_character_color_shading( 5, owen_shading_intensity); // crowbar edges
}

if (get_player_color( player ) == 31) { // troll alt
	set_character_color_shading( 2, owen_shading_intensity); // shirt
	set_character_color_shading( 3, owen_shading_intensity); // shorts
	set_character_color_shading( 4, owen_shading_intensity); // crowbar
	set_character_color_shading( 5, owen_shading_intensity); // crowbar edges
}

