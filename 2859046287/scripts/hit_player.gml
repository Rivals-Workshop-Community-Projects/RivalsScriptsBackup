//hit_player.gml redirects to the real hit_player, which is user_event2 on tester
//the reason this is done is to add compatibility with stages that use articles that mimic player hit detections, as the game doesn't allow us to call this script in stages
user_event(hit_player_event);