//N/A update
/*
na_vsp_h[0]=na_vsp_h[1];
na_vsp_h[1]=vsp;

na_hsp_h[0]=na_hsp_h[1];
na_hsp_h[1]=hsp;
*/

if (get_player_color( player ) == 10) {
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

if (was_reloaded){
	sound_play(sound_get("altsel"))
	was_reloaded = false;
}

if (get_player_color( player ) == 19||get_player_color( player ) == 11) { //genesis
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

if ((get_gameplay_time() == 2 && get_training_cpu_action() != CPU_FIGHT) || was_reloaded){
	practice = true;
}
if (practice && down_down && taunt_down && shield_down){
	nadev = true;
}

if (dairvsp != dairvsp_orig){
	if (!free){
		dairvsp = dairvsp_orig
	}
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
		extra_col = 7
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
}

if (attack==AT_FSTRONG&&state!=PS_ATTACK_GROUND){
	sound_stop(sound_get("down2"));
}
if (attack==AT_DSPECIAL&&state!=PS_ATTACK_GROUND&&state!=PS_ATTACK_AIR){
	sound_stop(sound_get("charge"));
	sound_stop(sound_get("charge2"));
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
    "Chaos beckons. Engage.",
    "Night is longest when day does not exist. Engage.",
    "An unwelcome visitant. Engage.",
    "Would molydeux grant you fortune? Engage.",
    "Go, then. Reap what it has sown.",
    "Your time is drawing near... Nothingness. Engage."]

//  Specific Character Interactions

//  Regular dialogue
    if(otherUrl == "1894194148" && diag != "") //Change the url into a specific character's
    {//A.R.
        diag = "False manusya on an escapade. What good is there to delay inevitability? Engage.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == "2108895293" && diag != "")
    {//Lumina
        diag = "Chaos. Black within white. Light within dusk. A concept as old as history. Continue it. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2226596831" && diag != "")
    {//Reckless
        diag = "A silhouette seeking physical chaos. Destruction shall beget decay. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2229832619" && diag != "")
    {//N/A (mirror match)
        diag = "Multiples. An echo. What must we seek in ourselves? It naught matter. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2343479756" && diag != "")
    {//Natsumi
        diag = "Oblation to what is long lost. A purgatorial apparition, perhaps. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2415092274" && diag != "")
    {//Ao
        diag = "Constellations ever-radiant. Loneliness, too, are a driving force. Engage.";
        diag_index = 0;
    }
	
    if(otherUrl == "2605462884" && diag != "")
    {//EXPLORER
        diag = "Seeker. Explorer of the endless. It has been enough. Engage.";
        diag_index = 0;
    }
	
    if(otherUrl == "1877715009" && diag != "")
    {//Hikaru
        diag = "Light. Dawn. We've no reason to encourage you any longer. Engage.";
       // diag = "Light. Dawn. You have strengths you might not expect. You can be more confident in yourself. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2396735388" && diag != "")
    {//Zephrie
        diag = "Befriender of the wind. Controlled, but no powerful than a storm. Engage.";
        //diag = "Befriender of the wind. Controlled, no powerful as a storm. More impressive than pure, wild energy. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2006712792" && diag != "")
    {//Feri
        diag = "Voices. Or is it the end of your hubris? Engage.";
        //diag = "Voices. Perhaps you're not confident enough. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "1993599340" && diag != "")
    {//LSD
        diag = "Ablation of subconscious. To read without reading. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "1917856427" && diag != "")
    {//Liz
        diag = "A heart beats, however inconsistent. Rhythms you must keep going. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2322322191" && diag != "")
    {//Frisk
        diag = "To determine a path, you must accept its consequences. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2300438860" && diag != "")
    {//Chara
        diag = "One end of a path, perhaps. Soon there will be no more of you to move on to another. Engage.";
        //diag = "One end of a path, perhaps. Soon there will be no more of you to move on to the next. Engage.";
        diag_index = 0;
    }
    if((otherUrl == "2100204665"||otherUrl == "1873681040") && diag != "")
    {//Papyrus
        diag = "Unconditional trust... Futility. Engage.";
        //diag = "Unconditional trust... What drives you hopeful? Engage.";
        diag_index = 0;
    }
    if(otherUrl == "1869814191" && diag != "")
    {//sand
        diag = "The end of all things awaits. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "1867608473" && diag != "")
    {//Kris
        diag = "Control lies in one's willpower. Take yours, else it is lost. Engage.";
        //diag = "Control lies in your willpower. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2534202008" && diag != "")
    {//Kinunosu
        diag = "A nest of silk. Restrictment is a stratagem, however would be nothing to us of many. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2504062893" && diag != "")
    {//Sciros
        diag = "Reanimation. Free spirits confined once again. Serve your purpose, then. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2201608216" && diag != "")
    {//Blake
        diag = "A soul echt, but an abandoned artifice nonetheless. Engage.";
        //diag = "Seemingly a scrap, however with a soul echt. Perhaps incorporeal in nature. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2502590772" && diag != "")
    {//Minun Plusle
        diag = "One, or two, or many more, mean naught against our division none. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2546990424" && diag != "")
    {//Maverick
        diag = "Wind... Aimless it is not. Directions, a destination. Engage.";
        //diag = "Fierce fist, yet a whirlwind. However seems amplified with experience. Respectable effort. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2504113755" && diag != "")
    {//Nova
        diag = "Tangible illusions. Time dissonance. Engage.";
        //diag = "Tangible illusions. Arcane or artificial, we wonder. Conclusions would not be needed. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2396961482" && diag != "")
    {//Anglara
        diag = "Light of the depths. The ocean darkness has much to offer - however our differences are clear. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2504123533" && diag != "")
    {//Visselle
        diag = "Controlled alchemy. Perhaps the ocean darkness has developed differently. Conjure your path, then. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2453146011" && diag != "")
    {//Monarch
        diag = "Our spatial comprehension is beyond what you can attain. Think. Engage.";
        //diag = "Our spatial comprehension is beyond what you can attain. Think with them. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2217843818" && diag != "")
    {//Among
        diag = "Deception. Mean naught with many eyes to prove its falsehood. Engage.";
        //diag = "Deception would be a powerful stratagem, however mean naught with many eyes to prove its falsehood. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2265876548" && diag != "")
    {//Matthew Favson
        diag = "That is what you wish to believe. Let us see how much further can you keep such beliefs. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2775288890" && diag != "")
    {//Sol
        diag = "Such hubris. One day, thou shalt face true consequence. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2502476068" && diag != "")
    {//Matt
        diag = "Manusya of the folklores. A powerful fighter, though not absolute. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "1962084547" && diag != "")
    {//Bird Guy
        diag = "Your driving force... beyond our comprehension. Perhaps it is clear? Engage.";
        //diag = "Your intentions we find unable to decipher... Cruelty. Fury. Compassion. Justice? Seem to be none of what we think it is. Intruguing one. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2267598408" && diag != "")
    {//Cantaloupe
        diag = "Void is a concept nonsingular. What you serve casts different motives, however we naught mean end to what may overlap with what we are. We only intend to purge what is against us. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2787737701" && diag != "")
    {//Sinker
        diag = "...This artifice... observing us. If what thou seek is us, then leave thouself to the flow. Engage.";
        //diag = "...This artifice... observing us. If what thou seek is us, then leave thouself in the flow. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "nyi" && diag != "")
    {//Sumo
        diag = "A manusya seemingly unproportionate - however naught mean disadvantage. One's power is of its experience and fighting arts. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "2102497760" && diag != "")
    {//Aei Ou
        diag = "Forgotten to time... We admit this to be an emotion we, too, have felt closely. Sorrowful. Must we engage?";
        diag_index = 0;
    }
    if(otherUrl == "1968068304" && diag != "")
    {//Epinel
        diag = "Formidable one... However no extent of durable stones mean unbreakable. It shalt be done. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "1913517643" && diag != "")
    {//Pomme
        diag = "Hymns, songs, we had long forgotten these concepts. Such is time fleeting. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "1866016173" && diag != "")
    {//Guadua
        diag = "Misunderstood. You were made to be on par, now compared to the subpar. Engage.";
        diag_index = 0;
    }
    if(otherUrl == "1865940669" && diag != "")
    {//Sandbert
        diag = "Primeval being. Divine, demonic, all the same. All that lives must die, passing through nature to eternity. Engage.";
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
    if(otherUrl == "1968648848") //Change the url into a specific character's
    {//Hime Abyss
        with(pet_obj) {
        diag_nrs_p1 = player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
        diag_nrs = true; //Sets the 3-Part dialogue to happen.
        diag_nrs_diag = [
        "Yeeel, Was yea ra weal yorr toe titilia mahin en jambea won mea. Infel, yorr memora? Wharn wis dor sos yora spitze - Was nyasri ga nozess en kil yora.",
        "...",
        "Den dest phantasmagoria en rhaplanca ides, Mea wis rooshellan, noini roon en endia vale. Coall inna mea."]

        //If your portrait has multiple sprite indexes. You can change them during the interaction!
		/*
        switch(diag_nrs_state)
        {
            case 0: //First Message
                other.diag_index = 1;
                break;
            case 1: //Second Message
                other.diag_index = 1;
                break;
            case 2: //Last Message
                other.diag_index = 2;
                break;
        }
		*/
		}
    }
    if(otherUrl == "2254931693") //Change the url into a specific character's
    {//bagelboy bonby
        with(pet_obj) {
        diag_nrs_p1 = (otherPlayer); //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
        diag_nrs = true; //Sets the 3-Part dialogue to happen.
        diag_nrs_diag = [
        "(axolotl)",
        "A manusya beyond reality rules. We are curious to see what you perform. Engage.",
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
        "Severed manusya head with sentience. A flight with no end, away from whence you came. Its path shall be cut short. Engage.",
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





