if 1+irandom(99) <= widthChance and global.map[iX-1,iY-1].type = wall
{
	global.map[iX-1,iY-1].colour = c_yellow
	global.map[iX-1,iY-1].type = open
}

if 1+irandom(99) <= widthChance and global.map[iX-1,iY+1].type = wall
{
	global.map[iX-1,iY+1].colour = c_yellow
	global.map[iX-1,iY+1].type = open
}

//Center Square
global.map[iX,iY].colour = c_yellow

if global.map[iX,iY].type = superwall
{
	global.map[iX,iY].type = portal
}
else
{
	global.map[iX,iY].type = corridor
}

if 1+irandom(99) <= widthChance and global.map[iX+1,iY-1].type = wall
{
	global.map[iX+1,iY-1].colour = c_yellow
	global.map[iX+1,iY-1].type = open
}

if 1+irandom(99) <= widthChance and global.map[iX+1,iY+1].type = wall
{
	global.map[iX+1,iY+1].colour = c_yellow
	global.map[iX+1,iY+1].type = open
}	


	