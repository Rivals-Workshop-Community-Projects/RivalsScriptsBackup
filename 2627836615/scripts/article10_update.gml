if !set { //Setting angle if it isn't already.
user_event(5);
}

if amt_finished && amt_finished >= amt_players-1 {
	end_it = true;
}
if end_it && obj_stage_main.end_timer > 0 {
	obj_stage_main.end_timer++;
}
var kid = noone;
if end_it && obj_stage_main.end_timer <= 0 {
	print("ending match.");
	var scores = array_create(5, -1000);
//	var amt_players = 0;
	for (var i = 1; i <= 4; i++) {
		if is_player_on(i) {
			//amt_players++;
			print("Player "+string(i)+" on. Checking karts.");
			for (var k = obj_stage_main.total_karts-1; k >= 0; k--) {
				kid = obj_stage_main.kart_ins[k];
				if kid.play == i with (kid) {
					if finished_place > 0 {
						//scores[i] = 10000 - (finished_place*1000); //Finished place is lower the better you do, so it subtracts less points. first place is 9000, second is 8000, etc.
						set_player_stocks(i, 99);
						set_player_damage(i, finished_place)
						print("Set player "+string(i)+" to "+string(get_player_stocks(i))+" "+string(get_player_damage(i)));
					} else {//DNF. Check progress.
						scores[i] = 0; //Bad.
						set_player_stocks(i, 1);
						
						if obj_stage_main.lap_count > 0 { //Are laps even a thing?
							scores[i] += (lap/obj_stage_main.lap_count)*1000;
							scores[i] += (max_prog/360)*(1000/obj_stage_main.lap_count); //Should count for a partial lap.
							
							set_player_stocks(i, min(lap, 98))
							set_player_damage(i, floor(999-(max_prog/360)*999))
						} else { //No laps. Go by total distance.
							scores[i] = (lap*10);
							scores[i] += (max_prog/360)*10;
						}
						print("Set unfinished player "+string(i)+" to "+string(get_player_stocks(i))+" "+string(get_player_damage(i)));
					}
					break;
				}
			}
		}
	}	
	/*
	//Alright, distance scores tallied up. Time to sort.
	var place = 1;
	var winner = array_create(4, -1);
	for (i = 1; i <= 4; i++) { //Loop through everyone's score...
	place = 0;
		for (var ii = 1; ii <= 4; ii++) { //...and check how many scores are higher.
		if ii == i continue; //don't judge yourself.
			if scores[i] == scores[ii] scores[ii]++; //Deliberate port priority. How often are you going to DNF a race at exactly the same progress? Would you even care?
			if scores[ii] >= scores[i] place++;
		}
		winner[place] = i;
	}
	*/
	end_match();
}
/*
if end_it {
	players = 0;

	scores = [0, 0, 0, 0, 0]
	var i;

	with (obj_stage_article) {
		if num == 2 {
				image_alpha = 0;
			break;
		}
	}

	for (i = 1; i <= 4; i++) {
		if is_player_on(i) {
			with (obj_stage_article) {
				if num == 1 {
						other.players++;
						other.scores[i] = 1000 - finished_place*100;
						if finished_place <= 0 other.scores[i] -= 1000;
	//					other.scores[i] = (lap*360) + max_prog;
					break;
				}
			}

		}
	}
	var place;
	var winner = array_create(4, 0)
	for (var i = 1; i < 5; i++) { //i is the current player being checked. j is the player it's being compared to.
		place = 3; //Last place
		for (var j = 1; j < 5; j++) {
			if i == j continue; //lol same player
			if scores[i] > scores[j] {
				place--;
			}
		}
		if winner[place] != 0 winner[place] = -1; else winner[place] = i;
	}
	end_match(winner[0], winner[1], winner[2], winner[3])
}