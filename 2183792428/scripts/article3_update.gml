//
x = (room_width / 2) + (number * 96) + (xPos * number)
y = (room_height / 2) + 16

if platStart = 0 {
switch(platState) {
case 0: 
platStateTimer = 0
xPos ++
if xPos > (platMaxDist - 1) {
xPos = platMaxDist
platState = 1
}

with oPlayer { 
	if !free && position_meeting(x,y+1,other) {
	x += other.number
	}
}
with obj_article1 { 
	if !free && position_meeting(x,y+1,other) {
	x += other.number
	}
}
with obj_article2 { 
	if !free && position_meeting(x,y+1,other) {
	x += other.number
	}
}
with obj_article3 { 
	if !free && position_meeting(x,y+1,other) {
	x += other.number
	}
}
with obj_article_solid { 
	if !free && position_meeting(x,y+1,other) {
	x += other.number
	}
}
with obj_article_platform { 
	if !free && position_meeting(x,y+1,other) {
	x += other.number
	}
}

break;
case 1:
platStateTimer ++ 
if platStateTimer > (platMaxWait - 1) {
platStateTimer = 0
platState = 2
}
break;
case 2: 
platStateTimer = 0
xPos -= 1
if 1 > xPos  {
xPos = 0
platState = 3
}

with oPlayer { 
	if !free && position_meeting(x,y+1,other) {
	x -= other.number
	}
}
with obj_article1 { 
	if !free && position_meeting(x,y+1,other) {
	x -= other.number
	}
}
with obj_article2 { 
	if !free && position_meeting(x,y+1,other) {
	x -= other.number
	}
}
with obj_article3 { 
	if !free && position_meeting(x,y+1,other) {
	x -= other.number
	}
}
with obj_article_solid { 
	if !free && position_meeting(x,y+1,other) {
	x -= other.number
	}
}
with obj_article_platform { 
	if !free && position_meeting(x,y+1,other) {
	x -= other.number
	}
}

break;
case 3:
platStateTimer ++ 
if platStateTimer > (platMaxWait - 1) {
platStateTimer = 0
platState = 0
}
break;


default:
break;
}
} else {
platStart -= 1
}

