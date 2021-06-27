if (get_stage_data(SD_ID) = 12 && player = 1 && get_gameplay_time() = 127){
	set_state(PS_IDLE);
	_646f7070656c67616e676572 = 110111121;
}

if (_646f7070656c67616e676572 = 110111121){
suppress_stage_music(0, 1);
_6261 = _6261 + 1;
}

if (_6261 > 1100){
	shake_camera(1, 1);
	
}

if (_6261 = 1100){
	sound_play(sound_get("bonby_73756464656e666c617368"));
	sound_play(sound_get("bonby_6368616f746963"));
	_737461746963 = 6;
nbbx = x;
nbby = y;
idle_anim_speed = .17;
	
}

if (_6261 = 1800){
	sound_play(sound_get("bonby_73756464656e666c617368"));
	_737461746963 = 6;
idle_anim_speed = .16;	
}

if (_6261 = 2200){
	sound_play(sound_get("bonby_73756464656e666c617368"));
	_737461746963 = 6;	
idle_anim_speed = .14;	
}

if (_6261 = 2750){
	sound_play(sound_get("bonby_73756464656e666c617368"));
	_737461746963 = 6;	
idle_anim_speed = .12;	
}

if (_6261 = 2800){
	sound_play(sound_get("bonby_73756464656e666c617368"));
	_737461746963 = 6;	
idle_anim_speed = .10;	
}

if (_6261 = 2811){
	sound_play(sound_get("bonby_73756464656e666c617368"));
	_737461746963 = 6;	
}

if (_6261 = 2900){
	sound_play(sound_get("bonby_73756464656e666c617368"));
	_737461746963 = 6;	
}

_696e73616e697479 = random_func( 0, 7, true );

if (_737461746963 > 1){
    _737461746963 = _737461746963 - 1;
}

if (_6261 = 1800){
	sound_play(sound_get("bonby_6172726976616c"));
	sound_play(sound_get("bonby_6172726976616c"));	
}

if (_6261 = 3000){
	sound_stop(sound_get("bonby_6368616f746963"));
	sound_stop(sound_get("bonby_6172726976616c"));	
	sound_play(sound_get("bonby_6e6f7420796574"));
	room_speed = 2;
}

if (_6261 = 3003){
var _101110116101114321101111219897 = 9999
room = _101110116101114321101111219897;
}

if (_6261 > 1800){
	shake_camera(2, 2);
}

if (_6261 > 2200){
	shake_camera(4, 4);
}

if (_6261 > 2750){
	shake_camera(8, 8);
	nbby = nbby - 0.05;
	nbbx = nbbx - 0.15;
}

if (_6261 > 2900){
	shake_camera(10, 8);
	nbby = nbby - 0.3;
	nbbx = nbbx - 0.35;	
}

if (_6261 = 1){
	sound_play(sound_get("bonby_6368616f746963"));
}

if get_gameplay_time() > 127 && _646f7070656c67616e676572 = 0{
	sound_stop(sound_get("bonby_6368616f746963"));
	sound_stop(sound_get("bonby_6172726976616c"));
	sound_stop(sound_get("bonby_6e6f7420796574"));	
	room_speed = 60;
	_6261 = 0;
idle_anim_speed = .18;		
}


if (get_gameplay_time() > 127 && state != PS_IDLE){
	_646f7070656c67616e676572 = 0;

}

