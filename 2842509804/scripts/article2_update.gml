//sad

parallax_x = 0-(0.20);
parallax_y = 0-(0.20);

if fade_timer >= 1{fade_timer--;}
else if fade_timer <= 1{fade_timer = 600;}

if fade_timer >= 300 {lighttransp = lerp(lighttransp,0.1, 0.01);}
if fade_timer <= 300 {lighttransp = lerp(lighttransp,0.8, 0.01);}
