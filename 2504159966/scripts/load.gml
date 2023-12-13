muno_char_name = "Concrete Cubeness"
var years = 2024 - current_year
trummel_codecs = [
	{pages: [
		{speaker:0, expression:0, text:"WHAT", gimmick:0},
		{speaker:1, expression:5, text:"This stage is 3-dimensional!?", gimmick:0},
		{speaker:0, expression:0, text:"HOW", gimmick:0},
		{speaker:4, expression:8, text:"Come on, this is sick!", gimmick:0},
		{speaker:1, expression:2, text:"... It is, yeah.", gimmick:0},
		{speaker:0, expression:0, text:"3d rivals", gimmick:0},
		{speaker:4, expression:1, text:"Absolutely. Speaking of, when's the release date for that again?", gimmick:0},
	]}
]

if (years == 0) {
	trummel_codecs[0].pages[7] = {speaker:4, expression:6, text:"... 2024... That's this year, hope it goes smoothly!!", gimmick:0}
	trummel_codecs[0].pages[8] = {speaker:1, expression:1, text:"I hope so too!!!", gimmick:0}
	trummel_codecs[0].pages[9] = {speaker:0, expression:0, text:"yknow it would be funny if it got delayed again uhh wait no it wouldnt forget i said that", gimmick:0}
	trummel_codecs[0].pages[10] = {speaker:4, expression:8, text:"Don't jinx it!!!!!", gimmick:0}
} else if (years < 0) {
	trummel_codecs[0].pages[7] = {speaker:4, expression:3, text:"Ah, 2024.", gimmick:0}
	trummel_codecs[0].pages[8] = {speaker:1, expression:0, text:"Ok", gimmick:0}
	trummel_codecs[0].pages[9] = {speaker:4, expression:5, text:"This is placeholder text", gimmick:0}
	trummel_codecs[0].pages[10] = {speaker:0, expression:2, text:"what

are you serious", gimmick:0}
	trummel_codecs[0].pages[11] = {speaker:1, expression:6, text:"I hope Rivals 2 releases soon, I think it will be really cool! It'll be a platform fighting game that serves as a direct sequel to Rivals of Aether (2017). Unlike its predecessor, it is played in 2.5D and utilizes 3D models-additional mechanics are also added, including the ability to shield and grab, while mechanics such as the parry return from Rivals of Aether.", gimmick:0}
	trummel_codecs[0].pages[12] = {speaker:0, expression:0, text:"and?", gimmick:0}
	trummel_codecs[0].pages[13] = {speaker:1, expression:6, text:'The game is intended to have improved single-player and casual-oriented content compared to Rivals of Aether, though appealing to competitive players is the primary focus of development-several mechanics were added to make the game feel more familiar to veteran players. The sequel is scheduled for a late 2024 release on "as many platforms" as possible.', gimmick:0}
	trummel_codecs[0].pages[14] = {speaker:0, expression:0, text:"thanks", gimmick:0}
} else {
	trummel_codecs[0].pages[7] = {speaker:4, expression:6, text:"... 2024... wait, it got delayed!?", gimmick:0}
	trummel_codecs[0].pages[9] = {speaker:0, expression:0, text:"frick", gimmick:0}
	trummel_codecs[0].pages[10] = {speaker:1, expression:6, text:"Well, Aether Studios needs time to develop this thing. A delayed game is better than a rushed game.", gimmick:0}
	trummel_codecs[0].pages[11] = {speaker:0, expression:4, text:"true tho :(", gimmick:0}
}

//old
/*if (years == 0) {
	trummel_codecs[0].pages[7] = {speaker:4, expression:6, text:"... 2023... That's this year!!!", gimmick:0}
	trummel_codecs[0].pages[8] = {speaker:1, expression:1, text:"LET'S GOOOOOOOOOOOO", gimmick:0}
	trummel_codecs[0].pages[9] = {speaker:0, expression:0, text:"WOAG", gimmick:0}
	trummel_codecs[0].pages[10] = {speaker:4, expression:8, text:"I'M SO EXCITEEEEEEEEEED", gimmick:0}
} else if (years < 0) {
	trummel_codecs[0].pages[7] = {speaker:4, expression:3, text:"Ah, 2023.", gimmick:0}
	trummel_codecs[0].pages[8] = {speaker:1, expression:0, text:"Ok", gimmick:0}
	trummel_codecs[0].pages[9] = {speaker:4, expression:5, text:"This is placeholder text", gimmick:0}
	trummel_codecs[0].pages[10] = {speaker:0, expression:2, text:"what

are you serious", gimmick:0}
	trummel_codecs[0].pages[11] = {speaker:1, expression:6, text:"This is why you make sure your clock is set correctly.", gimmick:0}
} else {
	var yearstring = string(years)
	if (years == 1) {
		yearstring += " year away... "
	} else {
		yearstring += " years away..."
	}
	trummel_codecs[0].pages[7] = {speaker:4, expression:6, text:"... 2023... WHAT!?", gimmick:0}
	trummel_codecs[0].pages[8] = {speaker:1, expression:9, text:"That's "+yearstring, gimmick:0}
	trummel_codecs[0].pages[9] = {speaker:0, expression:0, text:"i cant wait that long aaaaaaaaa", gimmick:0}
	trummel_codecs[0].pages[10] = {speaker:1, expression:6, text:"Trummel, Aether Studios needs this much time to make the game as good as possible on release.", gimmick:0}
	trummel_codecs[0].pages[11] = {speaker:0, expression:4, text:"ok :(", gimmick:0}
}*/