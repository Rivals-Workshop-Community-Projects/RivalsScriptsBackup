//


followArray = -4;

sound_play(sound_get("ustrong2"),false,0,.05,.5)
sound_play(asset_get("sfx_boss_vortex_end"),false,0,1,0.5)
    

with oPlayer alreadydead = 0

readycutscene = 0

camx1 = 0
camx2 = 0
camy1 = 0
camy2 = 0

oldcamx = room_width/2 
oldcamy = room_height/2

newcamx = room_width/2
newcamy = room_height/2

camcontrolx = room_width/2
camcontroly = room_height/2

instance_create(room_width / 2, room_height / 2,"obj_stage_article", 1)
instance_create(room_width / 2, room_height / 2,"obj_stage_article", 2)
instance_create(room_width / 2, room_height / 2,"obj_stage_article", 3)

backroom = 0 
newroom = 0

laststand = 0
noclip = 0

intro = 156

frontroom = current_second%5

e1 = 0
e1x = 0
e2 = 0 
e2x = 0
e3 = 0 
e3x = 0
box = 0
boxx = 0

yoffset1 = 0
yoffset2 = 0

///room 1 stuffs 

Alexrun = -1

/////

