// called when the character gets KO'd
if (compactID != undefined) {
    compactID.vsp = 0;
    compactID.compacted = false;
    compactID.visible = true;
    compactID = undefined;
}

compactID = undefined; //id of player being compacted
compactTimer = 0; //level of compactness until cube is full
compactThreshhold = 30; //above value, cubes will explode
compactMax = 60; //max level of compactness
compactJunk = false; //true if hit junk, speeds up compacting time
cubeDist = 100000000000; //distance to nearest cube
cubeNearest = undefined; //id of nearest cube
holdingCube = false; //true if holding cube
throwHsp = 0; //hsp of throwing cube
throwVsp = 0;
bounceHsp = 0; //hsp of cube when bounce of enemy
bounceVsp = 0;

heldPower = 0; //power of held cube
heldExplode = false; //inherits willExplode
heldExplodeMax = 600;
heldExplodeTimer = 600; //inherits explodeTimer
heldExplodeThreshhold = 120; //number of frame as which ticking starts

taunt_played = false;
sound_taunt = false;

outline_color = [0, 0, 0];
init_shader();