sound_stop(sound_get("lobotomy"))

//down taunt song cancel
var other_exists = false;
var lobot = true;
with(oPlayer){
	if(self != other){
		other_exists = true;
		if(get_player_stocks(player) > get_player_stocks(other.player) || 
		(get_player_stocks(player) == get_player_stocks(other.player) && get_player_damage(player) > get_player_damage(other.player))){
			lobot = false;
		}
	}
}
with(oTestPlayer){
	if(self != other){
		other_exists = true;
		lobot = false;
	}
}
if(lobotomy != noone && !lobotomy_victory){
	if(lobot && other_exists && !lobotomy_victory){
		lobotomy_victory = true;
		sound_stop(lobotomy);
	}
    set_ui_element(UI_WIN_PORTRAIT, sprite_get("real_portrait"));
    set_victory_theme(sound_get("lobotomy_victory"))
} else if(!lobotomy_victory){
    set_ui_element(UI_WIN_PORTRAIT, cur_skin == 1 ? sprite_get("f_portrait") : get_char_info(player, INFO_PORTRAIT));
    set_victory_theme(sound_get("charavictory"));
}

var smugglers_data = [];
array_push(smugglers_data, lobotomy_victory);

//Hackiest of hacks: smuggle into victory screen using a persistent hitbox! (code by Frtoud)
var smuggler = instance_create(0, 0, "pHitBox");
smuggler.persistent = true;//survive room end
smuggler.type = 2;
smuggler.length = 60;//will destroy itself automatically after one second.
smuggler.dont_color = true;//colored hitboxes make the game crash lol

smuggler.smuggled_data = smugglers_data;