-- Force reset all specialization data
-- talents
-- spells
-- spec ids in characters table
TRUNCATE `character_talent`;
DELETE FROM `character_spell` WHERE `spell` IN (10,53,116,133,139,348,527,596,674,689,740,755,770,772,871,879,974,980,1038,1064,1079,1160,1329,1449,1454,1535,1680,1719,1822,1943,1949,2060,2120,2565,2782,2812,2912,2944,2948,3045,3674,5143,5217,5308,5740,6117,6343,6353,6572,6807,7302,8042,8092,8190,8936,10400,11129,11366,12042,12043,12051,12294,12323,12328,12472,12712,12846,12950,12975,12982,13046,13750,13877,14117,14161,14183,14190,14914,15286,15407,15473,15487,16196,16213,16282,16511,16864,16931,16949,16974,17007,17073,17364,17877,17962,18562,19387,19434,19574,19596,19623,19750,20113,20154,20164,20243,20473,20711,20782,22570,22812,23588,23881,23922,24858,26573,27243,29000,29144,29722,30108,30146,30451,30455,30482,30814,30823,31220,31223,31589,31661,31687,31801,31821,31842,31850,31868,31884,31935,32379,32546,32645,33206,33605,33745,33757,33763,33873,34026,34483,34861,34914,34954,35110,35551,44425,44448,44549,44572,45243,46584,46915,46917,46953,47515,47517,47536,47540,47585,47788,48181,48438,48484,48500,48505,48982,49020,49028,49143,49184,49206,49222,49509,49530,49572,49868,50029,50034,50371,50385,50392,50887,51128,51160,51271,51490,51505,51522,51530,51533,51564,51667,51690,51701,51713,51723,52127,52610,52798,53184,53209,53253,53260,53270,53301,53351,53385,53478,53480,53482,53490,53497,53503,53551,53563,53576,53592,53595,53600,53651,54637,55090,55233,55453,55610,55709,56222,56315,56835,58423,58875,59057,60103,60188,61295,61329,61336,61684,61685,61688,61882,62099,62606,62618,63458,63560,63733,63900,64044,64843,66192,73510,73680,73685,74434,76547,76613,76657,76658,76659,76669,76671,76672,76803,76806,76808,76838,76856,76857,77130,77215,77219,77220,77223,77226,77472,77484,77485,77486,77492,77493,77495,77513,77514,77515,77756,77767,78203,78674,78675,79134,79140,79147,79152,79206,79577,79684,80240,81099,81127,81136,81164,81206,81208,81209,81333,81662,81700,81749,82326,82327,82692,84601,84608,84617,84654,84714,85043,85101,85222,85256,85288,85948,86093,86096,86097,86099,86100,86101,86102,86103,86104,86108,86110,86113,86121,86535,86536,86537,86539,86629,86659,87138,87336,87935,88423,88625,88747,88766,88821,91023,91107,92364,93399,95649,95740,95860,95861,95862,97462,98008,100130,101545,102342,103103,103958,104315,105174,105424,105805,106732,106733,106734,106735,106785,106839,106952,107428,108280,108299,108558,108647,108683,108853,108869,109145,109151,109784,111240,111546,112071,112857,112858,112859,112965,113043,113656,113858,113860,113861,114050,114051,114052,114192,114592,114635,114664,114866,115069,115070,115151,115175,115176,115180,115181,115288,115294,115295,115308,115310,115313,115315,115451,115460,115636,115768,115869,115921,115939,116092,116095,116346,116645,116670,116680,116740,116781,116849,116852,116858,117197,117198,117216,117896,117906,117907,117967,118038,119072,119582,120224,120225,120227,120451,121152,121196,121253,121278,121783,122098,122351,122470,122509,123099,123766,123980,124146,124502,124682,124913,126060,126086,126135,127663,128595,128938,130735,131086,132157,132158,135288,137006,137007,137008,137010,137011,137012,137013,137015,137016,137017,137019,137020,137021,137023,137024,137025,137027,137028,137029,137031,137032,137033,137035,137036,137037,137039,137040,137041,137043,137044,137046,137048,137049,137050,137384,137639,139598,140333,145205,145518,148040,154436,154555,155522,155783,156843,157444,157445,157447,158298,158920,159195,159232,159362,159374,161608,161797,161798,161800,162697,162698,162699,162700,162701,162702,163201,163952,164856,165201,165357,165359,165360,165362,165363,165365,165367,165368,165370,165372,165374,165375,165376,165378,165379,165380,165381,165383,165386,165387,165389,165390,165391,165392,165393,165394,165395,165396,165397,165398,165399,165462,166142,166163,166221,166916,167105,167187,167188,170374,174597,174926,177851,179333);
UPDATE `characters` SET `talentTree`='0', `at_login`=`at_login`|0x14;
ALTER TABLE `characters` CHANGE `talentTree` `primarySpecialization` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `characters` DROP `talentGroupsCount`;
