/*
if (get_gameplay_time() % 1 == 0) {
	team2 += 1
	if team2 >= 119 {
		team2 = 0
	}

	team1 += 1
	if team1 >= 119 {
		team1 = 1
	}

	//print(team2)
}
*/


if get_gameplay_time() == 3 {
	with oPlayer {
		if player == 1 {
			for(i = 0; i < 120; i++) {
				if url == other.charData[i, 0] {
					other.team1 = i
				}
			}
		}
	}
	with oPlayer {
		if player == 2 {
			for(i = 0; i < 120; i++) {
				if url == other.charData[i, 0] {
					other.team2 = i
				}
			}
		}
	}
}