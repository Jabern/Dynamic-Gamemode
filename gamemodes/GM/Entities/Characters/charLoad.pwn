#if defined CHARACTERS_LOAD 
	#endinput
#endif

#define CHARACTERS_LOAD

/*
	Load Characters 
*/

#include "GM/Entities/Characters/charData.pwn"
#include "GM/Entities/Characters/charFunc.pwn"


forward LoadCharacter(AccountID);
forward OnCharacterLoad();

public LoadCharacter(AccountID)
{
	new Query[VERY_LONG_STR];

	mysql_format(_Connect, Query, sizeof(Query), "SELECT * FROM `"#CHAR_TAB"` WHERE `accountID = %d`", AccountID);
	mysql_tquery(_Connect, Query, "OnCharacterLoad");
	return 1;
}	

