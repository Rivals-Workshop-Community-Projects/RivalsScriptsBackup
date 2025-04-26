
var sdw_a = 0.7
if (special_killeffect){
	var tmp_a_kill = (ease_cubeOut( 0, 100, special_killeffect, special_killeffect_max )/100)
	sdw_a = 0.7+tmp_a_kill;
}

//soul and shadow
if (state==1){
	if (state_timer < ceil(state_end/1.5)){
		var pass_it_on = sprite_get("realsoul")
		with(oPlayer){
			if (get_player_stocks( player )!=0){
			draw_sprite_ext( sprite_index, image_index, x, y, (1+small_sprites)*spr_dir, 1+small_sprites, 0, c_black, sdw_a );
			draw_sprite_ext( pass_it_on, search_soul_index( id ), x, y-floor(char_height/2), 1, 1, 0, -1, 1 );
			}
		}
	}
}

if (state==2){
	var pass_it_on = sprite_get("realsoul")
	with(oPlayer){
			if (get_player_stocks( player )!=0){
		var a_tmp = ease_quadOut( 100, 50, other.state_timer, other.state_end )/100
		draw_sprite_ext( sprite_index, image_index, x, y, (1+small_sprites)*spr_dir, 1+small_sprites, 0, c_black, sdw_a*a_tmp );
		draw_sprite_ext( pass_it_on, search_soul_index( id ), x, y-floor(char_height/2), 1, 1, 0, -1, 1*a_tmp );
			}
	}
}
if (state==3){
	var pass_it_on = sprite_get("realsoul")
	with(oPlayer){
			if (get_player_stocks( player )!=0){
		draw_sprite_ext( sprite_index, image_index, x, y, (1+small_sprites)*spr_dir, 1+small_sprites, 0, c_black, sdw_a*0.5 );
		draw_sprite_ext( pass_it_on, search_soul_index( id ), x, y-floor(char_height/2), 1, 1, 0, -1, 0.5 );
			}
	}
}






//gpu_set_blendmode(b_tmp); //recover blendmode..

//i did this stupidly so im gonna make a function
//=======================================================================================================================//
#define search_soul_index
///search_soul_index( id )
var nameget_ = string_lower(get_char_info( argument[0].player, INFO_STR_NAME ))
var return_index_ = 0;
//monster soul
if (string_pos("flowey", nameget_) ||
	string_pos("toriel", nameget_) ||
	string_pos("froggit", nameget_) ||
	string_pos("snowdrake", nameget_) ||
	string_pos("loox", nameget_) ||
	string_pos("napstablook", nameget_) ||
	string_pos("sans", nameget_) ||
	string_pos("papyrus", nameget_) ||
	string_pos("monster kid", nameget_) ||
	string_pos("undyne", nameget_) ||
	string_pos("temmie", nameget_) ||
	string_pos("gerson", nameget_) ||
	string_pos("shyren", nameget_) ||
	string_pos("mad dummy", nameget_) ||
	string_pos("alphys", nameget_) ||
	string_pos("so sorry", nameget_) ||
	string_pos("muffet", nameget_) ||
	string_pos("burgerpants", nameget_) ||
	string_pos("pizzapants", nameget_) ||
	string_pos("mettaton", nameget_) ||
	string_pos("mixelton", nameget_) || //yes
	string_pos("mew mew", nameget_) ||
	string_pos("asgore", nameget_) ||
	string_pos("asriel", nameget_) ||
	string_pos("susie", nameget_) || //we enter deltarune, they are Lightners but still "monsters"
	string_pos("berdly", nameget_) ||
	string_pos("noelle", nameget_) ||
	string_pos("catti", nameget_) ||
	string_pos("jockington", nameget_) ||
	string_pos("alvin", nameget_) || //sorry for any normal oc happened to be named alvin
	string_pos("dalv", nameget_) || //we enter undertale yellow
	string_pos("martlet", nameget_) ||
	string_pos("starlo", nameget_) || //i would put the feisty four here but their name is really generic and would so easily potentially clash with an another OC even more than alvin
	string_pos("ceroba", nameget_) ){
	return_index_ = 1; //monstersoul
}

//"darkner"
if (string_pos("ralsei", nameget_) || //we are absolutely unsure as-of-now (2024 december 30th) if ralsei is a "darkner" or not but for the sake of listing he is here
	string_pos("lancer", nameget_) || //writing here that King and Queen can very easily overlap so they'll be better as a URL check, so is Seam
	string_pos("rouxls", nameget_) ||
	string_pos("starwalker", nameget_) ||
	string_pos("jevil", nameget_) ||
	string_pos("tasque", nameget_) ||
	string_pos("addison", nameget_) ||
	string_pos("spamton", nameget_) ||
	string_pos("DESS", string_upper(nameget_)) ||
	string_pos("DECEMBER", string_upper(nameget_)) ||
	string_pos("GASTER", string_upper(nameget_)) ||
	real(argument[0].url)==3292951946 ){ //this is Hex. if i put in names from all the deltarune au and prediction stuff holy moly there will be hundreds so i wont
	return_index_ = 3; //darknershine
}

//very special case for Clover
if (string_pos("clover", nameget_)){
	return_index_ = 2; //justicesoul
}
//this is a very rare case where there is an undertale (yellow?) human oc in workshop. so here, a special case
if (real(argument[0].url)==3353764260){//kubi
	return_index_ = 4; //leafsoulorsomething
}
//print("return_index_ = "+string(return_index_))
return return_index_;







