if global.map[iX,iY].type != openroom
{	
	roomCD = roomCooldown
	turnOrSplit()
	turnOrSplit()

	iXMin = max(iX-roomSizeMin-irandom(roomSizeBonus),1)
	iYMin = max(iY-roomSizeMin-irandom(roomSizeBonus),1)
	iXMax = min(iX+roomSizeMin+irandom(roomSizeBonus),global.mapWidth-1)
	iYMax = min(iY+roomSizeMin+irandom(roomSizeBonus),global.mapHeight-1)
		
	for(i = iXMin-1; i <= iXMax; i++)
	{
		for(ii = iYMin-1; ii <= iYMax; ii++)
		{	
			if global.map[i,ii].type = wall or global.map[i,ii].type = open
			{
				if (i = iXMin-1 and ii = iYMin-1) or (i = iXMax and ii = iYMin-1) or (i = iXMin-1 and ii = iYMax) or (i = iXMax and ii = iYMax) 
				{
					global.map[i,ii].colour = c_black
					global.map[i,ii].type = supercorner
				}
				else if i = iXMin-1 or i = iXMax or ii = iYMin-1 or ii = iYMax
				{
					global.map[i,ii].colour = c_black 
					global.map[i,ii].type = superwall
				}
				else
				{
					global.map[i,ii].colour = c_yellow
					global.map[i,ii].type = openroom
				}
			}
		}
	}
}