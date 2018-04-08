/*
	Client Side Anti Cheat Function
*/

#if defined CLIENT_AC
	#endinput
#endif 
#define CLIENT_AC


public OnIncomingRPC(playerid, rpcid, BitStream:bs)
{
	switch(rpcid)
	{
		case RPC_ClientJoin: 
		{
			/*
				INT32 iVersion, 
				UINT8 byteMod, 
				UINT8 byteNicknameLen, 
				char NickName[], 
				UINT32 uiClientChallengeResponse, 
				UINT8 byteAuthKeyLen, 
				char auth_key[], 
				UINT8 iClientVerLen, 
				char ClientVersion[]
			*/			
			new iVersion,
				byteMod,
				byteNicknameLen,
				NickName[24],
				uiClientChallengeResponse,
				byteAuthKeyLen,
				auth_key[4*16],
				iClientVerLen,
				ClientVersion[30];

			BS_ReadValue(
				bs,
				PR_INT32, iVersion,
				PR_UINT8, byteMod,
				PR_UINT8, byteNicknameLen,
				PR_STRING, NickName, byteNicknameLen,
				PR_UINT32, uiClientChallengeResponse,
				PR_UINT8, byteAuthKeyLen,
				PR_STRING, auth_key, byteAuthKeyLen,
				PR_UINT8, iClientVerLen,
				PR_STRING, ClientVersion, iClientVerLen
			);		
		}
	}	
	return 1;
}	
