var temp_x = x + 8;
var temp_y = y + 9;

shader_end();

//CCS Button Variables
voice_button = 0;

split_var = split_synced_var(1,4);
pill_button =split_var[1];
if (pill_button <1) || (pill_button >10) {pill_button = 1;}
pill_prev=pill_button;


alt_cur = get_player_color(player);
alt_prev = alt_cur;
 
alt_name[0]  = "Default";
alt_name[1]  = "Dr. Pink";
alt_name[2]  = "Dr. Red";
alt_name[3]  = "Dr. Green";
alt_name[4]  = "Dr. Light Blue";
alt_name[5]  = "Dr. Dark";
alt_name[6]  = "Dr. Gold";
alt_name[7]  = "Dr. Purple";
alt_name[8]  = "Dr. Azure";
alt_name[9]  = "Dr. Yuuto";
alt_name[10] = "Dr. Peace";
alt_name[11] = "The Medic (Red)";
alt_name[12] = "The Medic (Blu)";
alt_name[13] = "Mario";
alt_name[14] = "Luigi";
alt_name[15] = "Dr. Wily";
alt_name[16] = "Dr. Eggman";
alt_name[17] = "Dr. Piccolo";
alt_name[18] = "Gold + Silver";
alt_name[19] = "Dr. Strange";
alt_name[20] = "Abyss";
alt_name[21] = "Gameboy";
alt_name[22] = "NES";
alt_name[23] = "BLMario";
alt_name[24] = "Vaporwave";
alt_name[25] = "TSMSB"; 
alt_name[26] = "Wega";
alt_name[27] = "Transcendent";
alt_name[28] = "Dr. Pepper";
alt_name[29] = "Dr. E";
alt_name[30] = "Dr. Wrecker";
alt_name[31] = "Dr. Weird";

//setting pill Defaults
if pill_button == 1{
	 if alt_cur == 8 {		//Bluey
		pill_button=10;
	}
	else if alt_cur == 15 {		//Wily
		pill_button=9;
	}
    else if alt_cur == 11 || alt_cur == 12{		//Medic
		pill_button=6;
	}
	else if alt_cur == 16{			//Eggman
		pill_button=5;
	}
	else if alt_cur == 21 || alt_cur == 22{		//Tetris
		pill_button=4;
	}
	else if alt_cur == 20{			//Virus
		pill_button=8;
	}
	else if alt_cur == 25{			//Pringles
		pill_button=2;
	}
	else if alt_cur == 28{			
		pill_button=3;
	}
	else if alt_cur == 29{			//Rice
		pill_button=6;
	}
	else if alt_cur == 31{			//Mothra
		pill_button=7;
	}
}
//Init vars part 2
pill_cur = pill_button;


num_alts = 32;
//Alt



//-------------------------Thanks Supersonic-------------------
#define split_synced_var
///args chunk_lengths...
var num_chunks = argument_count;
var chunk_arr = array_create(argument_count);
var player = (room == 113) ? 0 : self.player;
var synced_var = get_synced_var(player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_len = argument[i]; //print(chunk_len);
    var chunk_mask = (1 << chunk_len)-1
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
    chunk_offset += chunk_len;
}
print(chunk_arr);
return chunk_arr;
//pill_skin = abs(get_synced_var(player));
//pill_prev = get_synced_var(player);