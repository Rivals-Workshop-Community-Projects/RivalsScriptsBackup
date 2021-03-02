//


with oPlayer {
if 150 > get_gameplay_time() && (taunt_down || special_down){

if up_down && !right_down && !left_down && !down_down {
other.musicSelect = 1
}
if up_down && right_down && !left_down && !down_down {
other.musicSelect = 2
}
if !up_down && right_down && !left_down && !down_down {
other.musicSelect = 3
}
if !up_down && right_down && !left_down && down_down {
other.musicSelect = 4
}
if !up_down && !right_down && !left_down && down_down {
other.musicSelect = 5
}
if !up_down && !right_down && left_down && down_down {
other.musicSelect = 6
}
if !up_down && !right_down && left_down && !down_down {
other.musicSelect = 7
}
if up_down && !right_down && left_down && !down_down {
other.musicSelect = 8
}





}
}

//Testing Purposes
/*
with oPlayer {
if taunt_down {
obj_stage_main.monitorKilling = 1
}
}
*/




if songType = 0 {
	music_set_volume(1)
	if get_gameplay_time() = 360 {
	with oPlayer {
	other.rngCheck = ((x - other.x) mod 7) + 1
	}
	}
} else {
if get_gameplay_time() = 150 {
with oPlayer {
if other.musicSelect = 0 {
other.rngCheck = (x - other.x) mod 7 + 1
} else {
other.rngCheck = other.musicSelect
}
}
}

if 150 > get_gameplay_time() {
music_set_volume(0)
}

}


/* Debug Mode
with oPlayer {
if taunt_down {
obj_stage_main.oneStock = 1
}
}
*/

finalStock[0] = -4
finalStock[1] = -4
finalStock[2] = -4
finalStock[3] = -4

with oPlayer {
if get_player_stocks( player ) = 1 {
obj_stage_main.oneStock = 1
}
other.finalStock[player - 1] = get_player_stocks( player )
}


if (finalStock[0] = 0 || finalStock[0] = 1 || finalStock[0] = -4) && (finalStock[1] = 0 || finalStock[1] = 1 || finalStock[1] = -4) && (finalStock[2] = 0 || finalStock[2] = 1 || finalStock[2] = -4) && (finalStock[3] = 0 || finalStock[3] = 1 || finalStock[3] = -4) {
obj_stage_main.killingTime = 1
}

music_timer++;



switch(rngCheck) {
case 1: //Lets Killing

	if (60 * 60 > get_game_timer()) || killingTime = 1 {
	music_play_file("1last");
	monitorKilling = 1
		} else {
		music_play_file("music_loop1");
		}

break;
case 2: 
	if oneStock = 1 {
	music_play_file("2last");
		} else {
		music_play_file("music_loop2");
		}
break;
case 3: 
	if oneStock = 1 {
	music_play_file("3last");
		} else {
		music_play_file("music_loop3");
		}
break;
case 4: //Lets Killing
	if (60 * 60 > get_game_timer()) || killingTime = 1 {
	music_play_file("1last");
	monitorKilling = 1
		} else {
		music_play_file("music_loop4");
		}
break;
case 5: //Lets Killing
	if (60 * 60 > get_game_timer()) || killingTime = 1 {
	music_play_file("1last");
	monitorKilling = 1
		} else {
		music_play_file("music_loop5");
		}
break;
case 6: 
	if oneStock = 1 {
	music_play_file("4last");
		} else {
		music_play_file("music_loop6");
		}
break;
case 7: 
	if oneStock = 1 {
	music_play_file("3last");
		} else {
		music_play_file("music_loop7");
		}
break;
case 8: 
	if oneStock = 1 {
	music_play_file("5last");
		} else {
		music_play_file("music_loop8");
		}
break;

}




/*
if (is_laststock()) {
music_crossfade(1, 0.025)
}


1. Debate -> Killing
2. Super Mix
3. Heat up
4. Panic
5. Debate
6. World
7. Dive
8. Climax
*/











