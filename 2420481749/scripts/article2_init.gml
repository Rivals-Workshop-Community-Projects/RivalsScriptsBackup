//panels

uses_shader = false;
state = 0;
should_destroy = false;
article_gravity = 0;


tencoindeathtimer = 300;
cointimer = 25;
coinvsp = 0;

panelvsp = 0;
panelupward = 24;
panelanimate = false;
panelfade = false;
panelpullable = false;
panelpulldirection = 0;
panelyeet = 0;
panelspacing = 0;
panelspacing_x_dir = 0;
panelspacing_y_dir = 0;
panelglow = 0;
panelglowing = 0;

arrowpush = false;

activateboost = true;

exjump = true;

//hitbox stuff
hbox_group = array_create(4,array_create(50,array_create(10,0))); //ew
 
hitstun = 0;
hitstun_full = 0;
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;
 