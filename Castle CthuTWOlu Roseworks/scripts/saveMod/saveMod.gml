//Save Mod
ini_open(working_directory+"Mods/"+string(global.mod))

for(i = 1; i <= 10; i++)
{
	count[i] = 0
}

//Each Asset By Type
with(obj_content)
{
	switch(type) 
	{
		#region //Character
		case 1:	
		break
		#endregion
		#region //Monsters
		case 2:
		break
		#endregion
		#region //Patterns
		case 3:
		break
		#endregion
		#region //Animations
		case 4: 
		break
		#endregion
		#region //Sprawlers
		case 5:
		break
		#endregion
		#region //Doodads
		case 6:
		break
		#endregion
		#region //Haunts
		case 7:
		break
		#endregion
		#region //Items
		case 8:
		break
		#endregion
		#region //Spells
		case 9: 
		break
		#endregion
		#region //Traits
		case 10:
		break
		#endregion
	}
	ini_write_string(string(type)+"-"+string(other.count[type]),"Name",string(text))
	ini_write_string(string(type)+"-"+string(other.count[type]),"Type",string(type))
	
	other.count[type] += 1
}

for(i = 1; i <= 10; i++)
{
	ini_write_real("Asset Count",string(i),count[i])
}

ini_close()