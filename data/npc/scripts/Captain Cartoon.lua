local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()		npcHandler:onThink()		end

local voices = { {text = 'Passagens para as cidades Homer, Minion, Minions, Freakazoid, Freaka, Simpsons, Picapau, Fred, Fredbarney, Woodpecker, Taz, Tazmania, Smurf, Smurfete, Pinkycerebro, Leela, Futurama, Pinguins, Madagascar, Sexo ou Pink e Cerebro'} }
npcHandler:addModule(VoiceModule:new(voices))
 
-- Travel
local function addTravelKeyword(keyword, cost, destination, action)
	local travelKeyword = keywordHandler:addKeyword({keyword}, StdModule.say, {npcHandler = npcHandler, text = ' Ir para ' .. keyword:titleCase() .. ' for |TRAVELCOST|?', cost = cost, discount = 'postman'})
		travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, cost = cost, discount = 'postman', destination = destination}, nil, action)
		travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, text = 'Estou a disposição.', reset = true})
end

addTravelKeyword('homer', 0, Position(312, 208, 6)) 
addTravelKeyword('minion', 0, Position(438, 331, 6))
addTravelKeyword('minions', 0, Position(856, 213, 6))
addTravelKeyword('freakazoid', 0, Position(1025, 225, 6))
addTravelKeyword('freaka', 0, Position(1225, 180, 6))
addTravelKeyword('simpsons', 0, Position(1324, 283, 6))
addTravelKeyword('picapau', 0, Position(1695, 255, 6))
addTravelKeyword('fred', 0, Position(1876, 147, 6))
addTravelKeyword('fredbarney', 0, Position(1761, 418, 6))
addTravelKeyword('woodpecker', 0, Position(1462, 520, 6))
addTravelKeyword('taz', 0, Position(1218, 474, 6))
addTravelKeyword('tazmania', 0, Position(1022, 441, 6))
addTravelKeyword('smurf', 0, Position(693, 535, 6))
addTravelKeyword('smurfete', 0, Position(426, 431, 6))
addTravelKeyword('pinkycerebro', 0, Position(324, 596, 6))
addTravelKeyword('leela', 0, Position(382, 716, 6))
addTravelKeyword('futurama', 0, Position(566, 786, 6))
addTravelKeyword('pinguins', 0, Position(798, 790, 6))
addTravelKeyword('madagascar', 0, Position(1108, 781, 6))
addTravelKeyword('sexo', 0, Position(1393, 815, 6))
addTravelKeyword('pink e cerebro', 0, Position(1452, 782, 6))

-- Basic
keywordHandler:addKeyword({'destino'}, StdModule.say, {npcHandler = npcHandler, text = 'Para onde vc quer ir? {Homer}, {Minion}, {Minions}, {Freakazoid}, {Freaka}, {Simpsons}, {Picapau}, {Fred}, {Fredbarney}, {Woodpecker}, {Taz}, {Tazmania}, {Smurf}, {Smurfete}, {Pinkycerebro}, {Leela}, {Futurama}, {Pinguins}, {Madagascar}, {Sexo} ou {Pink e Cerebro}?'})

npcHandler:setMessage(MESSAGE_GREET, 'Bem vindo a bordo, |PLAYERNAME|. Onde posso te levar hoje? {destino}')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Tchau.')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Pessoa mal educada, nem deu tchau.')

npcHandler:addModule(FocusModule:new())