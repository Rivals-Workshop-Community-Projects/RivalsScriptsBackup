//break_fx = hit_fx_create(sprite_get("break_fx"), 12)

debug = false; //debug var
debugVar = debug;

videoMode = false; //tools to end match early

expertMode = false; //aether mode is expert mode

roomXmod = 0; //camera mods
roomYmod = 0;

tempXmod = 0;
tempYmod = 0;

temppvsp = 0;
tempphsp = 0;

attack = 0;
timer = 0;
attack_timer = 0;
attack_count = 0;
state_timer = 0;
temp_timer = 0;
state = 0;

randSwitch = 0; //for chk chk attacks

foodCount = 0;
wasTalking = false; //if sans was previosuly talking ie you FIGHTed

everyoneAlivent = false;
aliventTimer = 0;
deadPlayerCount = 0;

winEndState = false; //beat sans stats

dunkedOn = false;
dunkedText = false;

outlineSlamCounter = 0;

sansGravityDraw = false;
sansGravityDrawFinal = false; //only for the final slamming attack
sansGravityDrawSpeed = 0;
sansGravityDir = undefined;
sansGravityDrawTimer = 0;
sansGravityMoveTime = 0;
sansGravityFaceIndex = 0;
sansGravityEndTimer = 0;

tempSoundVar = 0; //for slamming sound delay
soundDelay = 0;

corridorDrawIndex = 0; //animations for corridor

metaBones = 0; //1 = single, 2 = full

sweatLevel = 0; //sans sweat face
blackScreen = false; //completely black the screen

boneCounter1 = 0; //general-use counter
boneCounter2 = 0;

waveSide = 0;

sansAttackIndex = 0; //increases every time sans attacks you
sansSpeechIndex = 0; //increases every time you attack sans, and his speech advances

textSkipMode = false;

drawAttackFx = false; //knife attack vfx
drawAttackFxOffset = 0;
attackFxTimer = 0; //knife attack vfx timer;
drawMiss = false; //miss
missTimer = 0;
drawZs = false;
drawAttackBar = false;
attackBarFade = 0;
attackMarkerx = 0;
attackMarkerMove = false;

randAttacks = false; //speech not progressed enough, do random attacks
randAttacks1 = false; //first phase rand attacks

menuIndex = 0; //for navigating menus during your attack phase
menuIndexTimer = 0; //time spent in each menuIndex

attack_bar_type = 1; //weapon dependant
attacks_left = 1; //used for multi-bar attacks

//sound vars
bone_hit = sound_get("bone_hit");

//cpu detector
cpuId = undefined;

//survival mode stuff
survivalMode = false;
survivalModeInputs = array_create(8);
survivalModeInputCounter = 0;
survivalModeStr = "";
survivalTimer = 0;
survivalModeTest = false;
survivalModeInputsTest = [3,2,0,1,1,3,3,2,0,0];
survivalModeInputCounterTest = 0;

drawTextbox = false; //if true will draw textbox background

//sansSpeech = array_create(14, ["", "", ""]);

speechTime = 0; //number of frames elapsed into speech

textboxIndex = 0; //text box number
textboxTime = 0; //number of frames elapsed into textbox
textboxTextNum = 0; //text symbol index per textbox.

typeSpecialAttack = false;
typeSpecialAttackCounter = 0;

lineIndex = 0; //line number
lineTime = 0; //number of frames elapsed into line, resets after new line
lineTextNum = 0; //text symbol index per line.

textboxPauseTimer = 0; //pauses in textbox speech.

inBattleTimer = 0; //timer of how long battle has been going for.
displayStats = false;
dataIndex = 0;
endTimer = 0;

//end data text
endText[0,0] = "";
endText[0,1] = "";
endText[0,2] = "";
endText[0,3] = "";
endText[0,4] = "";
endText[0,5] = "";
endText[0,6] = "";
endText[0,7] = "";

endText[1,0] = "";
endText[1,1] = "";
endText[1,2] = "";
endText[1,3] = "";
endText[1,4] = "";
endText[1,5] = "";
endText[1,6] = "";
endText[1,7] = "";

endText[2,0] = "";
endText[2,1] = "";
endText[2,2] = "";
endText[2,3] = "";
endText[2,4] = "";
endText[2,5] = "";
endText[2,6] = "";
endText[2,7] = "";

endText[3,0] = "";
endText[3,1] = "";
endText[3,2] = "";
endText[3,3] = "";
endText[3,4] = "";
endText[3,5] = "";
endText[3,6] = "";
endText[3,7] = "";



currentText[0] = ""; //array of current characters to display
currentText[1] = "";
currentText[2] = "";
currentText[3] = 0; //sans face

sansSpeech[0,0] = "heya.";
sansSpeech[0,1] = "";
sansSpeech[0,2] = "";
sansSpeech[0,3] = 0; //4th slot for sans face emotions

sansSpeech[1,0] = "you've been busy,";
sansSpeech[1,1] = "huh?";
sansSpeech[1,2] = "";
sansSpeech[1,3] = 1;

sansSpeech[2,0] = "...";
sansSpeech[2,1] = "";
sansSpeech[2,2] = "";
sansSpeech[2,3] = 1;

sansSpeech[3,0] = "so, i've got a";
sansSpeech[3,1] = "question for ya.";
sansSpeech[3,2] = "";
sansSpeech[3,3] = 0;

sansSpeech[4,0] = "do you think even";
sansSpeech[4,1] = "the worst person can";
sansSpeech[4,2] = "change...?";
sansSpeech[4,3] = 4;

sansSpeech[5,0] = "that everybody can be";
sansSpeech[5,1] = "a good person, if";
sansSpeech[5,2] = "they just try?";
sansSpeech[5,3] = 4;

sansSpeech[6,0] = ""; //pause frame
sansSpeech[6,1] = "";
sansSpeech[6,2] = "";
sansSpeech[6,3] = 0;

sansSpeech[7,0] = "heh heh heh heh...";
sansSpeech[7,1] = "";
sansSpeech[7,2] = "";
sansSpeech[7,3] = 4;

sansSpeech[8,0] = "all right.";
sansSpeech[8,1] = "";
sansSpeech[8,2] = "";
sansSpeech[8,3] = 1;

sansSpeech[9,0] = "well, here's a better";
sansSpeech[9,1] = "question.";
sansSpeech[9,2] = "";
sansSpeech[9,3] = 4;

sansSpeech[10,0] = "do you wanna have";
sansSpeech[10,1] = "a bad time?";
sansSpeech[10,2] = "";
sansSpeech[10,3] = 5;

sansSpeech[11,0] = "'cause if you take";
sansSpeech[11,1] = "another step";
sansSpeech[11,2] = "forward...";
sansSpeech[11,3] = 4;

sansSpeech[12,0] = "you are REALLY not";
sansSpeech[12,1] = "going to like what";
sansSpeech[12,2] = "happens next.";
sansSpeech[12,3] = 5;

sansSpeech[13,0] = ""; //pause frame
sansSpeech[13,1] = "";
sansSpeech[13,2] = "";
sansSpeech[13,3] = 0;

sansSpeech[14,0] = "welp.";
sansSpeech[14,1] = "";
sansSpeech[14,2] = "";
sansSpeech[14,3] = 4;

sansSpeech[15,0] = "sorry, old lady.";
sansSpeech[15,1] = "";
sansSpeech[15,2] = "";
sansSpeech[15,3] = 4;

sansSpeech[16,0] = "this is why i never";
sansSpeech[16,1] = "make promises.";
sansSpeech[16,2] = "";
sansSpeech[16,3] = 4;

//skip mode
sansSpeechSkip[0,0] = "let's just get to";
sansSpeechSkip[0,1] = "the point.";
sansSpeechSkip[0,2] = "";
sansSpeechSkip[0,3] = 0;

//print_debug(string(sansSpeech))


sansSpeak = false; //true when sans speaks during battle
sansSpeakScript = undefined; //stuff sans should speak

scriptText[0] = ""; //array of current characters to display
scriptText[1] = "";
scriptText[2] = "";
scriptText[3] = "";
scriptText[4] = 0; //face
scriptText[5] = 0; //body
scriptText[6] = 0; //legs
scriptText[7] = 0; //extra vars 1
scriptText[8] = 0; //extra vars 2

//pre-battle speech
preBattleSpeech[0,0] = "it's a beautiful";
preBattleSpeech[0,1] = "day outside.     ";
preBattleSpeech[0,2] = "";
preBattleSpeech[0,3] = "";
preBattleSpeech[0,4] = 4;
preBattleSpeech[0,5] = 0;
preBattleSpeech[0,6] = 0;
preBattleSpeech[0,7] = 1; //slight delayed response
preBattleSpeech[0,8] = 60; //number of delay frames

preBattleSpeech[1,0] = "birds are singing.          ";
preBattleSpeech[1,1] = "flowers are blooming.     ";
preBattleSpeech[1,2] = "";
preBattleSpeech[1,3] = "";
preBattleSpeech[1,4] = 4;
preBattleSpeech[1,5] = 0;
preBattleSpeech[1,6] = 0;
preBattleSpeech[1,7] = 0;
preBattleSpeech[1,8] = 0;

preBattleSpeech[2,0] = "on days like these,          ";
preBattleSpeech[2,1] = "kids like you...     ";
preBattleSpeech[2,2] = "";
preBattleSpeech[2,3] = "";
preBattleSpeech[2,4] = 4;
preBattleSpeech[2,5] = 0;
preBattleSpeech[2,6] = 0;
preBattleSpeech[2,7] = 0;
preBattleSpeech[2,8] = 0;

preBattleSpeech[3,0] = "Should";
preBattleSpeech[3,1] = "be";
preBattleSpeech[3,2] = "burning";
preBattleSpeech[3,3] = "in hell.     ";
preBattleSpeech[3,4] = 5;
preBattleSpeech[3,5] = 0;
preBattleSpeech[3,6] = 0;
preBattleSpeech[3,7] = 2; //no voice, shaking font, font change, slower text, chk chk delay
preBattleSpeech[3,8] = 50; //chk chk delay time

preBattleSpeechSkip[0,0] = "ready?";
preBattleSpeechSkip[0,1] = "";
preBattleSpeechSkip[0,2] = "";
preBattleSpeechSkip[0,3] = "";
preBattleSpeechSkip[0,4] = 4;
preBattleSpeechSkip[0,5] = 0;
preBattleSpeechSkip[0,6] = 0;
preBattleSpeechSkip[0,7] = 1;
preBattleSpeechSkip[0,8] = 60;

firstAttackSpeech[0,0] = "huh.     ";
firstAttackSpeech[0,1] = "";
firstAttackSpeech[0,2] = "";
firstAttackSpeech[0,3] = "";
firstAttackSpeech[0,4] = 1;
firstAttackSpeech[0,5] = 0;
firstAttackSpeech[0,6] = 0;
firstAttackSpeech[0,7] = 1;
firstAttackSpeech[0,8] = 40;

firstAttackSpeech[1,0] = "always wondered why";
firstAttackSpeech[1,1] = "people never use";
firstAttackSpeech[1,2] = "their strongest";
firstAttackSpeech[1,3] = "attack first.     ";
firstAttackSpeech[1,4] = 1;
firstAttackSpeech[1,5] = 1;
firstAttackSpeech[1,6] = 0;
firstAttackSpeech[1,7] = 0;
firstAttackSpeech[1,8] = 0;

firstAttackSpeechSkip[0,0] = "here we go.";
firstAttackSpeechSkip[0,1] = "";
firstAttackSpeechSkip[0,2] = "";
firstAttackSpeechSkip[0,3] = "";
firstAttackSpeechSkip[0,4] = 0;
firstAttackSpeechSkip[0,5] = 0;
firstAttackSpeechSkip[0,6] = 0;
firstAttackSpeechSkip[0,7] = 1;
firstAttackSpeechSkip[0,8] = 40;

//battle textbox stuff
battleTextActive = false;
battleTextIndex = 0;

battleTextScript[0] = "";
battleTextScript[1] = "";
battleTextScript[2] = "";
battleTextScript[3] = 1; //number of asterisks

/*
battleText[X,0] = "";
battleText[X,1] = "";
battleText[X,2] = "";
battleText[X,3] = 1;
*/

battleText[0,0] = "You feel like you're going to";
battleText[0,1] = "have a bad time.";
battleText[0,2] = "";
battleText[0,3] = 1;

battleText[1,0] = "Just keep attacking.";
battleText[1,1] = "";
battleText[1,2] = "";
battleText[1,3] = 1;

battleText[2,0] = "Sans's movements grow a";
battleText[2,1] = "little wearier.";
battleText[2,2] = "";
battleText[2,3] = 1;

battleText[3,0] = "Sans's movements seem to be";
battleText[3,1] = "slower.";
battleText[3,2] = "";
battleText[3,3] = 1;

battleText[4,0] = "You feel your sins crawling";
battleText[4,1] = "on your back.";
battleText[4,2] = "";
battleText[4,3] = 1;

battleText[5,0] = "You feel your sins weighing";
battleText[5,1] = "on your neck.";
battleText[5,2] = "";
battleText[5,3] = 1;

battleText[6,0] = "KARMA coursing through your";
battleText[6,1] = "veins.";
battleText[6,2] = "";
battleText[6,3] = 1;

battleText[7,0] = "Doomed to death of KARMA!";
battleText[7,1] = "";
battleText[7,2] = "";
battleText[7,3] = 1;

battleText[8,0] = "Sans is sparing you.";
battleText[8,1] = "";
battleText[8,2] = "";
battleText[8,3] = 1;

battleText[9,0] = "The REAL battle finally begins.";
battleText[9,1] = "";
battleText[9,2] = "";
battleText[9,3] = 1;

battleText[10,0] = "Reading this doesn't seem like";
battleText[10,1] = "the best use of your time.";
battleText[10,2] = "";
battleText[10,3] = 1;

battleText[11,0] = "Felt like a turning point.";
battleText[11,1] = "";
battleText[11,2] = "";
battleText[11,3] = 1;

battleText[12,0] = "Sans is starting to look";
battleText[12,1] = "really tired.";
battleText[12,2] = "";
battleText[12,3] = 1;

battleText[13,0] = "Sans is preparing something.";
battleText[13,1] = "";
battleText[13,2] = "";
battleText[13,3] = 1;

battleText[14,0] = "Sans is getting ready to use";
battleText[14,1] = "his special attack.";
battleText[14,2] = "";
battleText[14,3] = 1;

//check text
battleText[69,0] = "SANS 1 ATK 1 DEF     ";
battleText[69,1] = "The easiest enemy.     ";
battleText[69,2] = "Can only deal 1 damage.     ";
battleText[69,3] = 3;

battleText[70,0] = "SANS 1 ATK 1 DEF     ";
battleText[70,1] = "Can't keep dodging forever.     ";
battleText[70,2] = "Keep attacking.     ";
battleText[70,3] = 3;

//item text
battleText[20,0] = "You ate the Legendary Hero.     ";
battleText[20,1] = "You recovered 40 HP!     ";
battleText[20,2] = "";
battleText[20,3] = 2;
battleText[20,4] = 40;

battleText[21,0] = "You ate the Butterscotch Pie.     ";
battleText[21,1] = "Your HP was maxed out!     ";
battleText[21,2] = "";
battleText[21,3] = 2;
battleText[21,4] = 1000;

battleText[22,0] = "You ate the Snowman Piece.     ";
battleText[22,1] = "You recovered 45 HP!     ";
battleText[22,2] = "";
battleText[22,3] = 2;
battleText[22,4] = 45;

battleText[23,0] = "You ate the Face Steak.     ";
battleText[23,1] = "You recovered 60 HP!     ";
battleText[23,2] = "";
battleText[23,3] = 2;
battleText[23,4] = 60;

battleText[24,0] = "They're better dry.     ";
battleText[24,1] = "You recovered 90 HP!     ";
battleText[24,2] = "";
battleText[24,3] = 2;
battleText[24,4] = 90;

//battle speech stuff

//template
/*
battleSpeechX[0,0] = "";
battleSpeechX[0,1] = "";
battleSpeechX[0,2] = "";
battleSpeechX[0,3] = "";
battleSpeechX[0,4] = 0;
battleSpeechX[0,5] = 0;
battleSpeechX[0,6] = 0;
battleSpeechX[0,7] = 0;
battleSpeechX[0,8] = 0;
*/

battleSpeech0[0,0] = "what?     ";
battleSpeech0[0,1] = "you think i'm just";
battleSpeech0[0,2] = "gonna stand there";
battleSpeech0[0,3] = "and take it?";
battleSpeech0[0,4] = 3;
battleSpeech0[0,5] = 1;
battleSpeech0[0,6] = 0;
battleSpeech0[0,7] = 0;
battleSpeech0[0,8] = 0;


battleSpeech1[0,0] = "our reports showed";
battleSpeech1[0,1] = "a massive anomaly";
battleSpeech1[0,2] = "in the timespace";
battleSpeech1[0,3] = "continuum.";
battleSpeech1[0,4] = 0;
battleSpeech1[0,5] = 0;
battleSpeech1[0,6] = 0;
battleSpeech1[0,7] = 0;
battleSpeech1[0,8] = 0;

battleSpeech1[1,0] = "timelines jumping";
battleSpeech1[1,1] = "left and right,";
battleSpeech1[1,2] = "stopping and";
battleSpeech1[1,3] = "starting...";
battleSpeech1[1,4] = 0;
battleSpeech1[1,5] = 0;
battleSpeech1[1,6] = 0;
battleSpeech1[1,7] = 0;
battleSpeech1[1,8] = 0;


battleSpeech2[0,0] = "until suddenly,     ";
battleSpeech2[0,1] = "everything ends.";
battleSpeech2[0,2] = "";
battleSpeech2[0,3] = "";
battleSpeech2[0,4] = 4;
battleSpeech2[0,5] = 0;
battleSpeech2[0,6] = 0;
battleSpeech2[0,7] = 0;
battleSpeech2[0,8] = 0;


battleSpeech3[0,0] = "heh heh heh...";
battleSpeech3[0,1] = "";
battleSpeech3[0,2] = "";
battleSpeech3[0,3] = "";
battleSpeech3[0,4] = 4;
battleSpeech3[0,5] = 0;
battleSpeech3[0,6] = 0;
battleSpeech3[0,7] = 0;
battleSpeech3[0,8] = 0;

battleSpeech3[1,0] = "that's your fault,     ";
battleSpeech3[1,1] = "isn't it?";
battleSpeech3[1,2] = "";
battleSpeech3[1,3] = "";
battleSpeech3[1,4] = 5;
battleSpeech3[1,5] = 0;
battleSpeech3[1,6] = 0;
battleSpeech3[1,7] = 0;
battleSpeech3[1,8] = 0;


battleSpeech4[0,0] = "you can't understand";
battleSpeech4[0,1] = "how this feels.";
battleSpeech4[0,2] = "";
battleSpeech4[0,3] = "";
battleSpeech4[0,4] = 1;
battleSpeech4[0,5] = 0;
battleSpeech4[0,6] = 0;
battleSpeech4[0,7] = 0;
battleSpeech4[0,8] = 0;


battleSpeech5[0,0] = "knowing that one";
battleSpeech5[0,1] = "day, without any";
battleSpeech5[0,2] = "warning...";
battleSpeech5[0,3] = "";
battleSpeech5[0,4] = 4;
battleSpeech5[0,5] = 0;
battleSpeech5[0,6] = 0;
battleSpeech5[0,7] = 0;
battleSpeech5[0,8] = 0;

battleSpeech5[1,0] = "it's all going to";
battleSpeech5[1,1] = "be reset.";
battleSpeech5[1,2] = "";
battleSpeech5[1,3] = "";
battleSpeech5[1,4] = 9;
battleSpeech5[1,5] = 0;
battleSpeech5[1,6] = 0;
battleSpeech5[1,7] = 0;
battleSpeech5[1,8] = 0;


battleSpeech6[0,0] = "look.     ";
battleSpeech6[0,1] = "i gave up trying";
battleSpeech6[0,2] = "to go back a long";
battleSpeech6[0,3] = "time ago.";
battleSpeech6[0,4] = 9;
battleSpeech6[0,5] = 1;
battleSpeech6[0,6] = 0;
battleSpeech6[0,7] = 0;
battleSpeech6[0,8] = 0;


battleSpeech7[0,0] = "and getting to the";
battleSpeech7[0,1] = "surface doesn't";
battleSpeech7[0,2] = "really appeal";
battleSpeech7[0,3] = "anymore. either.";
battleSpeech7[0,4] = 4;
battleSpeech7[0,5] = 1;
battleSpeech7[0,6] = 0;
battleSpeech7[0,7] = 0;
battleSpeech7[0,8] = 0;


battleSpeech8[0,0] = "cause even if we";
battleSpeech8[0,1] = "do...";
battleSpeech8[0,2] = "";
battleSpeech8[0,3] = "";
battleSpeech8[0,4] = 4;
battleSpeech8[0,5] = 1;
battleSpeech8[0,6] = 0;
battleSpeech8[0,7] = 0;
battleSpeech8[0,8] = 0;

battleSpeech8[1,0] = "we'll just end up";
battleSpeech8[1,1] = "right back here.     ";
battleSpeech8[1,2] = "without any memory";
battleSpeech8[1,3] = "of it. right?";
battleSpeech8[1,4] = 5;
battleSpeech8[1,5] = 1;
battleSpeech8[1,6] = 0;
battleSpeech8[1,7] = 0;
battleSpeech8[1,8] = 0;


battleSpeech9[0,0] = "to be blunt...";
battleSpeech9[0,1] = "";
battleSpeech9[0,2] = "";
battleSpeech9[0,3] = "";
battleSpeech9[0,4] = 1;
battleSpeech9[0,5] = 1;
battleSpeech9[0,6] = 0;
battleSpeech9[0,7] = 0;
battleSpeech9[0,8] = 0;

battleSpeech9[1,0] = "it makes it kind";
battleSpeech9[1,1] = "of hard to give";
battleSpeech9[1,2] = "it my all.";
battleSpeech9[1,3] = "";
battleSpeech9[1,4] = 4;
battleSpeech9[1,5] = 1;
battleSpeech9[1,6] = 0;
battleSpeech9[1,7] = 0;
battleSpeech9[1,8] = 0;


battleSpeech10[0,0] = "... or is it just";
battleSpeech10[0,1] = "a poor excuse for";
battleSpeech10[0,2] = "being lazy...?";
battleSpeech10[0,3] = "";
battleSpeech10[0,4] = 1;
battleSpeech10[0,5] = 1;
battleSpeech10[0,6] = 0;
battleSpeech10[0,7] = 0;
battleSpeech10[0,8] = 0;

battleSpeech10[1,0] = "hell if i know.";
battleSpeech10[1,1] = "";
battleSpeech10[1,2] = "";
battleSpeech10[1,3] = "";
battleSpeech10[1,4] = 3;
battleSpeech10[1,5] = 1;
battleSpeech10[1,6] = 0;
battleSpeech10[1,7] = 0;
battleSpeech10[1,8] = 0;


battleSpeech11[0,0] = "all i know is...     ";
battleSpeech11[0,1] = "seeing what comes";
battleSpeech11[0,2] = "next...";
battleSpeech11[0,3] = "";
battleSpeech11[0,4] = 4;
battleSpeech11[0,5] = 1;
battleSpeech11[0,6] = 0;
battleSpeech11[0,7] = 0;
battleSpeech11[0,8] = 0;

battleSpeech11[1,0] = "i can't afford not";
battleSpeech11[1,1] = "to care anymore.";
battleSpeech11[1,2] = "";
battleSpeech11[1,3] = "";
battleSpeech11[1,4] = 9;
battleSpeech11[1,5] = 1;
battleSpeech11[1,6] = 0;
battleSpeech11[1,7] = 0;
battleSpeech11[1,8] = 0;

//spare speech
/*
spareSpeechX[0,0] = "";
spareSpeechX[0,1] = "";
spareSpeechX[0,2] = "";
spareSpeechX[0,3] = "";
spareSpeechX[0,4] = 0;
spareSpeechX[0,5] = 0;
spareSpeechX[0,6] = 0;
spareSpeechX[0,7] = 0;
spareSpeechX[0,8] = 0;
*/

battleSpeech12[0,0] = "ugh...     ";
battleSpeech12[0,1] = "that being said...";
battleSpeech12[0,2] = "";
battleSpeech12[0,3] = "";
battleSpeech12[0,4] = 9;
battleSpeech12[0,5] = 0;
battleSpeech12[0,6] = 0;
battleSpeech12[0,7] = 0;
battleSpeech12[0,8] = 0;

battleSpeech12[1,0] = "you. uh. really";
battleSpeech12[1,1] = "like swinging that";
battleSpeech12[1,2] = "thing around,     ";
battleSpeech12[1,3] = "huh?";
battleSpeech12[1,4] = 1;
battleSpeech12[1,5] = 0;
battleSpeech12[1,6] = 0;
battleSpeech12[1,7] = 0;
battleSpeech12[1,8] = 0;

battleSpeech12[2,0] = "...";
battleSpeech12[2,1] = "";
battleSpeech12[2,2] = "";
battleSpeech12[2,3] = "";
battleSpeech12[2,4] = 0;
battleSpeech12[2,5] = 0;
battleSpeech12[2,6] = 0;
battleSpeech12[2,7] = 69; //spare music
battleSpeech12[2,8] = 0;

battleSpeech12[3,0] = "listen.";
battleSpeech12[3,1] = "";
battleSpeech12[3,2] = "";
battleSpeech12[3,3] = "";
battleSpeech12[3,4] = 4;
battleSpeech12[3,5] = 0;
battleSpeech12[3,6] = 0;
battleSpeech12[3,7] = 0;
battleSpeech12[3,8] = 0;

battleSpeech12[4,0] = "i know you didn't";
battleSpeech12[4,1] = "answer me before,     ";
battleSpeech12[4,2] = "but...";
battleSpeech12[4,3] = "";
battleSpeech12[4,4] = 4;
battleSpeech12[4,5] = 0;
battleSpeech12[4,6] = 0;
battleSpeech12[4,7] = 0;
battleSpeech12[4,8] = 0;

battleSpeech12[5,0] = "somewhere in";
battleSpeech12[5,1] = "there.     ";
battleSpeech12[5,2] = "i can feel it.";
battleSpeech12[5,3] = "";
battleSpeech12[5,4] = 4;
battleSpeech12[5,5] = 0;
battleSpeech12[5,6] = 0;
battleSpeech12[5,7] = 0;
battleSpeech12[5,8] = 0;

battleSpeech12[6,0] = "there's a glimmer";
battleSpeech12[6,1] = "of a good person";
battleSpeech12[6,2] = "inside of you.";
battleSpeech12[6,3] = "";
battleSpeech12[6,4] = 0;
battleSpeech12[6,5] = 0;
battleSpeech12[6,6] = 0;
battleSpeech12[6,7] = 0;
battleSpeech12[6,8] = 0;

battleSpeech12[7,0] = "the memory of";
battleSpeech12[7,1] = "someone who once";
battleSpeech12[7,2] = "wanted to do the";
battleSpeech12[7,3] = "right thing.";
battleSpeech12[7,4] = 4;
battleSpeech12[7,5] = 0;
battleSpeech12[7,6] = 0;
battleSpeech12[7,7] = 0;
battleSpeech12[7,8] = 0;

battleSpeech12[8,0] = "someone who, in";
battleSpeech12[8,1] = "another time,     ";
battleSpeech12[8,2] = "might have even";
battleSpeech12[8,3] = "been...";
battleSpeech12[8,4] = 1;
battleSpeech12[8,5] = 0;
battleSpeech12[8,6] = 0;
battleSpeech12[8,7] = 0;
battleSpeech12[8,8] = 0;

battleSpeech12[9,0] = "a friend?";
battleSpeech12[9,1] = "";
battleSpeech12[9,2] = "";
battleSpeech12[9,3] = "";
battleSpeech12[9,4] = 4;
battleSpeech12[9,5] = 0;
battleSpeech12[9,6] = 0;
battleSpeech12[9,7] = 0;
battleSpeech12[9,8] = 0;

battleSpeech12[10,0] = "c'mon, buddy.";
battleSpeech12[10,1] = "";
battleSpeech12[10,2] = "";
battleSpeech12[10,3] = "";
battleSpeech12[10,4] = 3;
battleSpeech12[10,5] = 0;
battleSpeech12[10,6] = 0;
battleSpeech12[10,7] = 0;
battleSpeech12[10,8] = 0;

battleSpeech12[11,0] = "do you remember";
battleSpeech12[11,1] = "me?";
battleSpeech12[11,2] = "";
battleSpeech12[11,3] = "";
battleSpeech12[11,4] = 0;
battleSpeech12[11,5] = 0;
battleSpeech12[11,6] = 0;
battleSpeech12[11,7] = 0;
battleSpeech12[11,8] = 0;

battleSpeech12[12,0] = "please, if you're";
battleSpeech12[12,1] = "listening...";
battleSpeech12[12,2] = "";
battleSpeech12[12,3] = "";
battleSpeech12[12,4] = 4;
battleSpeech12[12,5] = 0;
battleSpeech12[12,6] = 0;
battleSpeech12[12,7] = 0;
battleSpeech12[12,8] = 0;

battleSpeech12[13,0] = "let's forget all";
battleSpeech12[13,1] = "this, ok?";
battleSpeech12[13,2] = "";
battleSpeech12[13,3] = "";
battleSpeech12[13,4] = 9;
battleSpeech12[13,5] = 0;
battleSpeech12[13,6] = 0;
battleSpeech12[13,7] = 0;
battleSpeech12[13,8] = 0;

battleSpeech12[14,0] = "just lay down";
battleSpeech12[14,1] = "your weapon, and...";
battleSpeech12[14,2] = "";
battleSpeech12[14,3] = "";
battleSpeech12[14,4] = 3;
battleSpeech12[14,5] = 0;
battleSpeech12[14,6] = 0;
battleSpeech12[14,7] = 0;
battleSpeech12[14,8] = 0;

battleSpeech12[15,0] = "well, my job";
battleSpeech12[15,1] = "will be a lot";
battleSpeech12[15,2] = "easier.";
battleSpeech12[15,3] = "";
battleSpeech12[15,4] = 4;
battleSpeech12[15,5] = 0;
battleSpeech12[15,6] = 0;
battleSpeech12[15,7] = 0;
battleSpeech12[15,8] = 0;


battleSpeech12Skip[0,0] = "ugh...     ";
battleSpeech12Skip[0,1] = "that being said...";
battleSpeech12Skip[0,2] = "";
battleSpeech12Skip[0,3] = "";
battleSpeech12Skip[0,4] = 9;
battleSpeech12Skip[0,5] = 0;
battleSpeech12Skip[0,6] = 0;
battleSpeech12Skip[0,7] = 0;
battleSpeech12Skip[0,8] = 0;

battleSpeech12Skip[1,0] = "you. uh. really";
battleSpeech12Skip[1,1] = "like swinging that";
battleSpeech12Skip[1,2] = "thing around,     ";
battleSpeech12Skip[1,3] = "huh?";
battleSpeech12Skip[1,4] = 1;
battleSpeech12Skip[1,5] = 0;
battleSpeech12Skip[1,6] = 0;
battleSpeech12Skip[1,7] = 0;
battleSpeech12Skip[1,8] = 0;

battleSpeech12Skip[2,0] = "...";
battleSpeech12Skip[2,1] = "";
battleSpeech12Skip[2,2] = "";
battleSpeech12Skip[2,3] = "";
battleSpeech12Skip[2,4] = 0;
battleSpeech12Skip[2,5] = 0;
battleSpeech12Skip[2,6] = 0;
battleSpeech12Skip[2,7] = 69; //spare music
battleSpeech12Skip[2,8] = 0;

battleSpeech12Skip[3,0] = "listen.";
battleSpeech12Skip[3,1] = "";
battleSpeech12Skip[3,2] = "";
battleSpeech12Skip[3,3] = "";
battleSpeech12Skip[3,4] = 4;
battleSpeech12Skip[3,5] = 0;
battleSpeech12Skip[3,6] = 0;
battleSpeech12Skip[3,7] = 0;
battleSpeech12Skip[3,8] = 0;

battleSpeech12Skip[4,0] = "friendship...";
battleSpeech12Skip[4,1] = "";
battleSpeech12Skip[4,2] = "";
battleSpeech12Skip[4,3] = "";
battleSpeech12Skip[4,4] = 4;
battleSpeech12Skip[4,5] = 0;
battleSpeech12Skip[4,6] = 0;
battleSpeech12Skip[4,7] = 0;
battleSpeech12Skip[4,8] = 0;

battleSpeech12Skip[5,0] = "it's really great,     ";
battleSpeech12Skip[5,1] = "right?";
battleSpeech12Skip[5,2] = "";
battleSpeech12Skip[5,3] = "";
battleSpeech12Skip[5,4] = 3;
battleSpeech12Skip[5,5] = 0;
battleSpeech12Skip[5,6] = 0;
battleSpeech12Skip[5,7] = 0;
battleSpeech12Skip[5,8] = 0;

battleSpeech12Skip[6,0] = "let's quit fighting.";
battleSpeech12Skip[6,1] = "";
battleSpeech12Skip[6,2] = "";
battleSpeech12Skip[6,3] = "";
battleSpeech12Skip[6,4] = 3;
battleSpeech12Skip[6,5] = 0;
battleSpeech12Skip[6,6] = 0;
battleSpeech12Skip[6,7] = 0;
battleSpeech12Skip[6,8] = 0;

//welp. ya fucked.
battleSpeech13[0,0] = "welp, it was";
battleSpeech13[0,1] = "worth a shot.";
battleSpeech13[0,2] = "";
battleSpeech13[0,3] = "";
battleSpeech13[0,4] = 3;
battleSpeech13[0,5] = 1;
battleSpeech13[0,6] = 0;
battleSpeech13[0,7] = 71; //stop music, silently play megalovania
battleSpeech13[0,8] = 0;

battleSpeech13[1,0] = "guess you like";
battleSpeech13[1,1] = "doing things the";
battleSpeech13[1,2] = "hard way, huh?";
battleSpeech13[1,3] = "";
battleSpeech13[1,4] = 5;
battleSpeech13[1,5] = 1;
battleSpeech13[1,6] = 0;
battleSpeech13[1,7] = 0;
battleSpeech13[1,8] = 0;

battleSpeechArr[0] = battleSpeech0;
battleSpeechArr[1] = battleSpeech1;
battleSpeechArr[2] = battleSpeech2;
battleSpeechArr[3] = battleSpeech3;
battleSpeechArr[4] = battleSpeech4;
battleSpeechArr[5] = battleSpeech5;
battleSpeechArr[6] = battleSpeech6;
battleSpeechArr[7] = battleSpeech7;
battleSpeechArr[8] = battleSpeech8;
battleSpeechArr[9] = battleSpeech9;
battleSpeechArr[10] = battleSpeech10;
battleSpeechArr[11] = battleSpeech11;
battleSpeechArr[12] = battleSpeech12;
battleSpeechArr[13] = battleSpeech13;

//phase 2
/*
battleSpeechX[0,0] = "";
battleSpeechX[0,1] = "";
battleSpeechX[0,2] = "";
battleSpeechX[0,3] = "";
battleSpeechX[0,4] = 0;
battleSpeechX[0,5] = 0;
battleSpeechX[0,6] = 0;
battleSpeechX[0,7] = 0;
battleSpeechX[0,8] = 0;
*/

battleSpeech14[0,0] = "sounds strange, but";
battleSpeech14[0,1] = "before all this i";
battleSpeech14[0,2] = "was secretly hoping";
battleSpeech14[0,3] = "we could be friends.";
battleSpeech14[0,4] = 4;
battleSpeech14[0,5] = 0;
battleSpeech14[0,6] = 0;
battleSpeech14[0,7] = 0;
battleSpeech14[0,8] = 0;

battleSpeech14[1,0] = "i always thought the";
battleSpeech14[1,1] = "anomaly was doing";
battleSpeech14[1,2] = "this cause they";
battleSpeech14[1,3] = "were unhappy.";
battleSpeech14[1,4] = 1;
battleSpeech14[1,5] = 0;
battleSpeech14[1,6] = 0;
battleSpeech14[1,7] = 0;
battleSpeech14[1,8] = 0;

battleSpeech14[2,0] = "and when they got";
battleSpeech14[2,1] = "what they wanted,     ";
battleSpeech14[2,2] = "they would stop";
battleSpeech14[2,3] = "all this.";
battleSpeech14[2,4] = 1;
battleSpeech14[2,5] = 0;
battleSpeech14[2,6] = 0;
battleSpeech14[2,7] = 0;
battleSpeech14[2,8] = 0;


battleSpeech15[0,0] = "and maybe all they";
battleSpeech15[0,1] = "needed was...     ";
battleSpeech15[0,2] = "i dunno.";
battleSpeech15[0,3] = "";
battleSpeech15[0,4] = 3;
battleSpeech15[0,5] = 0;
battleSpeech15[0,6] = 0;
battleSpeech15[0,7] = 0;
battleSpeech15[0,8] = 0;

battleSpeech15[1,0] = "some good food,     ";
battleSpeech15[1,1] = "some bad laughs,     ";
battleSpeech15[1,2] = "some nice friends.";
battleSpeech15[1,3] = "";
battleSpeech15[1,4] = 3;
battleSpeech15[1,5] = 1;
battleSpeech15[1,6] = 0;
battleSpeech15[1,7] = 0;
battleSpeech15[1,8] = 0;


battleSpeech16[0,0] = "but that's";
battleSpeech16[0,1] = "ridiculous,     ";
battleSpeech16[0,2] = "right?";
battleSpeech16[0,3] = "";
battleSpeech16[0,4] = 4;
battleSpeech16[0,5] = 0;
battleSpeech16[0,6] = 0;
battleSpeech16[0,7] = 0;
battleSpeech16[0,8] = 0;

battleSpeech16[1,0] = "yeah, you're the";
battleSpeech16[1,1] = "type of person";
battleSpeech16[1,2] = "who won't EVER";
battleSpeech16[1,3] = "be happy.";
battleSpeech16[1,4] = 5;
battleSpeech16[1,5] = 0;
battleSpeech16[1,6] = 0;
battleSpeech16[1,7] = 0;
battleSpeech16[1,8] = 0;


battleSpeech17[0,0] = "you'll keep";
battleSpeech17[0,1] = "consuming timelines";
battleSpeech17[0,2] = "over and over,     ";
battleSpeech17[0,3] = "until...";
battleSpeech17[0,4] = 5;
battleSpeech17[0,5] = 0;
battleSpeech17[0,6] = 0;
battleSpeech17[0,7] = 0;
battleSpeech17[0,8] = 0;

battleSpeech17[1,0] = "well.";
battleSpeech17[1,1] = "";
battleSpeech17[1,2] = "";
battleSpeech17[1,3] = "";
battleSpeech17[1,4] = 4;
battleSpeech17[1,5] = 0;
battleSpeech17[1,6] = 0;
battleSpeech17[1,7] = 0;
battleSpeech17[1,8] = 0;

battleSpeech17[2,0] = "hey.";
battleSpeech17[2,1] = "";
battleSpeech17[2,2] = "";
battleSpeech17[2,3] = "";
battleSpeech17[2,4] = 4;
battleSpeech17[2,5] = 1;
battleSpeech17[2,6] = 0;
battleSpeech17[2,7] = 0;
battleSpeech17[2,8] = 0;

battleSpeech17[3,0] = "take it from me,     ";
battleSpeech17[3,1] = "kid.";
battleSpeech17[3,2] = "";
battleSpeech17[3,3] = "";
battleSpeech17[3,4] = 3;
battleSpeech17[3,5] = 1;
battleSpeech17[3,6] = 0;
battleSpeech17[3,7] = 0;
battleSpeech17[3,8] = 0;

battleSpeech17[4,0] = "someday...";
battleSpeech17[4,1] = "";
battleSpeech17[4,2] = "";
battleSpeech17[4,3] = "";
battleSpeech17[4,4] = 3;
battleSpeech17[4,5] = 1;
battleSpeech17[4,6] = 0;
battleSpeech17[4,7] = 0;
battleSpeech17[4,8] = 0;

battleSpeech17[5,0] = "you gotta learn";
battleSpeech17[5,1] = "when to QUIT.";
battleSpeech17[5,2] = "";
battleSpeech17[5,3] = "";
battleSpeech17[5,4] = 3;
battleSpeech17[5,5] = 1;
battleSpeech17[5,6] = 0;
battleSpeech17[5,7] = 0;
battleSpeech17[5,8] = 0;


battleSpeech18[0,0] = "and that day's";
battleSpeech18[0,1] = "TODAY.";
battleSpeech18[0,2] = "";
battleSpeech18[0,3] = "";
battleSpeech18[0,4] = 3;
battleSpeech18[0,5] = 0;
battleSpeech18[0,6] = 0;
battleSpeech18[0,7] = 0;
battleSpeech18[0,8] = 0;


battleSpeech19[0,0] = "cause...     ";
battleSpeech19[0,1] = "y'see..";
battleSpeech19[0,2] = "";
battleSpeech19[0,3] = "";
battleSpeech19[0,4] = 4;
battleSpeech19[0,5] = 0;
battleSpeech19[0,6] = 0;
battleSpeech19[0,7] = 0;
battleSpeech19[0,8] = 0;

battleSpeech19[1,0] = "all this fighting";
battleSpeech19[1,1] = "is really tiring";
battleSpeech19[1,2] = "me out.";
battleSpeech19[1,3] = "";
battleSpeech19[1,4] = 1;
battleSpeech19[1,5] = 0;
battleSpeech19[1,6] = 0;
battleSpeech19[1,7] = 0;
battleSpeech19[1,8] = 0;

battleSpeech20[0,0] = "and if you keep";
battleSpeech20[0,1] = "pushing me...";
battleSpeech20[0,2] = "";
battleSpeech20[0,3] = "";
battleSpeech20[0,4] = 4;
battleSpeech20[0,5] = 0;
battleSpeech20[0,6] = 0;
battleSpeech20[0,7] = 0;
battleSpeech20[0,8] = 0;

battleSpeech20[1,0] = "then i'll be";
battleSpeech20[1,1] = "forced to use my";
battleSpeech20[1,2] = "special attack.";
battleSpeech20[1,3] = "";
battleSpeech20[1,4] = 3;
battleSpeech20[1,5] = 0;
battleSpeech20[1,6] = 0;
battleSpeech20[1,7] = 9; //red text
battleSpeech20[1,8] = 1; //unique var

battleSpeech21[0,0] = "yeah, my special";
battleSpeech21[0,1] = "attack.     ";
battleSpeech21[0,2] = "sound familiar?";
battleSpeech21[0,3] = "";
battleSpeech21[0,4] = 3;
battleSpeech21[0,5] = 0;
battleSpeech21[0,6] = 0;
battleSpeech21[0,7] = 9;
battleSpeech21[0,8] = 2;

battleSpeech21[1,0] = "well, get ready.     ";
battleSpeech21[1,1] = "cause after the";
battleSpeech21[1,2] = "next move, i'm";
battleSpeech21[1,3] = "going to use it.";
battleSpeech21[1,4] = 1;
battleSpeech21[1,5] = 0;
battleSpeech21[1,6] = 0;
battleSpeech21[1,7] = 9;
battleSpeech21[1,8] = 3;

battleSpeech21[2,0] = "so, if you don't";
battleSpeech21[2,1] = "wanna see it, now";
battleSpeech21[2,2] = "would be a good";
battleSpeech21[2,3] = "time to die.";
battleSpeech21[2,4] = 3;
battleSpeech21[2,5] = 0;
battleSpeech21[2,6] = 0;
battleSpeech21[2,7] = 0;
battleSpeech21[2,8] = 0;

battleSpeech22[0,0] = "well, here goes";
battleSpeech22[0,1] = "nothing...";
battleSpeech22[0,2] = "";
battleSpeech22[0,3] = "";
battleSpeech22[0,4] = 4;
battleSpeech22[0,5] = 0;
battleSpeech22[0,6] = 0;
battleSpeech22[0,7] = 0;
battleSpeech22[0,8] = 0;

battleSpeech22[1,0] = "are you ready?";
battleSpeech22[1,1] = "";
battleSpeech22[1,2] = "";
battleSpeech22[1,3] = "";
battleSpeech22[1,4] = 3;
battleSpeech22[1,5] = 0;
battleSpeech22[1,6] = 0;
battleSpeech22[1,7] = 0;
battleSpeech22[1,8] = 0;

battleSpeech22[2,0] = "survive THIS, and";
battleSpeech22[2,1] = "i'll show you my";
battleSpeech22[2,2] = "special attack!";
battleSpeech22[2,3] = "";
battleSpeech22[2,4] = 5;
battleSpeech22[2,5] = 0;
battleSpeech22[2,6] = 0;
battleSpeech22[2,7] = 9;
battleSpeech22[2,8] = 4;

battleSpeechArr[14] = battleSpeech14;
battleSpeechArr[15] = battleSpeech15;
battleSpeechArr[16] = battleSpeech16;
battleSpeechArr[17] = battleSpeech17;
battleSpeechArr[18] = battleSpeech18;
battleSpeechArr[19] = battleSpeech19;
battleSpeechArr[20] = battleSpeech20;
battleSpeechArr[21] = battleSpeech21;
battleSpeechArr[22] = battleSpeech22;

//final attack speech
/*
finalAttackSpeech[X,0] = "";
finalAttackSpeech[X,1] = "";
finalAttackSpeech[X,2] = "";
finalAttackSpeech[X,3] = "";
finalAttackSpeech[X,4] = 0;
finalAttackSpeech[X,5] = 0;
finalAttackSpeech[X,6] = 0;
finalAttackSpeech[X,7] = 0;
finalAttackSpeech[X,8] = 0;
*/

finalAttackSpeech[0,0] = "huff... puff...";
finalAttackSpeech[0,1] = "";
finalAttackSpeech[0,2] = "";
finalAttackSpeech[0,3] = "";
finalAttackSpeech[0,4] = 9;
finalAttackSpeech[0,5] = 0;
finalAttackSpeech[0,6] = 0;
finalAttackSpeech[0,7] = 1;
finalAttackSpeech[0,8] = 40;

finalAttackSpeech[1,0] = "all right.     ";
finalAttackSpeech[1,1] = "thats it.";
finalAttackSpeech[1,2] = "";
finalAttackSpeech[1,3] = "";
finalAttackSpeech[1,4] = 9;
finalAttackSpeech[1,5] = 0;
finalAttackSpeech[1,6] = 0;
finalAttackSpeech[1,7] = 0;
finalAttackSpeech[1,8] = 0;

finalAttackSpeech[2,0] = "it's time for my";
finalAttackSpeech[2,1] = "special attack.";
finalAttackSpeech[2,2] = "";
finalAttackSpeech[2,3] = "";
finalAttackSpeech[2,4] = 9;
finalAttackSpeech[2,5] = 1;
finalAttackSpeech[2,6] = 0;
finalAttackSpeech[2,7] = 9;
finalAttackSpeech[2,8] = 5;

finalAttackSpeech[3,0] = "are you ready?";
finalAttackSpeech[3,1] = "";
finalAttackSpeech[3,2] = "";
finalAttackSpeech[3,3] = "";
finalAttackSpeech[3,4] = 3;
finalAttackSpeech[3,5] = 1;
finalAttackSpeech[3,6] = 0;
finalAttackSpeech[3,7] = 0;
finalAttackSpeech[3,8] = 0;

finalAttackSpeech[4,0] = "here goes nothing.";
finalAttackSpeech[4,1] = "";
finalAttackSpeech[4,2] = "";
finalAttackSpeech[4,3] = "";
finalAttackSpeech[4,4] = 4;
finalAttackSpeech[4,5] = 1;
finalAttackSpeech[4,6] = 0;
finalAttackSpeech[4,7] = 0;
finalAttackSpeech[4,8] = 0;

finalAttackSpeech[5,0] = "                                         ";
finalAttackSpeech[5,1] = "                                         ";
finalAttackSpeech[5,2] = "                                         ";
finalAttackSpeech[5,3] = "                                         ";
finalAttackSpeech[5,4] = 9;
finalAttackSpeech[5,5] = 0;
finalAttackSpeech[5,6] = 0;
finalAttackSpeech[5,7] = 10;
finalAttackSpeech[5,8] = 0;

finalAttackSpeech[6,0] = "yep.";
finalAttackSpeech[6,1] = "";
finalAttackSpeech[6,2] = "";
finalAttackSpeech[6,3] = "";
finalAttackSpeech[6,4] = 1;
finalAttackSpeech[6,5] = 0;
finalAttackSpeech[6,6] = 0;
finalAttackSpeech[6,7] = 0;
finalAttackSpeech[6,8] = 0;

finalAttackSpeech[7,0] = "that's right.";
finalAttackSpeech[7,1] = "";
finalAttackSpeech[7,2] = "";
finalAttackSpeech[7,3] = "";
finalAttackSpeech[7,4] = 1;
finalAttackSpeech[7,5] = 0;
finalAttackSpeech[7,6] = 0;
finalAttackSpeech[7,7] = 0;
finalAttackSpeech[7,8] = 0;

finalAttackSpeech[8,0] = "it's literally";
finalAttackSpeech[8,1] = "nothing.";
finalAttackSpeech[8,2] = "";
finalAttackSpeech[8,3] = "";
finalAttackSpeech[8,4] = 3;
finalAttackSpeech[8,5] = 0;
finalAttackSpeech[8,6] = 0;
finalAttackSpeech[8,7] = 0;
finalAttackSpeech[8,8] = 0;

finalAttackSpeech[9,0] = "and it's not gonna";
finalAttackSpeech[9,1] = "be anything,     ";
finalAttackSpeech[9,2] = "either.";
finalAttackSpeech[9,3] = "";
finalAttackSpeech[9,4] = 3;
finalAttackSpeech[9,5] = 0;
finalAttackSpeech[9,6] = 0;
finalAttackSpeech[9,7] = 0;
finalAttackSpeech[9,8] = 0;

finalAttackSpeech[10,0] = "heh heh heh...     ";
finalAttackSpeech[10,1] = "ya get it?";
finalAttackSpeech[10,2] = "";
finalAttackSpeech[10,3] = "";
finalAttackSpeech[10,4] = 4;
finalAttackSpeech[10,5] = 0;
finalAttackSpeech[10,6] = 0;
finalAttackSpeech[10,7] = 0;
finalAttackSpeech[10,8] = 0;

finalAttackSpeech[11,0] = "i know i can't";
finalAttackSpeech[11,1] = "beat you.";
finalAttackSpeech[11,2] = "";
finalAttackSpeech[11,3] = "";
finalAttackSpeech[11,4] = 1;
finalAttackSpeech[11,5] = 0;
finalAttackSpeech[11,6] = 0;
finalAttackSpeech[11,7] = 0;
finalAttackSpeech[11,8] = 0;

finalAttackSpeech[12,0] = "one of your turns...";
finalAttackSpeech[12,1] = "";
finalAttackSpeech[12,2] = "";
finalAttackSpeech[12,3] = "";
finalAttackSpeech[12,4] = 4;
finalAttackSpeech[12,5] = 0;
finalAttackSpeech[12,6] = 0;
finalAttackSpeech[12,7] = 0;
finalAttackSpeech[12,8] = 0;

finalAttackSpeech[13,0] = "you're just gonna";
finalAttackSpeech[13,1] = "kill me.";
finalAttackSpeech[13,2] = "";
finalAttackSpeech[13,3] = "";
finalAttackSpeech[13,4] = 9;
finalAttackSpeech[13,5] = 0;
finalAttackSpeech[13,6] = 0;
finalAttackSpeech[13,7] = 0;
finalAttackSpeech[13,8] = 0;

finalAttackSpeech[14,0] = "so, uh.";
finalAttackSpeech[14,1] = "";
finalAttackSpeech[14,2] = "";
finalAttackSpeech[14,3] = "";
finalAttackSpeech[14,4] = 1;
finalAttackSpeech[14,5] = 0;
finalAttackSpeech[14,6] = 0;
finalAttackSpeech[14,7] = 0;
finalAttackSpeech[14,8] = 0;

finalAttackSpeech[15,0] = "i've decided...";
finalAttackSpeech[15,1] = "";
finalAttackSpeech[15,2] = "";
finalAttackSpeech[15,3] = "";
finalAttackSpeech[15,4] = 4;
finalAttackSpeech[15,5] = 0;
finalAttackSpeech[15,6] = 0;
finalAttackSpeech[15,7] = 0;
finalAttackSpeech[15,8] = 0;

finalAttackSpeech[16,0] = "it's not gonna BE";
finalAttackSpeech[16,1] = "your turn.     ";
finalAttackSpeech[16,2] = "ever.";
finalAttackSpeech[16,3] = "";
finalAttackSpeech[16,4] = 9;
finalAttackSpeech[16,5] = 0;
finalAttackSpeech[16,6] = 0;
finalAttackSpeech[16,7] = 0;
finalAttackSpeech[16,8] = 0;

finalAttackSpeech[17,0] = "i'm just gonna";
finalAttackSpeech[17,1] = "keep having MY";
finalAttackSpeech[17,2] = "turn until you";
finalAttackSpeech[17,3] = "give up.";
finalAttackSpeech[17,4] = 3;
finalAttackSpeech[17,5] = 0;
finalAttackSpeech[17,6] = 0;
finalAttackSpeech[17,7] = 0;
finalAttackSpeech[17,8] = 0;

finalAttackSpeech[18,0] = "even if it means";
finalAttackSpeech[18,1] = "we have to stand";
finalAttackSpeech[18,2] = "here until the";
finalAttackSpeech[18,3] = "end of time.";
finalAttackSpeech[18,4] = 5;
finalAttackSpeech[18,5] = 0;
finalAttackSpeech[18,6] = 0;
finalAttackSpeech[18,7] = 0;
finalAttackSpeech[18,8] = 0;

finalAttackSpeech[19,0] = "capiche?";
finalAttackSpeech[19,1] = "";
finalAttackSpeech[19,2] = "";
finalAttackSpeech[19,3] = "";
finalAttackSpeech[19,4] = 1;
finalAttackSpeech[19,5] = 0;
finalAttackSpeech[19,6] = 0;
finalAttackSpeech[19,7] = 0;
finalAttackSpeech[19,8] = 0;

finalAttackSpeech[20,0] = "                                         ";
finalAttackSpeech[20,1] = "                                         ";
finalAttackSpeech[20,2] = "                                         ";
finalAttackSpeech[20,3] = "                                         ";
finalAttackSpeech[20,4] = 9;
finalAttackSpeech[20,5] = 0;
finalAttackSpeech[20,6] = 0;
finalAttackSpeech[20,7] = 10;
finalAttackSpeech[20,8] = 0;

finalAttackSpeech[21,0] = "you'll get bored";
finalAttackSpeech[21,1] = "here.";
finalAttackSpeech[21,2] = "";
finalAttackSpeech[21,3] = "";
finalAttackSpeech[21,4] = 9;
finalAttackSpeech[21,5] = 0;
finalAttackSpeech[21,6] = 0;
finalAttackSpeech[21,7] = 0;
finalAttackSpeech[21,8] = 0;

finalAttackSpeech[22,0] = "if you haven't";
finalAttackSpeech[22,1] = "gotten bored";
finalAttackSpeech[22,2] = "already, i mean.";
finalAttackSpeech[22,3] = "";
finalAttackSpeech[22,4] = 1;
finalAttackSpeech[22,5] = 0;
finalAttackSpeech[22,6] = 0;
finalAttackSpeech[22,7] = 0;
finalAttackSpeech[22,8] = 0;

finalAttackSpeech[23,0] = "and then, you'll";
finalAttackSpeech[23,1] = "finally quit.";
finalAttackSpeech[23,2] = "";
finalAttackSpeech[23,3] = "";
finalAttackSpeech[23,4] = 5;
finalAttackSpeech[23,5] = 0;
finalAttackSpeech[23,6] = 0;
finalAttackSpeech[23,7] = 0;
finalAttackSpeech[23,8] = 0;

finalAttackSpeech[24,0] = "                                         ";
finalAttackSpeech[24,1] = "                                         ";
finalAttackSpeech[24,2] = "                                         ";
finalAttackSpeech[24,3] = "                                         ";
finalAttackSpeech[24,4] = 9;
finalAttackSpeech[24,5] = 0;
finalAttackSpeech[24,6] = 0;
finalAttackSpeech[24,7] = 10;
finalAttackSpeech[24,8] = 0;

finalAttackSpeech[25,0] = "i know your type.";
finalAttackSpeech[25,1] = "";
finalAttackSpeech[25,2] = "";
finalAttackSpeech[25,3] = "";
finalAttackSpeech[25,4] = 5;
finalAttackSpeech[25,5] = 0;
finalAttackSpeech[25,6] = 0;
finalAttackSpeech[25,7] = 0;
finalAttackSpeech[25,8] = 0;

finalAttackSpeech[26,0] = "you're, uh, very";
finalAttackSpeech[26,1] = "determined, aren't";
finalAttackSpeech[26,2] = "you?";
finalAttackSpeech[26,3] = "";
finalAttackSpeech[26,4] = 1;
finalAttackSpeech[26,5] = 0;
finalAttackSpeech[26,6] = 0;
finalAttackSpeech[26,7] = 0;
finalAttackSpeech[26,8] = 0;

finalAttackSpeech[27,0] = "you'll never give";
finalAttackSpeech[27,1] = "up, even if";
finalAttackSpeech[27,2] = "there's, uh...";
finalAttackSpeech[27,3] = "";
finalAttackSpeech[27,4] = 4;
finalAttackSpeech[27,5] = 0;
finalAttackSpeech[27,6] = 0;
finalAttackSpeech[27,7] = 0;
finalAttackSpeech[27,8] = 0;

finalAttackSpeech[28,0] = "absolutely NO";
finalAttackSpeech[28,1] = "benefit to";
finalAttackSpeech[28,2] = "persevering";
finalAttackSpeech[28,3] = "whatsoever.";
finalAttackSpeech[28,4] = 3;
finalAttackSpeech[28,5] = 0;
finalAttackSpeech[28,6] = 0;
finalAttackSpeech[28,7] = 0;
finalAttackSpeech[28,8] = 0;

finalAttackSpeech[29,0] = "if i can make";
finalAttackSpeech[29,1] = "that clear.";
finalAttackSpeech[29,2] = "";
finalAttackSpeech[29,3] = "";
finalAttackSpeech[29,4] = 1;
finalAttackSpeech[29,5] = 0;
finalAttackSpeech[29,6] = 0;
finalAttackSpeech[29,7] = 0;
finalAttackSpeech[29,8] = 0;

finalAttackSpeech[30,0] = "no matter what,     ";
finalAttackSpeech[30,1] = "you'll just keep";
finalAttackSpeech[30,2] = "going.";
finalAttackSpeech[30,3] = "";
finalAttackSpeech[30,4] = 4;
finalAttackSpeech[30,5] = 0;
finalAttackSpeech[30,6] = 0;
finalAttackSpeech[30,7] = 0;
finalAttackSpeech[30,8] = 0;

finalAttackSpeech[31,0] = "not out of any";
finalAttackSpeech[31,1] = "desire for good";
finalAttackSpeech[31,2] = "or evil...";
finalAttackSpeech[31,3] = "";
finalAttackSpeech[31,4] = 9;
finalAttackSpeech[31,5] = 0;
finalAttackSpeech[31,6] = 0;
finalAttackSpeech[31,7] = 0;
finalAttackSpeech[31,8] = 0;

finalAttackSpeech[32,0] = "but just because";
finalAttackSpeech[32,1] = "you think you";
finalAttackSpeech[32,2] = "can.";
finalAttackSpeech[32,3] = "";
finalAttackSpeech[32,4] = 3;
finalAttackSpeech[32,5] = 0;
finalAttackSpeech[32,6] = 0;
finalAttackSpeech[32,7] = 0;
finalAttackSpeech[32,8] = 0;

finalAttackSpeech[33,0] = "and because you";
finalAttackSpeech[33,1] = '"' + "can" + '"' + "...";
finalAttackSpeech[33,2] = "";
finalAttackSpeech[33,3] = "";
finalAttackSpeech[33,4] = 1;
finalAttackSpeech[33,5] = 0;
finalAttackSpeech[33,6] = 0;
finalAttackSpeech[33,7] = 0;
finalAttackSpeech[33,8] = 0;

finalAttackSpeech[34,0] = "... you " + '"' + "have to." + '"';
finalAttackSpeech[34,1] = "";
finalAttackSpeech[34,2] = "";
finalAttackSpeech[34,3] = "";
finalAttackSpeech[34,4] = 9;
finalAttackSpeech[34,5] = 0;
finalAttackSpeech[34,6] = 0;
finalAttackSpeech[34,7] = 0;
finalAttackSpeech[34,8] = 0;

finalAttackSpeech[35,0] = "                                         ";
finalAttackSpeech[35,1] = "                                         ";
finalAttackSpeech[35,2] = "                                         ";
finalAttackSpeech[35,3] = "                                         ";
finalAttackSpeech[35,4] = 9;
finalAttackSpeech[35,5] = 0;
finalAttackSpeech[35,6] = 0;
finalAttackSpeech[35,7] = 10;
finalAttackSpeech[35,8] = 0;

finalAttackSpeech[36,0] = "but now, you've";
finalAttackSpeech[36,1] = "reached the end.";
finalAttackSpeech[36,2] = "";
finalAttackSpeech[36,3] = "";
finalAttackSpeech[36,4] = 9;
finalAttackSpeech[36,5] = 0;
finalAttackSpeech[36,6] = 0;
finalAttackSpeech[36,7] = 0;
finalAttackSpeech[36,8] = 0;

finalAttackSpeech[37,0] = "there is nothing";
finalAttackSpeech[37,1] = "left for you now.";
finalAttackSpeech[37,2] = "";
finalAttackSpeech[37,3] = "";
finalAttackSpeech[37,4] = 4;
finalAttackSpeech[37,5] = 0;
finalAttackSpeech[37,6] = 0;
finalAttackSpeech[37,7] = 0;
finalAttackSpeech[37,8] = 0;

finalAttackSpeech[38,0] = "so, uh, in my";
finalAttackSpeech[38,1] = "personal opinion...";
finalAttackSpeech[38,2] = "";
finalAttackSpeech[38,3] = "";
finalAttackSpeech[38,4] = 1;
finalAttackSpeech[38,5] = 0;
finalAttackSpeech[38,6] = 0;
finalAttackSpeech[38,7] = 0;
finalAttackSpeech[38,8] = 0;

finalAttackSpeech[39,0] = "the most";
finalAttackSpeech[39,1] = '"' + "determined" + '"';
finalAttackSpeech[39,2] = "thing you can";
finalAttackSpeech[39,3] = "do here?";
finalAttackSpeech[39,4] = 3;
finalAttackSpeech[39,5] = 0;
finalAttackSpeech[39,6] = 0;
finalAttackSpeech[39,7] = 0;
finalAttackSpeech[39,8] = 0;

finalAttackSpeech[40,0] = "is to, uh,     ";
finalAttackSpeech[40,1] = "completely give";
finalAttackSpeech[40,2] = "up.";
finalAttackSpeech[40,3] = "";
finalAttackSpeech[40,4] = 1;
finalAttackSpeech[40,5] = 0;
finalAttackSpeech[40,6] = 0;
finalAttackSpeech[40,7] = 0;
finalAttackSpeech[40,8] = 0;

finalAttackSpeech[41,0] = "and... (yawn)";
finalAttackSpeech[41,1] = "do literally";
finalAttackSpeech[41,2] = "anything else.";
finalAttackSpeech[41,3] = "";
finalAttackSpeech[41,4] = 3;
finalAttackSpeech[41,5] = 0;
finalAttackSpeech[41,6] = 0;
finalAttackSpeech[41,7] = 0;
finalAttackSpeech[41,8] = 0;

finalAttackSpeech[42,0] = "                                         ";
finalAttackSpeech[42,1] = "                                         ";
finalAttackSpeech[42,2] = "                                         ";
finalAttackSpeech[42,3] = "                                         ";
finalAttackSpeech[42,4] = 0;
finalAttackSpeech[42,5] = 0;
finalAttackSpeech[42,6] = 0;
finalAttackSpeech[42,7] = 11;
finalAttackSpeech[42,8] = 0;

finalAttackSpeech[43,0] = "                                         ";
finalAttackSpeech[43,1] = "                                         ";
finalAttackSpeech[43,2] = "                                         ";
finalAttackSpeech[43,3] = "                                         ";
finalAttackSpeech[43,4] = 12;
finalAttackSpeech[43,5] = 0;
finalAttackSpeech[43,6] = 0;
finalAttackSpeech[43,7] = 11;
finalAttackSpeech[43,8] = 0;

finalAttackSpeech[44,0] = "                                         ";
finalAttackSpeech[44,1] = "                                         ";
finalAttackSpeech[44,2] = "                                         ";
finalAttackSpeech[44,3] = "                                         ";
finalAttackSpeech[44,4] = 13;
finalAttackSpeech[44,5] = 0;
finalAttackSpeech[44,6] = 0;
finalAttackSpeech[44,7] = 11;
finalAttackSpeech[44,8] = 0;

finalAttackSpeech[45,0] = "                                         ";
finalAttackSpeech[45,1] = "                                         ";
finalAttackSpeech[45,2] = "                                         ";
finalAttackSpeech[45,3] = "                                         ";
finalAttackSpeech[45,4] = 14;
finalAttackSpeech[45,5] = 0;
finalAttackSpeech[45,6] = 0;
finalAttackSpeech[45,7] = 11;
finalAttackSpeech[45,8] = 0;


//kill speech
/*
killSpeechX[0,0] = "";
killSpeechX[0,1] = "";
killSpeechX[0,2] = "";
killSpeechX[0,3] = "";
killSpeechX[0,4] = 0;
killSpeechX[0,5] = 0;
killSpeechX[0,6] = 0;
killSpeechX[0,7] = 0;
killSpeechX[0,8] = 0;
*/

killSpeech1[0,0] = "heh, didja";
killSpeech1[0,1] = "really think you";
killSpeech1[0,2] = "would be able";
killSpeech1[0,3] = "";
killSpeech1[0,4] = 0;
killSpeech1[0,5] = 0;
killSpeech1[0,6] = 0;
killSpeech1[0,7] = 50; //only speech bubble
killSpeech1[0,8] = -230; //speech bubble offset

killSpeech2[0,0] = "...";
killSpeech2[0,1] = "";
killSpeech2[0,2] = "";
killSpeech2[0,3] = "";
killSpeech2[0,4] = 10;
killSpeech2[0,5] = 4;
killSpeech2[0,6] = 1;
killSpeech2[0,7] = 50;
killSpeech2[0,8] = -230;

killSpeech2[1,0] = "...";
killSpeech2[1,1] = "";
killSpeech2[1,2] = "";
killSpeech2[1,3] = "";
killSpeech2[1,4] = 7;
killSpeech2[1,5] = 4;
killSpeech2[1,6] = 1;
killSpeech2[1,7] = 50;
killSpeech2[1,8] = -230;

killSpeech2[2,0] = "...";
killSpeech2[2,1] = "";
killSpeech2[2,2] = "";
killSpeech2[2,3] = "";
killSpeech2[2,4] = 11;
killSpeech2[2,5] = 4;
killSpeech2[2,6] = 1;
killSpeech2[2,7] = 50;
killSpeech2[2,8] = -230;

killSpeech2[3,0] = "so...";
killSpeech2[3,1] = "";
killSpeech2[3,2] = "";
killSpeech2[3,3] = "";
killSpeech2[3,4] = 7;
killSpeech2[3,5] = 4;
killSpeech2[3,6] = 1;
killSpeech2[3,7] = 50;
killSpeech2[3,8] = -230;

killSpeech2[4,0] = "guess that's it,     ";
killSpeech2[4,1] = "huh?";
killSpeech2[4,2] = "";
killSpeech2[4,3] = "";
killSpeech2[4,4] = 7;
killSpeech2[4,5] = 4;
killSpeech2[4,6] = 1;
killSpeech2[4,7] = 50;
killSpeech2[4,8] = -230;

killSpeech2[5,0] = "...";
killSpeech2[5,1] = "";
killSpeech2[5,2] = "";
killSpeech2[5,3] = "";
killSpeech2[5,4] = 11;
killSpeech2[5,5] = 4;
killSpeech2[5,6] = 1;
killSpeech2[5,7] = 50;
killSpeech2[5,8] = -230;

killSpeech2[6,0] = "just...";
killSpeech2[6,1] = "";
killSpeech2[6,2] = "";
killSpeech2[6,3] = "";
killSpeech2[6,4] = 10;
killSpeech2[6,5] = 4;
killSpeech2[6,6] = 1;
killSpeech2[6,7] = 50;
killSpeech2[6,8] = -230;

killSpeech2[7,0] = "don't say i";
killSpeech2[7,1] = "didn't warn you.";
killSpeech2[7,2] = "";
killSpeech2[7,3] = "";
killSpeech2[7,4] = 10;
killSpeech2[7,5] = 4;
killSpeech2[7,6] = 1;
killSpeech2[7,7] = 50;
killSpeech2[7,8] = -230;

killSpeech2[8,0] = "               ";
killSpeech2[8,1] = "               ";
killSpeech2[8,2] = "               ";
killSpeech2[8,3] = "               ";
killSpeech2[8,4] = 10;
killSpeech2[8,5] = 4;
killSpeech2[8,6] = 1;
killSpeech2[8,7] = 10;
killSpeech2[8,8] = 0;

killSpeech2[9,0] = "               ";
killSpeech2[9,1] = "               ";
killSpeech2[9,2] = "               ";
killSpeech2[9,3] = "               ";
killSpeech2[9,4] = 10;
killSpeech2[9,5] = 5;
killSpeech2[9,6] = 0;
killSpeech2[9,7] = 10;
killSpeech2[9,8] = 0;

killSpeech2[10,0] = "welp.";
killSpeech2[10,1] = "";
killSpeech2[10,2] = "";
killSpeech2[10,3] = "";
killSpeech2[10,4] = 10;
killSpeech2[10,5] = 5;
killSpeech2[10,6] = 0;
killSpeech2[10,7] = 50;
killSpeech2[10,8] = -230;

killSpeech2[11,0] = "i'm going to";
killSpeech2[11,1] = "grillby's.";
killSpeech2[11,2] = "";
killSpeech2[11,3] = "";
killSpeech2[11,4] = 8;
killSpeech2[11,5] = 6;
killSpeech2[11,6] = 0;
killSpeech2[11,7] = 50;
killSpeech2[11,8] = -230;

killSpeech2[12,0] = "                                             ";
killSpeech2[12,1] = "                                             ";
killSpeech2[12,2] = "                                             ";
killSpeech2[12,3] = "                                             ";
killSpeech2[12,4] = 10;
killSpeech2[12,5] = 5;
killSpeech2[12,6] = 0;
killSpeech2[12,7] = 10;
killSpeech2[12,8] = 0;

killSpeech2[13,0] = "papyrus, do you";
killSpeech2[13,1] = "want anything?";
killSpeech2[13,2] = "";
killSpeech2[13,3] = "";
killSpeech2[13,4] = 0;
killSpeech2[13,5] = 0;
killSpeech2[13,6] = 0;
killSpeech2[13,7] = 50;
killSpeech2[13,8] = -630;

killSpeech2[14,0] = "                    ";
killSpeech2[14,1] = "                    ";
killSpeech2[14,2] = "                    ";
killSpeech2[14,3] = "                    ";
killSpeech2[14,4] = 0;
killSpeech2[14,5] = 0;
killSpeech2[14,6] = 0;
killSpeech2[14,7] = 120; //sound play
killSpeech2[14,8] = 0;

//geeeeeet duuuuunked on
battleSpeech69[0,0] = "...";
battleSpeech69[0,1] = "";
battleSpeech69[0,2] = "";
battleSpeech69[0,3] = "";
battleSpeech69[0,4] = 4;
battleSpeech69[0,5] = 0;
battleSpeech69[0,6] = 0;
battleSpeech69[0,7] = 70; //stop music
battleSpeech69[0,8] = 0;

battleSpeech69[1,0] = "you're sparing me?";
battleSpeech69[1,1] = "";
battleSpeech69[1,2] = "";
battleSpeech69[1,3] = "";
battleSpeech69[1,4] = 4;
battleSpeech69[1,5] = 0;
battleSpeech69[1,6] = 0;
battleSpeech69[1,7] = 0;
battleSpeech69[1,8] = 0;

battleSpeech69[2,0] = "finally.";
battleSpeech69[2,1] = "";
battleSpeech69[2,2] = "";
battleSpeech69[2,3] = "";
battleSpeech69[2,4] = 1;
battleSpeech69[2,5] = 0;
battleSpeech69[2,6] = 0;
battleSpeech69[2,7] = 0;
battleSpeech69[2,8] = 0;

battleSpeech69[3,0] = "buddy.     ";
battleSpeech69[3,1] = "pal.";
battleSpeech69[3,2] = "";
battleSpeech69[3,3] = "";
battleSpeech69[3,4] = 3;
battleSpeech69[3,5] = 0;
battleSpeech69[3,6] = 0;
battleSpeech69[3,7] = 0;
battleSpeech69[3,8] = 0;

battleSpeech69[4,0] = "i know how hard";
battleSpeech69[4,1] = "it must be...";
battleSpeech69[4,2] = "";
battleSpeech69[4,3] = "";
battleSpeech69[4,4] = 4;
battleSpeech69[4,5] = 0;
battleSpeech69[4,6] = 0;
battleSpeech69[4,7] = 0;
battleSpeech69[4,8] = 0;

battleSpeech69[5,0] = "to make that";
battleSpeech69[5,1] = "choice.";
battleSpeech69[5,2] = "";
battleSpeech69[5,3] = "";
battleSpeech69[5,4] = 4;
battleSpeech69[5,5] = 0;
battleSpeech69[5,6] = 0;
battleSpeech69[5,7] = 0;
battleSpeech69[5,8] = 0;

battleSpeech69[6,0] = "to go back on";
battleSpeech69[6,1] = "everything you've";
battleSpeech69[6,2] = "worked up to.";
battleSpeech69[6,3] = "";
battleSpeech69[6,4] = 4;
battleSpeech69[6,5] = 0;
battleSpeech69[6,6] = 0;
battleSpeech69[6,7] = 0;
battleSpeech69[6,8] = 0;

battleSpeech69[7,0] = "i want you to";
battleSpeech69[7,1] = "know...     ";
battleSpeech69[7,2] = "i won't let it";
battleSpeech69[7,3] = "go to waste.";
battleSpeech69[7,4] = 0;
battleSpeech69[7,5] = 0;
battleSpeech69[7,6] = 0;
battleSpeech69[7,7] = 0;
battleSpeech69[7,8] = 0;

battleSpeech69[8,0] = "...";
battleSpeech69[8,1] = "";
battleSpeech69[8,2] = "";
battleSpeech69[8,3] = "";
battleSpeech69[8,4] = 0;
battleSpeech69[8,5] = 1;
battleSpeech69[8,6] = 0;
battleSpeech69[8,7] = 0;
battleSpeech69[8,8] = 0;

battleSpeech69[9,0] = "c'mere, pal.";
battleSpeech69[9,1] = "";
battleSpeech69[9,2] = "";
battleSpeech69[9,3] = "";
battleSpeech69[9,4] = 3;
battleSpeech69[9,5] = 1;
battleSpeech69[9,6] = 0;
battleSpeech69[9,7] = 0;
battleSpeech69[9,8] = 0;

battleSpeechArr[69] = battleSpeech69;

dunkedSpeech[0,0] = "geeettttttt ";
dunkedSpeech[0,1] = "dunked on!!! ";

dunkedSpeech[1,0] = "if we're really ";
dunkedSpeech[1,1] = "friends... ";

dunkedSpeech[2,0] = "you won't come back. ";
dunkedSpeech[2,1] = "";

//special interactions
/*
interactionX[0,0] = "";
interactionX[0,1] = "";
interactionX[0,2] = "";
interactionX[0,3] = 0;
*/

//sans
interactionSans[0,0] = "hmm.     ";
interactionSans[0,1] = "that expression...";
interactionSans[0,2] = "";
interactionSans[0,3] = 0;

interactionSans[1,0] = "that's the expression of";
interactionSans[1,1] = "someone who's about to";
interactionSans[1,2] = "kick your ass.";
interactionSans[1,3] = 1;

interactionSans[2,0] = "heh heh heh...     ";
interactionSans[2,1] = "i'm sure you understand.";
interactionSans[2,2] = "";
interactionSans[2,3] = 4;

interactionSans[3,0] = "i know you know whats";
interactionSans[3,1] = "going to happen next.";
interactionSans[3,2] = "";
interactionSans[3,3] = 5;

//kris, clover
interactionKris[0,0] = "hmm.     ";
interactionKris[0,1] = "that expression...";
interactionKris[0,2] = "";
interactionKris[0,3] = 0;

interactionKris[1,0] = "that's the expression of";
interactionKris[1,1] = "someone who...";
interactionKris[1,2] = "";
interactionKris[1,3] = 1;

interactionKris[2,0] = "hmmm... wait.";
interactionKris[2,1] = "have i met you before?";
interactionKris[2,2] = "";
interactionKris[2,3] = 4;

interactionKris[3,0] = "maybe in another";
interactionKris[3,1] = "timeline?";
interactionKris[3,2] = "";
interactionKris[3,3] = 4;

//papyrus (old/new)
interactionPapyrus[0,0] = "hmm.     ";
interactionPapyrus[0,1] = "that expression...";
interactionPapyrus[0,2] = "";
interactionPapyrus[0,3] = 0;

interactionPapyrus[1,0] = "that's the expression of";
interactionPapyrus[1,1] = "someone who i love";
interactionPapyrus[1,2] = "very much.";
interactionPapyrus[1,3] = 1;

interactionPapyrus[2,0] = "heya brother, you really";
interactionPapyrus[2,1] = "did a number on that";
interactionPapyrus[2,2] = "human back there, huh?";
interactionPapyrus[2,3] = 3;

interactionPapyrus[3,0] = "i guess that finally";
interactionPapyrus[3,1] = "means you can get into";
interactionPapyrus[3,2] = "the royal guard.";
interactionPapyrus[3,3] = 1;

interactionPapyrus[4,0] = "congrats bro.     ";
interactionPapyrus[4,1] = "wanna show me what";
interactionPapyrus[4,2] = "you've got?";
interactionPapyrus[4,3] = 0;

//dog
interactionDog[0,0] = "hmm.     ";
interactionDog[0,1] = "that expression...";
interactionDog[0,2] = "";
interactionDog[0,3] = 0;

interactionDog[1,0] = "that's the expression of";
interactionDog[1,1] = "someone who...";
interactionDog[1,2] = "";
interactionDog[1,3] = 1;

interactionDog[2,0] = "hmmm... strange.     ";
interactionDog[2,1] = "where did the rest of";
interactionDog[2,2] = "my speech go?";
interactionDog[2,3] = 4;

interactionDog[3,0] = "oh, right.";
interactionDog[3,1] = "";
interactionDog[3,2] = "";
interactionDog[3,3] = 4;

interactionDog[4,0] = "you stole it,     ";
interactionDog[4,1] = "didn't you?";
interactionDog[4,2] = "";
interactionDog[4,3] = 5;

//sans skins
interactionSkin[0,0] = "hmm.     ";
interactionSkin[0,1] = "that expression...";
interactionSkin[0,2] = "";
interactionSkin[0,3] = 0;

interactionSkin[1,0] = "that's the expression of";
interactionSkin[1,1] = "someone who's about to";
interactionSkin[1,2] = "kick your ass.";
interactionSkin[1,3] = 1;

interactionSkin[2,0] = "did you really think";
interactionSkin[2,1] = "i would go easy on you";
interactionSkin[2,2] = "with that outfit?";
interactionSkin[2,3] = 3;

interactionSkin[3,0] = "heh heh heh...     ";
interactionSkin[3,1] = "";
interactionSkin[3,2] = "";
interactionSkin[3,3] = 4;

interactionSkin[4,0] = "sorry kiddo, no sympathy";
interactionSkin[4,1] = "from me. maybe";
interactionSkin[4,2] = "in another timeline...";
interactionSkin[4,3] = 3;

interactionSpeech = undefined;

urlSans = 1869814191;
urlKris[0] = 1867608473;
urlKris[1] = 1875062006; //clover
urlKris[2] = 2249417003; //gun ralsei
urlDog = 1871374719;
urlPapyrus[0] = 1873681040; //old
urlPapyrus[1] = 2100204665; //new

urlSkin[0,0] = 1894361290; //goose
urlSkin[0,1] = 8; //colour slot