//kHazardTimer: timer for the kraggs
kHazardTimer = 0;

//kHazardMaxTimer: how long it takes for a kragg to trigger 
kHazardMaxTimer = 120;

//kStartPoints: the start xs and y for the kraggs
kStartPoints = [get_marker_x(5),get_marker_x(1),get_marker_y(1)];

//kArticles: rock
kArticles = [noone,noone];

sprite_index = asset_get("empty_sprite")
depth = 30

//ROLLING BG Kragg

//bgKraggPos
bgKraggPos = [0,0]

//bgKraggTimer: the timer for the moving kragg to spawn in the background
bgKraggTimer = 0;

//bgKraggMaxTimer
bgKraggMaxTimer = 180;

//bgKraggDelay
bgKraggDelay = 1;
bgKraggMaxDelay = 60;

//currentPoint: Point.
currentPoint = 0;

//points: point in the background to follow as a path.
points = [ [516,222], [460, 258], [642, 258], [430, 380] ]

//kraggResprite
kraggResprite = sprite_get("roll_isometric")
//kraggFrame = 0;

//STANDING KRAGG

//standingPos: standing kragg position
standingPos = [1010,256]

//standingFrame: frame of the left kragg
standingFrame = 0;

//bgKraggPosition: the position on the kragg rolling
bgKraggPosition = [0,0]

//initialCamPos: initial camera position
initialCamPos = [view_get_xview(),view_get_yview()]

//currentCamParallax: current camera parallax stuff
currentCamParallax = [0,0]

