//N/A update
/*
na_vsp_h[0]=na_vsp_h[1];
na_vsp_h[1]=vsp;

na_hsp_h[0]=na_hsp_h[1];
na_hsp_h[1]=hsp;
*/

/*if (place_meeting(x+(50*spr_dir), y-18, asset_get("par_block"))){
	print("yea")
}*/

if (get_player_color( player ) == 10) {
	init_shader();
}
if (get_player_color( player ) == 20) {
	init_shader();
}

if (get_player_color( player ) == 7){ //towerofheaven
	if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
		outline_color=[35, 67, 49]
		init_shader();
	}
	if (!ea_init){
		
		ea_init = true;
	}
}
if (get_player_color(player)==11&&extra_col==10){ //knight
	if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
		outline_color=[200, 200, 255]
		init_shader();
	}
	if (!ea_init){
		
		ea_init = true;
	}
}
if (get_player_color( player ) == 20){ //SAVE
	if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
		outline_color=[30, 30, 30]
	}
	if (!s_init){
		
		s_init = true;
	}
}

if (was_reloaded){
	if (get_player_color(player)==11||get_player_color(player)==19||get_player_color(player)==20){//specialsfx
		if (rk_sfx == false){
			if (special_down){
				rk_sfx = true;
				white_flash_timer = 18;
				sound_play(sound_get("rk_active"));
			}
		}
	}
	sound_play(sound_get("altsel"))
	was_reloaded = false;
}

if (get_player_color( player ) == 19||get_player_color( player ) == 11||get_player_color( player ) == 20) { //genesis
	if ((state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR)&&attack==AT_DSPECIAL&&window==3){
		giy_speed = clamp(giy_speed+giy_tr_speed, giy_speed_n, giy_speed_f)
	}else{
		giy_speed = clamp(giy_speed-giy_tr_speed, giy_speed_n, giy_speed_f)
	}
	giy_timer = giy_timer+giy_speed;
	if (giy_timer>giy_max){
		giy_timer = giy_timer-giy_max;
	}
}

if (state == PS_AIR_DODGE && attack == AT_USPECIAL){
	sound_stop(sound_get("dimensional"));
}

if (yo_dummy_your_up_b_got_PARRIED){
		//prat_fall_accel = prat_fall_accel_reduce;
		hsp = clamp(hsp, -3, 3)
	if (!free){
		yo_dummy_your_up_b_got_PARRIED = false;
		//prat_fall_accel = prat_fall_accel_normal;
	}
}

if ((get_gameplay_time() == 2 && get_training_cpu_action() != CPU_FIGHT) || was_reloaded){
	practice = true;
}
/*
if (practice && down_down && taunt_down && shield_down){
	nadev = true;
}*/

if (usp_real_cd){
	move_cooldown[AT_USPECIAL] = 2;
	if (!free||state==PS_WALL_JUMP||state==PS_HITSTUN||state==PS_HITSTUN_LAND){
		usp_real_cd = false;
		move_cooldown[AT_USPECIAL] = 0;
	}
}

if (dairvsp != dairvsp_orig){
	if (!free){
		dairvsp = dairvsp_orig
	}
}

if (state==PS_LANDING_LAG && fair_thing==true){
	hsp = fair_thing_hsp;
	fair_thing = false;
}

if (usp_ls_cooldown>0){
	usp_ls_cooldown--;
}

if (na_bh){
	with (asset_get("obj_article1")){
		if (player_id == other.id){
			cooldown = 40;
		}
	}
	na_bh = false;
}
if (!laseroverlay_init){
	instance_create( round(room_width/2), round(room_height/2), "obj_article_platform" )
	laseroverlay_init = true;
}
/*
if (state==PS_HITSTUN){
	air_friction = air_friction_hitstun
}else if(air_friction != air_friction_orig){
	air_friction = air_friction_orig
}*/

if (state==PS_RESPAWN){
	if (clock_n_deathstore > 0){
		clock_dur = 100;
		clock_n_dur = 60;
		if (state_timer == ((practice)?9:90)){
			sound_play(sound_get("tic_down"));
			clock_lock = false;
			clock_timer = clock_dur;
			clock_n_cur = round(clamp(-360*(clock_n_deathstore / dspmax),-360,360))
		}
	}
}/*else if (state != PS_RESPAWN && clock_dur != clock_dur_orig){
	clock_dur = clock_dur_orig;
	clock_n_dur = clock_n_dur_orig;
}*/

if ((state==PS_ATTACK_AIR || state==PS_ATTACK_GROUND) && (attack==AT_DSPECIAL || attack==AT_DSPECIAL_AIR)){
	//wow
}else if (na_dsp_charge >= dspmax){
	init_shader();
	col_timer++;
	if (col_timer >= col_timer_max){
		col_timer=0;
		col_phase=(col_phase=0)?1:0;
	};
}else if (col_timer!=0||col_phase!=0){
	col_timer = 0;
	col_phase = 0;
}

if (state==PS_SPAWN && extra_col == 0 && taunt_down){
	if (down_down){
		extra_col = 1
		white_flash_timer = 18;
		sound_play(sound_get("shine"));
		init_shader();
	}
	if (up_down){
		extra_col = 2
		white_flash_timer = 18;
		sound_play(sound_get("shine"));
		init_shader();
	}
	if (left_down){
		extra_col = 3
		white_flash_timer = 18;
		sound_play(sound_get("shine"));
		init_shader();
	}
	if (right_down){
		extra_col = 4
		white_flash_timer = 18;
		sound_play(sound_get("shine"));
		init_shader();
	}
	if (attack_down){
		extra_col = 5
		white_flash_timer = 18;
		sound_play(sound_get("shine"));
		init_shader();
	}
	if (shield_down){
		extra_col = 6
		white_flash_timer = 18;
		sound_play(sound_get("shine"));
		init_shader();
	}
	if (jump_down){
		extra_col = 9
		white_flash_timer = 18;
		sound_play(sound_get("shine"));
		init_shader();
	}
	if (special_down){
		extra_col = 8
		white_flash_timer = 18;
		sound_play(sound_get("shine"));
		init_shader();
	}
	if (strong_down){
		extra_col = 7
		white_flash_timer = 18;
		sound_play(sound_get("shine"));
		init_shader();
	}
}

/*if (get_player_color(player)==11){//knight
	if (state==PS_SPAWN && extra_col == 0){
		if (strong_down&&jump_down){
			extra_col = 10
			white_flash_timer = 18;
			sound_play(sound_get("rk_active"));
			init_shader();
		}
	}
}*/ //disabled cause i got lazy of bugfixing
if (get_player_color(player)==11||get_player_color(player)==19||get_player_color(player)==20){//specialsfx
	if (state==PS_SPAWN && rk_sfx == false){
		if (special_down){
			rk_sfx = true;
			white_flash_timer = 18;
			sound_play(sound_get("rk_active"));
		}
	}
}

if (attack==AT_FSTRONG&&state!=PS_ATTACK_GROUND){
	sound_stop(sound_get("down2"));
}
if (attack==AT_DSPECIAL&&state!=PS_ATTACK_GROUND&&state!=PS_ATTACK_AIR){
	sound_stop(sound_get("charge"));
	sound_stop(sound_get("charge2"));
	if (get_player_color(player) == 19){ sound_stop(sound_get("genesis_extra_elec")); };
}

with (oPlayer){
	if (id!=other.id){
		if (na_ust_marked>0){
			fall_through = true;
			if (other.attack==AT_USTRONG&&other.state==PS_ATTACK_GROUND){
				na_ust_marked--;
			}else{
				na_ust_marked=0;
			}
		}
	}
}

if (na_dsp_charge >= dspmax){
	if (get_gameplay_time()%2==0){
		var tmp_rand1 = random_func( 2, 4, true )
		if (tmp_rand1 = 0){
			var tmp_rand2 = random_func( 2, 2, true )
		var th = spawn_hit_fx( x-40+random_func( 1, 80, true ), y-(char_height/2)-40+random_func( 8, 80, true ), na_aura1 );
			if (tmp_rand2 = 1){
				th.depth = -30
			}
		}
		if (tmp_rand1 = 1){
			var tmp_rand2 = random_func( 2, 2, true )
		var th = spawn_hit_fx( x-40+random_func( 1, 80, true ), y-(char_height/2)-40+random_func( 7, 80, true ), na_aura2 );
			if (tmp_rand2 = 1){
				th.depth = -30
			}
		}
		if (tmp_rand1 = 2){
			var tmp_rand2 = random_func( 2, 2, true )
		var th = spawn_hit_fx( x-40+random_func( 1, 80, true ), y-(char_height/2)-40+random_func( 6, 80, true ), na_aura3 );
			if (tmp_rand2 = 1){
				th.depth = -30
			}
		}
	}
}

//NA
if (clock_timer>0){
	if (clock_show == false){
		clock_show = true
		clock_s_timer = clock_s_dur;
		clock_s_type = 1;
	}
	if (clock_timer == clock_s_dur){
		clock_s_timer = clock_s_dur;
		clock_s_type = 0;
	}
	if (clock_timer == 1){
		clock_show = false
	}
	clock_timer--;
}
if (clock_s_timer>0){
	clock_s_timer--;
}
var tmptmp_angle = round(clamp(-360*(na_dsp_charge / dspmax),-360,360))
if (tmptmp_angle != clock_n_prev){
	if (clock_n_timer==0 && !clock_lock){
		//print("old prev "+string(clock_n_prev))
		//print("old cur "+string(clock_n_cur))
		if (state!=PS_RESPAWN){
			clock_dur = clock_dur_orig;
			clock_n_dur = clock_n_dur_orig;
		}
		clock_n_timer = clock_n_dur
		clock_n_prev = clock_n_cur
		clock_n_cur = tmptmp_angle
		//print("prev "+string(clock_n_prev))
		//print("cur "+string(clock_n_cur))
	}
}
if (clock_n_timer>0){
	clock_n_timer--;
	//print("time "+string(clock_n_timer))
}
//print(string(clock_n_timer))
//print("state "+get_state_name( state ))
//print("state "+string(state_timer))

/*
if (quake_timer>0){
	var tmp_speed = round(ease_expoIn( 5, 1, quake_timer, quake_dur ))
	var tmp_dist = ease_expoIn( 1, 20, quake_timer, quake_dur )
	if (get_gameplay_time() % tmp_speed >= 1) { //thank you, rubercuber!
		var xMod = tmp_dist*(random_func_2(get_gameplay_time() mod 200, 2, false) - 1);
		var yMod = tmp_dist*(random_func_2((get_gameplay_time()*7)mod 177, 2, false) - 1);
		set_view_position(view_get_wview()/2 + view_get_xview() + xMod, view_get_hview()/2 + view_get_yview() + yMod)
	}
	quake_timer--;
}
*/


/*if (was_usp){
	if (state!=PS_ATTACK_AIR&&state!=PS_ATTACK_GROUND){
		sprite_change_offset("uspecial", 74, 134);
		was_usp = false;
	}
}*/

/*
var demoncheck = false;
with (asset_get("obj_stage_article")){ if (variable_instance_exists(id, "gw_demonhorde_enemy")){demoncheck = true;}}//demon horde check
if (demoncheck==true){
	
}
*/


if (trummelcodecneeded){
//	if (id % 10 == 0){
	if (nadev){
	
    trummelcodec = 17;
    trummelcodecmax = 9;
    trummelcodecsprite1 = sprite_get("static");
    trummelcodecsprite2 = sprite_get("static");

    trummelcodecspeaker[0] = 3;
    trummelcodecexpression[0] = 0;

    trummelcodecline[0,1] = "ソノテノコルシメリシンジ";
    trummelcodecline[0,2] = "バカナツグナイムダナトムライ";
    trummelcodecline[0,3] = "キットスベテトオリスギル";
    trummelcodecline[0,4] = "ナニモナニモノコラヌ";

    trummelcodecspeaker[1] = 3;
    trummelcodecexpression[1] = 1;

    trummelcodecline[1,1] = "スベテムカラウマレオチタ";
    trummelcodecline[1,2] = "サイゴオオウモノモクロニ";
    trummelcodecline[1,3] = "ソンナコトモワカラナイデ";
    trummelcodecline[1,4] = "ソンナコトモキヅカズ";
	
    trummelcodecspeaker[2] = 3;
    trummelcodecexpression[2] = 2;

    trummelcodecline[2,1] = "シヌトカンジシヌトミツメ";
    trummelcodecline[2,2] = "ニゲテマヨイサキヲタドリ";
    trummelcodecline[2,3] = "イキテカンジイキテミツメ";
    trummelcodecline[2,4] = "イキテイキテシニツク";

    trummelcodecspeaker[3] = 3;
    trummelcodecexpression[3] = 0;

    trummelcodecline[3,1] = "コワイサムイダルイアツイ";
    trummelcodecline[3,2] = "ココロカラダナニモカモガ";
    trummelcodecline[3,3] = "ムシルサケブナグルハネル";
    trummelcodecline[3,4] = "タタキツブスコナゴナ";
	
    trummelcodecspeaker[4] = 3;
    trummelcodecexpression[4] = 1;

    trummelcodecline[4,1] = "オレノナカニナニカノコル";
    trummelcodecline[4,2] = "ソンナハズワナイガノコル";
    trummelcodecline[4,3] = "ダレモハイリコメハシナイ";
    trummelcodecline[4,4] = "ナノニダレカノコッテル";
	
    trummelcodecspeaker[5] = 3;
    trummelcodecexpression[5] = 2;

    trummelcodecline[5,1] = "ナニモミエハシナイハズガ";
    trummelcodecline[5,2] = "ナニカミエルソンナハズハ";
    trummelcodecline[5,3] = "キエテシマウハズガナイト";
    trummelcodecline[5,4] = "シンジダカラマボロシ";
	
    trummelcodecspeaker[6] = 3;
    trummelcodecexpression[6] = 0;

    trummelcodecline[6,1] = "スウットヒイテスウットキエテ";
    trummelcodecline[6,2] = "トテモシズカコワイホドニ";
    trummelcodecline[6,3] = "ササルトゲガナガレフルエ";
    trummelcodecline[6,4] = "フエテフエテツキサス";
	
    trummelcodecspeaker[7] = 3;
    trummelcodecexpression[7] = 1;

    trummelcodecline[7,1] = "ナゼカナゼカイタイイタイ";
    trummelcodecline[7,2] = "ガマンデキヌホドニイタイ";
    trummelcodecline[7,3] = "ツメガハゲテユビガワレテ";
    trummelcodecline[7,4] = "チガナガレテタマッテル";
	
    trummelcodecspeaker[8] = 3;
    trummelcodecexpression[8] = 2;

    trummelcodecline[8,1] = "スベテムカラウマレオチタ";
    trummelcodecline[8,2] = "サイゴオオウモノモクロニ";
    trummelcodecline[8,3] = "ソンナコトモワカラナイデ";
    trummelcodecline[8,4] = "ソンナコトモキズカズ";
	
    trummelcodecspeaker[9] = 3;
    trummelcodecexpression[9] = 0;

    trummelcodecline[9,1] = "スベテムカラウマレオチタ";
    trummelcodecline[9,2] = "サイゴオオウモノモクロニ";
    trummelcodecline[9,3] = "タブンキットソレニオレハ";
    trummelcodecline[9,4] = "キヅクコトヲサケテタ";
	}
	else{
	
    trummelcodec = 17;
    trummelcodecmax = 52;
    trummelcodecsprite1 = sprite_get("static");
    trummelcodecsprite2 = sprite_get("na_codec");
    var page = 0;
/*

	//
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
*/
	//0
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "Beings make metaphora";
    trummelcodecline[page,2] = "of us gazing back.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	//1
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "We do not.";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	//2
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 4;
    trummelcodecline[page,1] = "We are always watching.";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	//3
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;
    trummelcodecline[page,1] = "It's here.";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	//4
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "who";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	//5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;
    trummelcodecline[page,1] = "The intertuption when";
    trummelcodecline[page,2] = "we talked about";
    trummelcodecline[page,3] = "Acid Rainbows.";
    trummelcodecline[page,4] = "";
    page++;
	//6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;
    trummelcodecline[page,1] = "It's here.";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	//7
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "High certain we had";
    trummelcodecline[page,2] = "reached your contact";
    trummelcodecline[page,3] = "once back whence.";
    trummelcodecline[page,4] = "";
    page++;
	//8
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "We recognize your";
    trummelcodecline[page,2] = "element. The elements,";
    trummelcodecline[page,3] = "the aspects, attunement,";
    trummelcodecline[page,4] = "aura of all beings.";
    page++;
	//9
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;
    trummelcodecline[page,1] = "Huh, I do remember";
    trummelcodecline[page,2] = "reading about this";
    trummelcodecline[page,3] = "specific abyss creature";
    trummelcodecline[page,4] = "in the old documents.";
    page++;
	//10
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "Let me just make sure...";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	//11
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "hell no this is not";
    trummelcodecline[page,2] = "the time to read books";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	//12
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "Yeah. This is documented";
    trummelcodecline[page,2] = "as N/A. Some say this";
    trummelcodecline[page,3] = "documented name is an";
    trummelcodecline[page,4] = "acronym...";
    page++;
	//13
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;
    trummelcodecline[page,1] = "but I'm sure it's just";
    trummelcodecline[page,2] = "a placeholder. They don't";
    trummelcodecline[page,3] = "call themselves anything,";
    trummelcodecline[page,4] = "not even 'abyss!'";
    page++;
	//14
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "For all intents and";
    trummelcodecline[page,2] = "purposes, let's just";
    trummelcodecline[page,3] = "use that and call them";
    trummelcodecline[page,4] = "N/A.";
    page++;
	//15
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 2;
    trummelcodecline[page,1] = "Ones have given this";
    trummelcodecline[page,2] = "vessel name. Curious.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	//16
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "how are you so calm";
    trummelcodecline[page,2] = "facing against unknown";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	//17
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 3;
    trummelcodecline[page,1] = "Hey, as long as it's";
    trummelcodecline[page,2] = "documented somewhere,";
    trummelcodecline[page,3] = "it's not unknown to us!";
    trummelcodecline[page,4] = "";
    page++;
	//18
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;
    trummelcodecline[page,1] = "...Although it's barely";
    trummelcodecline[page,2] = "written upon in this";
    trummelcodecline[page,3] = "document...";
    trummelcodecline[page,4] = "";
    page++;
	//19
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "Uh, so, I see that";
    trummelcodecline[page,2] = "you can speak.";
    trummelcodecline[page,3] = "And communicate, even?";
    trummelcodecline[page,4] = "";
    page++;
	//20
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "This is one of the few";
    trummelcodecline[page,2] = "formae have we given";
    trummelcodecline[page,3] = "cognitio.";
    trummelcodecline[page,4] = "";
    page++;
	//21
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 2;
    trummelcodecline[page,1] = "We grant this";
    trummelcodecline[page,2] = "habilitatum sparingly.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	//22
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;
    trummelcodecline[page,1] = "I must ask.";
    trummelcodecline[page,2] = "What do you guys want,";
    trummelcodecline[page,3] = "going as far as invading";
    trummelcodecline[page,4] = "upon everything?";
    page++;
	//23
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;
    trummelcodecline[page,1] = "If some forms can talk,";
    trummelcodecline[page,2] = "can't we discuss over";
    trummelcodecline[page,3] = "this and come to an";
    trummelcodecline[page,4] = "agreement?";
    page++;
	//24
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 2;
    trummelcodecline[page,1] = "It would not be wise for";
    trummelcodecline[page,2] = "any mind to disclose";
    trummelcodecline[page,3] = "one's stratagem.";
    trummelcodecline[page,4] = "";
    page++;
	//25
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "Fair enough.";
    trummelcodecline[page,2] = "I see you are not so";
    trummelcodecline[page,3] = "simple.";
    trummelcodecline[page,4] = "";
    page++;
	//26
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 3;
    trummelcodecline[page,1] = "A hive mind would not be";
    trummelcodecline[page,2] = "any simple.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	//27
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;
    trummelcodecline[page,1] = "Okay, while this guy is";
    trummelcodecline[page,2] = "not fighting, we gotta";
    trummelcodecline[page,3] = "discuss how we fight";
    trummelcodecline[page,4] = "this thing!";
    page++;
	//28
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;
    trummelcodecline[page,1] = "Muno,";
    trummelcodecline[page,2] = "can you help us out?";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	//29
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "Unfortunately, not really.";
    trummelcodecline[page,2] = "It's a new character.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	//30
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;
    trummelcodecline[page,1] = "Alright. Trummel, this";
    trummelcodecline[page,2] = "freaky axolotl is mainly";
    trummelcodecline[page,3] = "documented to summon a";
    trummelcodecline[page,4] = "shadowy bubble.";
    page++;
	//31
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;
    trummelcodecline[page,1] = "Apparently, this bubble is";
    trummelcodecline[page,2] = "safe to pass through,";
    trummelcodecline[page,3] = "but once enough force is";
    trummelcodecline[page,4] = "applied to it...";
    page++;
	//32
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;
    trummelcodecline[page,1] = "it would violently explode";
    trummelcodecline[page,2] = "and hurt us.";
    trummelcodecline[page,3] = "Larger the bubble, the";
    trummelcodecline[page,4] = "stronger the explosion!";
    page++;
	//33
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;
    trummelcodecline[page,1] = "It happens quick too, so";
    trummelcodecline[page,2] = "there may be no hope of";
    trummelcodecline[page,3] = "defending against it once";
    trummelcodecline[page,4] = "we end up popping it.";
    page++;
	//34
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;
    trummelcodecline[page,1] = "We just gotta try not to";
    trummelcodecline[page,2] = "pop the thing... Oh, the";
    trummelcodecline[page,3] = "document says arrows";
    trummelcodecline[page,4] = "simply passed through it.";
    page++;
	//35
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 3;
    trummelcodecline[page,1] = "Maybe it doesn't explode";
    trummelcodecline[page,2] = "against projectiles?";
    trummelcodecline[page,3] = "Let's take note of that.";
    trummelcodecline[page,4] = "";
    page++;
	//36
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "It is also observed that";
    trummelcodecline[page,2] = "N/A can send surge of";
    trummelcodecline[page,3] = "seemingly electric energy";
    trummelcodecline[page,4] = "through the bubble...";
    page++;
	//37
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;
    trummelcodecline[page,1] = "trapping and damaging";
    trummelcodecline[page,2] = "people inside it in";
    trummelcodecline[page,3] = "rapid succession.";
    trummelcodecline[page,4] = "";
    page++;
	//38
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;
    trummelcodecline[page,1] = "There's a vague";
    trummelcodecline[page,2] = "paragraph regarding the";
    trummelcodecline[page,3] = "action that, while doing";
    trummelcodecline[page,4] = "so, N/A seemed to be...";
    page++;
	//39
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;
    trummelcodecline[page,1] = "charging something,";
    trummelcodecline[page,2] = "and charged for a while.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	//40
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;
    trummelcodecline[page,1] = "If N/A can charge up";
    trummelcodecline[page,2] = "something for what is";
    trummelcodecline[page,3] = "said to be a while, I";
    trummelcodecline[page,4] = "think it means trouble.";
    page++;
	//41
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "We should pay attention";
    trummelcodecline[page,2] = "to when they might have";
    trummelcodecline[page,3] = "fully charged something...";
    trummelcodecline[page,4] = "";
    page++;
	//42
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;
    trummelcodecline[page,1] = "or we could just";
    trummelcodecline[page,2] = "interrupt their charging,";
    trummelcodecline[page,3] = "I bet they're very";
    trummelcodecline[page,4] = "vulnerable during it.";
    page++;
	//43
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;
    trummelcodecline[page,1] = "Now, abyss creature, for";
    trummelcodecline[page,2] = "convenience in adressing,";
    trummelcodecline[page,3] = "we will call your form";
    trummelcodecline[page,4] = "N/A for the time being.";
    page++;
	//44
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "n/a is pronounced";
    trummelcodecline[page,2] = "ennay btw";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	//45
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;
    trummelcodecline[page,1] = "N/A...";
    trummelcodecline[page,2] = "must we really fight?";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	//46
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "All conflicting forces";
    trummelcodecline[page,2] = "are fated to fight.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	//47
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;
    trummelcodecline[page,1] = "Alright. Trummel, ya think";
    trummelcodecline[page,2] = "we can return home";
    trummelcodecline[page,3] = "safely fighting against a";
    trummelcodecline[page,4] = "high elite of the Abyss?";
    page++;
	//48
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "nothing stopped us";
    trummelcodecline[page,2] = "before";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "even mcdonalds mascot";
    page++;
	//49
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;
    trummelcodecline[page,1] = "Right! Yeah! Trummel.";
    trummelcodecline[page,2] = "Let's have a gourmet";
    trummelcodecline[page,3] = "dinner if we can";
    trummelcodecline[page,4] = "get out safe, alright?";
    page++;
	//50
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;
    trummelcodecline[page,1] = "We can't let this be our";
    trummelcodecline[page,2] = "final battle.";
    trummelcodecline[page,3] = "Let's go!";
    trummelcodecline[page,4] = "";
    page++;
	//51
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "lets go man";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	//52
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 4;
    trummelcodecline[page,1] = "ENGAGE.";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	
	}
}

//print_debug( "---" )
if (trummelcodec_id!=-4){
	//print_debug( "id detect" )
	if (trummelcodec_id.codec){
		//print_debug( "codec detect" )
		if (trummelcodec_id.codecfile==17){
			//print_debug( "codecfile detect" )
			if (trummelcodec_id.currentcodecline == 1){
				//print_debug( "index detect" )
				if (trummelcodec_id.codectimer2 == 1){
					//print_debug( "timer detect" )
					if (trummelcodec_id.codecindex == 2){
						//print_debug( "line detect" )
						sound_play(sound_get( "scream" ));
						sound_play(sound_get( "scream" ));
					}
					if (trummelcodec_id.codecindex == 52){
						set_state( PS_ATTACK_GROUND )
						set_attack( AT_TAUNT )
						window_timer = 0;
					}
				}
			}
		}
	}
}
//print_debug( "---" )
//print_debug( "---" )


//ducky dialogue
if(variable_instance_exists(id,"diag"))
{
    diag_name = "N/A"
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "Chaos beckons.",
    "Night is longest when day does not exist.",
    "An unwelcome visitant.",
    "Go, then. Reap what it has sown.",
    "Your time is drawing near... Nothingness."]

//  Specific Character Interactions

//  Regular dialogue
    if(otherUrl == "1894194148" && diag != "") //Change the url into a specific character's
    {//A.R.
        diag = "False manusya, what have you found in your paths?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == "2108895293" && diag != "")
    {//Lumina
        diag = "Eigengrau cannot be erased.";
        diag_index = 0;
    }
    if(otherUrl == "2226596831" && diag != "")
    {//Reckless
        diag = "Destruction shall beget its decay.";
        diag_index = 0;
    }
    if(otherUrl == "2229832619" && diag != "")
    {//N/A (mirror match)
        diag = "...Signs...";
        diag_index = 0;
    }
    if(otherUrl == "2343479756" && diag != "")
    {//Natsumi
        diag = "Oblation to what is long lost. A purgatorial apparition, perhaps.";
        diag_index = 0;
    }
    if(otherUrl == "2415092274" && diag != "")
    {//Ao
        diag = "Constellations ever-radiant. But all stars must burn out.";
        diag_index = 0;
    }
    if(otherUrl == "2605462884" && diag != "")
    {//EXPLORER
        diag = "Seeker. Explorer of the infinite. You shall know that nothing is truly endless, but us.";
        diag_index = 0;
    }
    if(otherUrl == "2685923956" && diag != "")
    {//Jirachi
        diag = "Wishes are but an excuse.";
        diag_index = 0;
    }
    if(otherUrl == "2895650073" && diag != "")
    {//Madotsuki
        diag = "All dreams has its end. Even with its dreamer absent, fates step all the same.";
        diag_index = 0;
    }
    if(otherUrl == "3273103805" && diag != "")
    {//NisaeSSL
        diag = "Justified or not, all actions has its consequences. Nothing are without its entropy.";
        diag_index = 0;
    }
    if(otherUrl == "3310371100" && diag != "")
    {//Usher
        diag = "All are blind to what one lacks, for they never knew what they could have.";
        diag_index = 0;
    }
    if(otherUrl == "3346651920" && diag != "")
    {//Slenderman
        diag = "Myths rely of intangibility. Without, they wither and crumble.";
        diag_index = 0;
    }
	
    if(otherUrl == "1993599340" && diag != "")
    {//LSD
        diag = "Ablation of subconscious. To read without reading.";
        diag_index = 0;
    }
    if(otherUrl == "1917856427" && diag != "")
    {//Liz
        diag = "A heart beats, however inconsistent. Rhythms you must keep going.";
        diag_index = 0;
    }
    if(otherUrl == "2322322191" && diag != "")
    {//Frisk
        diag = "To determine a path, one must be prepared for its answers.";
        diag_index = 0;
    }
    if(otherUrl == "3161437965" && diag != "")
    {//Chara
        diag = "Soon there will be nowhere else to call your next.";
        diag_index = 0;
    }
    if((otherUrl == "2100204665"||otherUrl == "1873681040") && diag != "")
    {//Papyrus
        diag = "Trust beckons exploit. But you already know this, do you.";
        diag_index = 0;
    }
    if(otherUrl == "1869814191" && diag != "")
    {//sand
        diag = "The end of all things awaits.";
        diag_index = 0;
    }
    if(otherUrl == "1867608473" && diag != "")
    {//Kris
        diag = "Control your control.";
        diag_index = 0;
    }
    if(otherUrl == "1877715009" && diag != "")
    {//Hikaru
        diag = "Aimless...";
        diag_index = 0;
    }
    if(otherUrl == "2802300675" && diag != "")
    {//Valley & Death
        diag = "Those who walk in the shadow of death will soon follow its demise.";
        diag_index = 0;
    }
    if(otherUrl == "2871608790" && diag != "")
    {//Azi & Mr.Baggy
        diag = "Dare to heed the warning or face the truth.";
        diag_index = 0;
    }
    if(otherUrl == "3079776883" && diag != "")
    {//Kumaki
        diag = "It's easy to see where such reckless abandon can take you.";
        diag_index = 0;
    }
    if(otherUrl == "2965700442" && diag != "")
    {//Anthem
        diag = "Unsung are your unwritten future. Tread carefully or trip.";
        diag_index = 0;
    }
    if(otherUrl == "2977835488" && diag != "")
    {//Qoedil
        diag = "No hunger are ever satiated.";
        diag_index = 0;
    }
    if(otherUrl == "3308351120" && diag != "")
    {//Saelune
        diag = "Attitude can only hide so much.";
        diag_index = 0;
    }
    if(otherUrl == "3306584099" && diag != "")
    {//Tomoko
        diag = "Seems even the narrative wants you not.";
        diag_index = 0;
    }
    if(otherUrl == "3309240911" && diag != "")
    {//Putrolce
        diag = "The world of nothing has no feed.";
        diag_index = 0;
    }
    if(otherUrl == "2396735388" && diag != "")
    {//Zephrie
        diag = "Breeze grow to tempest, to storm. Control lest they absorb you.";
        diag_index = 0;
    }
    if(otherUrl == "3480814244" && diag != "")
    {//Iori
        diag = "You understand nothing.";
        diag_index = 0;
    }
    if(otherUrl == "2006712792" && diag != "")
    {//Feri
        diag = "End of your hubris.";
        diag_index = 0;
    }
    if(otherUrl == "2534202008" && diag != "")
    {//Kinunosu
        diag = "Transliterations do not tell the whole story.";
        diag_index = 0;
    }
    if(otherUrl == "2504062893" && diag != "")
    {//Sciros
        diag = "What wills you to keep your chain that bounds?";
        diag_index = 0;
    }
    if(otherUrl == "2201608216" && diag != "")
    {//Blake
        diag = "You've sought after what was ultimately none.";
        diag_index = 0;
    }
    if(otherUrl == "2502590772" && diag != "")
    {//Minun Plusle
        diag = "One, or two, or many more, mean naught against our division none.";
        diag_index = 0;
    }
    if(otherUrl == "2546990424" && diag != "")
    {//Maverick
        diag = "Air and wind is volatile. Even a small feather can alter the fate.";
        diag_index = 0;
    }
    if(otherUrl == "2504113755" && diag != "")
    {//Nova
        diag = "Time dissonance do not fool our eyes.";
        diag_index = 0;
    }
    if(otherUrl == "2396961482" && diag != "")
    {//Anglara
        diag = "The ocean darkness has much to offer - however the differences are clear.";
        diag_index = 0;
    }
    if(otherUrl == "3139912282" && diag != "")
    {//Rudra
        diag = "...Not of us? Intriguing.";
        diag_index = 0;
    }
    if(otherUrl == "1996010699" && diag != "")
    {//Suitcase
        diag = "...What reasons brought thou here?";
        diag_index = 0;
    }
    if(otherUrl == "2504123533" && diag != "")
    {//Visselle
        diag = "Conjure your path, if you dare.";
        diag_index = 0;
    }
    if(otherUrl == "2453146011" && diag != "")
    {//Monarch
        diag = "Think beyond your own rules, lest the reality flings you nowhere.";
        diag_index = 0;
    }
    if(otherUrl == "2605468610" && diag != "")
    {//Exetior
        diag = "Your ideal self is none but terrible hubris.";
        diag_index = 0;
    }
    if(otherUrl == "2217843818" && diag != "")
    {//Among
        diag = "With many eyes, we cannot be fooled. Try, if you dare.";
        diag_index = 0;
    }
    if(otherUrl == "2265876548" && diag != "")
    {//Matthew Favson
        diag = "That is what you wish to believe. Let us see how further can you keep such beliefs.";
        diag_index = 0;
    }
    if(otherUrl == "2502476068" && diag != "")
    {//Matt
        diag = "Legends and folklores are not absolute.";
        diag_index = 0;
    }
    if(otherUrl == "1962084547" && diag != "")
    {//Bird Guy
        diag = "Absent...";
        diag_index = 0;
    }
    if(otherUrl == "2267598408" && diag != "")
    {//Cantaloupe
        diag = "Voids are concept nonsingular.";
        diag_index = 0;
    }
    if(otherUrl == "2787737701" && diag != "")
    {//Sinker
        diag = "...An artifice... followed us here. If what thou seek are we, then leave thouself to the flow.";
        diag_index = 0;
    }
    if(otherUrl == "2102497760" && diag != "")
    {//Aei Ou
        diag = "Forgotten to time, or was it inevitable...?";
        diag_index = 0;
    }
    if((otherUrl == "1871989159"||otherUrl == "16") && diag != "")
    {//Mollo
        diag = "Praise not the god that does not hear.";
        diag_index = 0;
    }
    if((otherUrl == "2136440419"||otherUrl == "17") && diag != "")
    {//Hodan
        diag = "Care not the world, and the world, too, cares you not.";
        diag_index = 0;
    }
    if(otherUrl == "19" && diag != "")
    {//Olympia
        diag = "The truth is always obscured.";
        diag_index = 0;
    }
    if(otherUrl == "1968068304" && diag != "")
    {//Epinel
        diag = "Earth will draw its final breath.";
        diag_index = 0;
    }
    if((otherUrl == "1913517643"||otherUrl == "18") && diag != "")
    {//Pomme
        diag = "It will all be over soon.";
        diag_index = 0;
    }
    if(otherUrl == "2229887722" && diag != "")
    {//Amber
        diag = "...";
        diag_index = 0;
    }
    if(otherUrl == "1968648848" && diag != "")
    {//Hime Abyss
        diag = "How... exhausting.";
        diag_index = 0;
    }
    if(otherUrl == "1866016173" && diag != "")
    {//Guadua
        diag = "Past may build future, but that is not its sole purpose.";
        diag_index = 0;
    }
    if((otherUrl == "1865940669"||otherUrl == "3139883935") && diag != "")
    {//Sandbert/Mrs.
        diag = "All that lives must die, passing through nature to eternity.";
        diag_index = 0;
    }
	/*
    if(otherUrl == "" && diag != "") //Change the url into a specific character's
    {
        diag = "Hey, I know you! I will beat you up.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
	*/
    
	
//  NRS/3-Part dialogue
    if(otherUrl == "2254931693") //Change the url into a specific character's
    {//bagelboy bonby
        with(pet_obj) {
        diag_nrs_p1 = (otherPlayer); //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
        diag_nrs = true; //Sets the 3-Part dialogue to happen.
        diag_nrs_diag = [
        "(axolotl)",
        "A manusya beyond reality rules. How curious.",
        "(  )"]

        //If your portrait has multiple sprite indexes. You can change them during the interaction!
		
        switch(diag_nrs_state)
        {
            case 0: //First Message
                other.diag_index = 0;
                break;
            case 1: //Second Message
                other.diag_index = 0;
                break;
            case 2: //Last Message
                other.diag_index = 4;
                break;
        }
		}
    }
    if(otherUrl == "2520247938") //Change the url into a specific character's
    {//mariohead
        with(pet_obj) {
        diag_nrs_p1 = player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
        diag_nrs = true; //Sets the 3-Part dialogue to happen.
        diag_nrs_diag = [
        "Ooh, axolotl of doom. Very scary!",
        "Your flight shall be cut short.",
        "Get ready to move your fingers, it's-a time for you to type!"]

        //If your portrait has multiple sprite indexes. You can change them during the interaction!
		/*
        switch(diag_nrs_state)
        {
            case 0: //First Message
                other.diag_index = 0;
                break;
            case 1: //Second Message
                other.diag_index = 1;
                break;
            case 2: //Last Message
                other.diag_index = 4;
                break;
        }
		*/
		}
    }
	
}






/*
if (nadev){
	if (down_stick_down && shield_down){
		if (nadev_cooldown==0){
			nadev_display = (nadev_display)?false:true;
		}
		nadev_cooldown = 3;
	}
	if (nadev_cooldown>0){
		nadev_cooldown--;
	}
}
*/




