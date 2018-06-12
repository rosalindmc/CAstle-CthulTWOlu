//Clear
global.savedmod = argument0
destroyMini()
clearContent()

//Load the mod of the given name
if global.auto = false
{
	ini_open(working_directory+"Mods/"+string(argument0))
}
else
{
	ini_open(working_directory+"Recovery/"+string(argument0))
}

global.mod = argument0

for(i = 1; i <= 10; i++)
{
	ii = 0
	repeat(ini_read_real("Asset Count",string(i),0))
	{
		inst = instance_create_depth(10,20+(global.contentCount[i]*14),-5,obj_content)
		inst.text = string(ini_read_string(string(i)+"-"+string(ii),"Name","NULL"))
		inst.type = i
		
		with(inst)
		{
			other.inst.host = obj_contentPanel
		}
		
		inst.x = x+inst.xstart
		inst.y = y+inst.ystart+(inst.host.scroll*-14)
		inst.num = global.contentCount[i]
		global.contentCount[i] += 1
		global.menu = 0
		
		#region //Type Specific Loading
		switch(inst.type) 
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
		#endregion

		for(v = 0; v < 99; v++)
		{
			inst.attributes[v] = ini_read_real(string(i)+"-"+string(ii),"At"+string(v),0)
		}

		ii++
	}
}
	
ini_close()

global.lastsave = current_time
global.savechanges = false