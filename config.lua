-- Configuração de combate
-- ATENÇÃO: Valores válidos para tipo de servidor: "pvp", "no-pvp" and "pvp-enforced"
worldType = "no-pvp"
hotkeyAimbotEnabled = true
protectionLevel = 7
pzLocked = 60 * 1000
removeChargesFromRunes = true
removeChargesFromPotions = true
removeWeaponAmmunition = true
removeWeaponCharges = true
timeToDecreaseFrags = 24 * 60 * 60 * 1000
whiteSkullTime = 15 * 60 * 1000
stairJumpExhaustion = 2 * 1000
experienceByKillingPlayers = false
expFromPlayersLevelRange = 75
dayKillsToRedSkull = 3
weekKillsToRedSkull = 5
monthKillsToRedSkull = 10
redSkullDuration = 30
blackSkullDuration = 45
orangeSkullDuration = 7

-- Configuração de conexão
-- NOTA: maxPlayers "0" significa sem limites de players online
ip = "cartoonserver.ddns.net"
bindOnlyGlobalAddress = false
loginProtocolPort = 7171
gameProtocolPort = 7172
statusProtocolPort = 7171
maxPlayers = 0
motd = "Welcome to The Cartoon Server!"
onePlayerOnlinePerAccount = true
allowClones = false
serverName = "Cartoon"
statusTimeout = 5 * 1000
replaceKickOnLogin = true
maxPacketsPerSecond = 25

-- MySQL
mysqlHost = "cartoonserver.ddns.net"
mysqlUser = "root"
mysqlPass = "jmocds"
mysqlDatabase = "cartoon"
mysqlPort = 3306
mysqlSock = ""
passwordType = "sha1"


-- Version Manual
clientVersionMin = 1100
clientVersionMax = 1200
clientVersionStr = "Only clients with protocol version 10.00 or 12.00 are allowed!"

-- Depot Limit
freeDepotLimit = 2000
premiumDepotLimit = 10000
depotBoxes = 17

-- GameStore
gamestoreByModules = true

-- Casting System 
enableLiveCasting = true
liveCastPort = 7173

-- Deaths
-- NOTE: Leave deathLosePercent as -1 if you want to use the default
-- death penalty formula. For the old formula, set it to 10. For
-- no skill/experience loss, set it to 0.
deathLosePercent = -1

-- Houses
-- NOTE: set housePriceEachSQM to -1 to disable the ingame buy house functionality
housePriceEachSQM = 100
houseRentPeriod = "monthly"

-- Item Usage
timeBetweenActions = 200
timeBetweenExActions = 500

-- Map
-- NOTE: set mapName WITHOUT .otbm at the end
mapName = "cartoon"
mapAuthor = "Meffon & Jaurez"

-- Market
marketOfferDuration = 30 * 24 * 60 * 60
premiumToCreateMarketOffer = true
checkExpiredMarketOffersEachMinutes = 60
maxMarketOffersAtATimePerPlayer = 100

-- Misc.
allowChangeOutfit = true
freePremium = false
kickIdlePlayerAfterMinutes = 60
maxMessageBuffer = 4
emoteSpells = true
classicEquipmentSlots = false
allowWalkthrough = true
coinPacketSize = 25
coinImagesURL = "http://oganza.ddns.net:8090/store/"
classicAttackSpeed = false

-- Rates
-- NOTE: rateExp is not used if you have enabled stages in data/XML/stages.xml
rateExp = 3
rateSkill = 3
rateLoot = 5
rateMagic = 3
rateSpawn = 1

-- Monster rates
rateMonsterHealth = 1.0
rateMonsterAttack = 1.0
rateMonsterDefense = 1.0

-- Monsters
deSpawnRange = 2
deSpawnRadius = 50

-- Stamina
staminaSystem = true

-- Scripts
warnUnsafeScripts = true
convertUnsafeScripts = true

-- Startup
-- NOTE: defaultPriority only works on Windows and sets process
-- priority, valid values are: "normal", "above-normal", "high"
defaultPriority = "high"
startupDatabaseOptimization = true

-- Status server information
ownerName = "Oganza"
ownerEmail = "jaurezmaisner@gmail.com"
url = "http://oganza.ddns.net:8090"
location = "Brazil"
