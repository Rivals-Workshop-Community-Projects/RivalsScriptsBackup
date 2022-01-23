// Article Update is ran for every frame that the article object is in-game.

alpha = ease_sineIn(1, 0, time_alive, 30);

time_alive++;
if time_alive > 40 instance_destroy(self);