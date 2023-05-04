// SPDX-FileCopyrightText: 2023 EasyExample contributors
// SPDX-License-Identifier: BSD-3-Clause
// © 2023 Contributors to the EasyExample project <https://github.com/EasyScience/EasyTextureApp>

pragma Singleton

import QtQuick


QtObject { // If "Unknown component. (M300) in QtCreator", try: "Tools > QML/JS > Reset Code Model"

    readonly property var expected: {

        // On created

        'created': {
            'experiment': {
                'xData': [0,0.0033444816053511705,0.006688963210702341,0.010033444816053512,0.013377926421404682,0.016722408026755852,0.020066889632107024,0.023411371237458192,0.026755852842809364,0.030100334448160536,0.033444816053511704,0.03678929765886288,0.04013377926421405,0.043478260869565216,0.046822742474916385,0.05016722408026756,0.05351170568561873,0.056856187290969896,0.06020066889632107,0.06354515050167224,0.06688963210702341,0.07023411371237458,0.07357859531772576,0.07692307692307693,0.0802675585284281,0.08361204013377926,0.08695652173913043,0.0903010033444816,0.09364548494983277,0.09698996655518395,0.10033444816053512,0.10367892976588629,0.10702341137123746,0.11036789297658862,0.11371237458193979,0.11705685618729098,0.12040133779264214,0.12374581939799331,0.12709030100334448,0.13043478260869565,0.13377926421404682,0.13712374581939799,0.14046822742474915,0.14381270903010032,0.14715719063545152,0.1505016722408027,0.15384615384615385,0.15719063545150502,0.1605351170568562,0.16387959866220736,0.16722408026755853,0.1705685618729097,0.17391304347826086,0.17725752508361203,0.1806020066889632,0.18394648829431437,0.18729096989966554,0.19063545150501673,0.1939799331103679,0.19732441471571907,0.20066889632107024,0.2040133779264214,0.20735785953177258,0.21070234113712374,0.2140468227424749,0.21739130434782608,0.22073578595317725,0.22408026755852842,0.22742474916387959,0.23076923076923078,0.23411371237458195,0.23745819397993312,0.2408026755852843,0.24414715719063546,0.24749163879598662,0.2508361204013378,0.25418060200668896,0.25752508361204013,0.2608695652173913,0.26421404682274247,0.26755852842809363,0.2709030100334448,0.27424749163879597,0.27759197324414714,0.2809364548494983,0.2842809364548495,0.28762541806020064,0.2909698996655518,0.29431438127090304,0.2976588628762542,0.3010033444816054,0.30434782608695654,0.3076923076923077,0.3110367892976589,0.31438127090301005,0.3177257525083612,0.3210702341137124,0.32441471571906355,0.3277591973244147,0.3311036789297659,0.33444816053511706,0.3377926421404682,0.3411371237458194,0.34448160535117056,0.34782608695652173,0.3511705685618729,0.35451505016722407,0.35785953177257523,0.3612040133779264,0.36454849498327757,0.36789297658862874,0.3712374581939799,0.3745819397993311,0.3779264214046823,0.38127090301003347,0.38461538461538464,0.3879598662207358,0.391304347826087,0.39464882943143814,0.3979933110367893,0.4013377926421405,0.40468227424749165,0.4080267558528428,0.411371237458194,0.41471571906354515,0.4180602006688963,0.4214046822742475,0.42474916387959866,0.4280936454849498,0.431438127090301,0.43478260869565216,0.43812709030100333,0.4414715719063545,0.44481605351170567,0.44816053511705684,0.451505016722408,0.45484949832775917,0.45819397993311034,0.46153846153846156,0.46488294314381273,0.4682274247491639,0.47157190635451507,0.47491638795986624,0.4782608695652174,0.4816053511705686,0.48494983277591974,0.4882943143812709,0.4916387959866221,0.49498327759197325,0.4983277591973244,0.5016722408026756,0.5050167224080268,0.5083612040133779,0.5117056856187291,0.5150501672240803,0.5183946488294314,0.5217391304347826,0.5250836120401338,0.5284280936454849,0.5317725752508361,0.5351170568561873,0.5384615384615384,0.5418060200668896,0.5451505016722408,0.5484949832775919,0.5518394648829431,0.5551839464882943,0.5585284280936454,0.5618729096989966,0.5652173913043478,0.568561872909699,0.5719063545150501,0.5752508361204013,0.5785953177257525,0.5819397993311036,0.5852842809364549,0.5886287625418061,0.5919732441471572,0.5953177257525084,0.5986622073578596,0.6020066889632107,0.6053511705685619,0.6086956521739131,0.6120401337792643,0.6153846153846154,0.6187290969899666,0.6220735785953178,0.6254180602006689,0.6287625418060201,0.6321070234113713,0.6354515050167224,0.6387959866220736,0.6421404682274248,0.6454849498327759,0.6488294314381271,0.6521739130434783,0.6555183946488294,0.6588628762541806,0.6622073578595318,0.6655518394648829,0.6688963210702341,0.6722408026755853,0.6755852842809364,0.6789297658862876,0.6822742474916388,0.68561872909699,0.6889632107023411,0.6923076923076923,0.6956521739130435,0.6989966555183946,0.7023411371237458,0.705685618729097,0.7090301003344481,0.7123745819397993,0.7157190635451505,0.7190635451505016,0.7224080267558528,0.725752508361204,0.7290969899665551,0.7324414715719063,0.7357859531772575,0.7391304347826086,0.7424749163879598,0.745819397993311,0.7491638795986622,0.7525083612040134,0.7558528428093646,0.7591973244147158,0.7625418060200669,0.7658862876254181,0.7692307692307693,0.7725752508361204,0.7759197324414716,0.7792642140468228,0.782608695652174,0.7859531772575251,0.7892976588628763,0.7926421404682275,0.7959866220735786,0.7993311036789298,0.802675585284281,0.8060200668896321,0.8093645484949833,0.8127090301003345,0.8160535117056856,0.8193979933110368,0.822742474916388,0.8260869565217391,0.8294314381270903,0.8327759197324415,0.8361204013377926,0.8394648829431438,0.842809364548495,0.8461538461538461,0.8494983277591973,0.8528428093645485,0.8561872909698997,0.8595317725752508,0.862876254180602,0.8662207357859532,0.8695652173913043,0.8729096989966555,0.8762541806020067,0.8795986622073578,0.882943143812709,0.8862876254180602,0.8896321070234113,0.8929765886287625,0.8963210702341137,0.8996655518394648,0.903010033444816,0.9063545150501672,0.9096989966555183,0.9130434782608695,0.9163879598662207,0.919732441471572,0.9230769230769231,0.9264214046822743,0.9297658862876255,0.9331103678929766,0.9364548494983278,0.939799331103679,0.9431438127090301,0.9464882943143813,0.9498327759197325,0.9531772575250836,0.9565217391304348,0.959866220735786,0.9632107023411371,0.9665551839464883,0.9698996655518395,0.9732441471571907,0.9765886287625418,0.979933110367893,0.9832775919732442,0.9866220735785953,0.9899665551839465,0.9933110367892977,0.9966555183946488,1],
                'yData': [1.4268728488224802,1.559453302571393,1.5326880341632159,1.4209134706997237,1.458953238154174,1.43973098887748,1.4701179256482315,1.4875105565147282,1.338504358826419,1.3153684919599198,1.4668185726234388,1.3761855206044222,1.4320546786989463,1.2699864280615265,1.3486092113862111,1.3938063342273537,1.2852173271972345,1.4184855772378746,1.3996834848333337,1.215482545101694,1.2044202758776221,1.2975801534215754,1.3670940466025248,1.2454716167684117,1.2025172038408383,1.2335871947152057,1.1449385922975823,1.173435323221162,1.206641063880616,1.2081925486108183,1.1456135455699092,1.135136519010538,1.1226859733538253,1.160817014217781,1.1168191991722778,1.0531273724913088,1.2063115817545882,1.1400534063365069,1.1471879695764557,1.0458769053528567,1.1971708897930726,1.160618068300864,1.0027733096869138,1.035100909981725,1.102825309610299,1.090733337216648,1.1257496558214302,1.012849493637768,1.0844017874842966,1.0424223172961922,0.959001461383908,1.0058104356099828,1.0547566697315889,1.0374669084348265,0.9592507440490304,0.9659609867135672,0.8450322563312717,0.8766416401935633,0.9775410501797568,0.8908895557129977,0.8325947913525994,0.8977196184983663,0.9185345738178086,0.9027901426890942,0.8328001358729032,0.8356184129654344,0.8394779397904646,0.8834477203244439,0.8219134360309902,0.7863433266851529,0.7955975669687059,0.6935404108535821,0.6862894313154526,0.8082349461488609,0.854162627073975,0.7661283848719982,0.716178131255516,0.6614945885350159,0.7178390160345228,0.8037731870394795,0.7514290426818793,0.6952144595896214,0.749315480867722,0.6136593058801616,0.6599449680890326,0.7376506682891055,0.6526827073796387,0.6189166473854782,0.5709127516755751,0.6166226732644872,0.6884132228472293,0.48809834762920895,0.6336541234461548,0.6309868144921198,0.6340921034561715,0.5949234248415556,0.5986172778333587,0.5304915095474098,0.5289939809824317,0.49190709914833236,0.40788017789879694,0.5606241046139233,0.49058849553781786,0.40652306798191695,0.4574658326162075,0.4434733167599281,0.40781284240731897,0.3956369884859053,0.42408371901378966,0.4310524056096683,0.41881156319065893,0.37791698543800517,0.28184917741877524,0.3121417420413578,0.2916295427576161,0.3630460203095343,0.4083221735084575,0.3857747446372243,0.3754730242327848,0.3693075410017702,0.24704543009103969,0.35430214371234425,0.3105424375292129,0.18253311518619758,0.1591909688324764,0.14873139297827342,0.28690330822769716,0.17566435349188853,0.13761678900402236,0.23064603555959223,0.16453674673234242,0.09952180480315942,0.10751038921970595,0.17102791927448552,0.08914738389331509,0.10006783719651195,0.17776949045377702,0.1163583862098017,0.0797849686620806,0.10010537340261746,0.00004464127890581315,0.06259570188874866,0.059434571962216576,0.00282525225461025,-0.023063715022622944,0.1251142017434447,0.03714025304192266,-0.03309818944951233,0.03617989523088368,0.06842465608360401,-0.10085310070616918,-0.1114772630585213,-0.09579126396026445,0.008650037696170593,-0.11310498314629974,-0.014262820917893881,-0.029582232248958173,-0.06631040340462051,-0.14116433133191936,-0.00019882218893171877,-0.045788999027331495,-0.11206471199473682,-0.18077890415133455,-0.10575022139687115,-0.1665053478611158,-0.1403492020912181,-0.20130267759585768,-0.14939571202666707,-0.2738617058556915,-0.23593098398844078,-0.1121049566989189,-0.1406122146981186,-0.2644751842945546,-0.16408307190594562,-0.28374667252268393,-0.16799515638230822,-0.217117863891994,-0.2926852798884666,-0.33548155680155817,-0.39429056958084496,-0.2302764872478629,-0.40847020558596964,-0.2622041343991798,-0.24368017630162914,-0.3320977321048102,-0.42188387193435606,-0.2926645228989546,-0.28149913337006843,-0.345482996952046,-0.3945463210185357,-0.43076074818144566,-0.44700178295369647,-0.48526905322333336,-0.40162424664895496,-0.45989827009431805,-0.5176980101333969,-0.5456703393781852,-0.4433971231068053,-0.527407538961965,-0.4966955339472885,-0.541619832235503,-0.44239810654204503,-0.4468201989158531,-0.6331707009307683,-0.6066521401867645,-0.5913080462717166,-0.46947968852141814,-0.5203830017772015,-0.6191373921689436,-0.6543840072790214,-0.5721323974264847,-0.5495166421564978,-0.5406528066246189,-0.6683537828612341,-0.5706785501421587,-0.6197685990207732,-0.6703243357450596,-0.5801558791184526,-0.7403628829254577,-0.6522313774674642,-0.7904218134484756,-0.7834524759889486,-0.6452271924622659,-0.7948645549816479,-0.6956684022526984,-0.7374833175855903,-0.6993320892869229,-0.8039703733630174,-0.8195683710598033,-0.8394158053940273,-0.7342083429749273,-0.796929246730019,-0.7368977058899769,-0.7603396211970757,-0.9207568914774313,-0.8476254369587319,-0.9470379769857062,-0.9700988616853001,-0.9733211824542662,-0.8247596395634749,-0.8504034661077977,-0.8523590063750736,-0.9599141526616333,-0.915089883789196,-0.891779814790506,-0.9825860541654328,-0.9540711196293593,-1.0335180550154635,-1.0719456619107923,-1.044983030600977,-0.9302075784423169,-1.005505282181392,-0.9434146532237904,-1.0469076866532894,-1.0930584300560524,-1.0011254953815796,-1.0030082415805532,-1.176118968828419,-1.05454643473702,-1.1803255828345558,-1.1856751524883276,-1.041717082914034,-1.2207578344279872,-1.1908693136485715,-1.0511977317169205,-1.174660158768127,-1.2457846849517795,-1.245453078394021,-1.2406791536827726,-1.1501953722109928,-1.2884632711371862,-1.1369106614946347,-1.25344153585771,-1.1450776274769663,-1.16731933396852,-1.3003926074250063,-1.318548742022544,-1.2838621948523694,-1.3692718300727862,-1.2689210637810464,-1.4014405058122423,-1.4172967630073026,-1.232914712816998,-1.3803549109333604,-1.3301841991215089,-1.3695628656492314,-1.406909045177519,-1.4670057041978288,-1.3069537035902232,-1.3057028964718418,-1.3157396957562246,-1.4974599794461936,-1.4867272322804055,-1.4162379551013677,-1.3538421987417173,-1.451283581238843,-1.4322617039422967,-1.4475662245928231,-1.5381493568132176,-1.491679547417407],
            },
            'model': {
                'parameters': {
                    'slope': { 'value': 1.0, 'error': 0, 'fit': true },
                    'yIntercept': { 'value': 0.0, 'error': 0, 'fit': true }
                },
                'yData': [0,0.0033444816053511705,0.006688963210702341,0.010033444816053512,0.013377926421404682,0.016722408026755852,0.020066889632107024,0.023411371237458192,0.026755852842809364,0.030100334448160536,0.033444816053511704,0.03678929765886288,0.04013377926421405,0.043478260869565216,0.046822742474916385,0.05016722408026756,0.05351170568561873,0.056856187290969896,0.06020066889632107,0.06354515050167224,0.06688963210702341,0.07023411371237458,0.07357859531772576,0.07692307692307693,0.0802675585284281,0.08361204013377926,0.08695652173913043,0.0903010033444816,0.09364548494983277,0.09698996655518395,0.10033444816053512,0.10367892976588629,0.10702341137123746,0.11036789297658862,0.11371237458193979,0.11705685618729098,0.12040133779264214,0.12374581939799331,0.12709030100334448,0.13043478260869565,0.13377926421404682,0.13712374581939799,0.14046822742474915,0.14381270903010032,0.14715719063545152,0.1505016722408027,0.15384615384615385,0.15719063545150502,0.1605351170568562,0.16387959866220736,0.16722408026755853,0.1705685618729097,0.17391304347826086,0.17725752508361203,0.1806020066889632,0.18394648829431437,0.18729096989966554,0.19063545150501673,0.1939799331103679,0.19732441471571907,0.20066889632107024,0.2040133779264214,0.20735785953177258,0.21070234113712374,0.2140468227424749,0.21739130434782608,0.22073578595317725,0.22408026755852842,0.22742474916387959,0.23076923076923078,0.23411371237458195,0.23745819397993312,0.2408026755852843,0.24414715719063546,0.24749163879598662,0.2508361204013378,0.25418060200668896,0.25752508361204013,0.2608695652173913,0.26421404682274247,0.26755852842809363,0.2709030100334448,0.27424749163879597,0.27759197324414714,0.2809364548494983,0.2842809364548495,0.28762541806020064,0.2909698996655518,0.29431438127090304,0.2976588628762542,0.3010033444816054,0.30434782608695654,0.3076923076923077,0.3110367892976589,0.31438127090301005,0.3177257525083612,0.3210702341137124,0.32441471571906355,0.3277591973244147,0.3311036789297659,0.33444816053511706,0.3377926421404682,0.3411371237458194,0.34448160535117056,0.34782608695652173,0.3511705685618729,0.35451505016722407,0.35785953177257523,0.3612040133779264,0.36454849498327757,0.36789297658862874,0.3712374581939799,0.3745819397993311,0.3779264214046823,0.38127090301003347,0.38461538461538464,0.3879598662207358,0.391304347826087,0.39464882943143814,0.3979933110367893,0.4013377926421405,0.40468227424749165,0.4080267558528428,0.411371237458194,0.41471571906354515,0.4180602006688963,0.4214046822742475,0.42474916387959866,0.4280936454849498,0.431438127090301,0.43478260869565216,0.43812709030100333,0.4414715719063545,0.44481605351170567,0.44816053511705684,0.451505016722408,0.45484949832775917,0.45819397993311034,0.46153846153846156,0.46488294314381273,0.4682274247491639,0.47157190635451507,0.47491638795986624,0.4782608695652174,0.4816053511705686,0.48494983277591974,0.4882943143812709,0.4916387959866221,0.49498327759197325,0.4983277591973244,0.5016722408026756,0.5050167224080268,0.5083612040133779,0.5117056856187291,0.5150501672240803,0.5183946488294314,0.5217391304347826,0.5250836120401338,0.5284280936454849,0.5317725752508361,0.5351170568561873,0.5384615384615384,0.5418060200668896,0.5451505016722408,0.5484949832775919,0.5518394648829431,0.5551839464882943,0.5585284280936454,0.5618729096989966,0.5652173913043478,0.568561872909699,0.5719063545150501,0.5752508361204013,0.5785953177257525,0.5819397993311036,0.5852842809364549,0.5886287625418061,0.5919732441471572,0.5953177257525084,0.5986622073578596,0.6020066889632107,0.6053511705685619,0.6086956521739131,0.6120401337792643,0.6153846153846154,0.6187290969899666,0.6220735785953178,0.6254180602006689,0.6287625418060201,0.6321070234113713,0.6354515050167224,0.6387959866220736,0.6421404682274248,0.6454849498327759,0.6488294314381271,0.6521739130434783,0.6555183946488294,0.6588628762541806,0.6622073578595318,0.6655518394648829,0.6688963210702341,0.6722408026755853,0.6755852842809364,0.6789297658862876,0.6822742474916388,0.68561872909699,0.6889632107023411,0.6923076923076923,0.6956521739130435,0.6989966555183946,0.7023411371237458,0.705685618729097,0.7090301003344481,0.7123745819397993,0.7157190635451505,0.7190635451505016,0.7224080267558528,0.725752508361204,0.7290969899665551,0.7324414715719063,0.7357859531772575,0.7391304347826086,0.7424749163879598,0.745819397993311,0.7491638795986622,0.7525083612040134,0.7558528428093646,0.7591973244147158,0.7625418060200669,0.7658862876254181,0.7692307692307693,0.7725752508361204,0.7759197324414716,0.7792642140468228,0.782608695652174,0.7859531772575251,0.7892976588628763,0.7926421404682275,0.7959866220735786,0.7993311036789298,0.802675585284281,0.8060200668896321,0.8093645484949833,0.8127090301003345,0.8160535117056856,0.8193979933110368,0.822742474916388,0.8260869565217391,0.8294314381270903,0.8327759197324415,0.8361204013377926,0.8394648829431438,0.842809364548495,0.8461538461538461,0.8494983277591973,0.8528428093645485,0.8561872909698997,0.8595317725752508,0.862876254180602,0.8662207357859532,0.8695652173913043,0.8729096989966555,0.8762541806020067,0.8795986622073578,0.882943143812709,0.8862876254180602,0.8896321070234113,0.8929765886287625,0.8963210702341137,0.8996655518394648,0.903010033444816,0.9063545150501672,0.9096989966555183,0.9130434782608695,0.9163879598662207,0.919732441471572,0.9230769230769231,0.9264214046822743,0.9297658862876255,0.9331103678929766,0.9364548494983278,0.939799331103679,0.9431438127090301,0.9464882943143813,0.9498327759197325,0.9531772575250836,0.9565217391304348,0.959866220735786,0.9632107023411371,0.9665551839464883,0.9698996655518395,0.9732441471571907,0.9765886287625418,0.979933110367893,0.9832775919732442,0.9866220735785953,0.9899665551839465,0.9933110367892977,0.9966555183946488,1]
            }
        },

        // After refinement

        'fitted': {
            'model': {
                'parameters': {
                    'slope': { 'value': 1.0, 'error': 0 },
                    'yIntercept': { 'value': 0.0, 'error': 0 }
                },
                'yData': [1.495,1.4849615384615387,1.474923076923077,1.4648846153846156,1.454846153846154,1.4448076923076925,1.4347692307692308,1.4247307692307694,1.4146923076923077,1.4046538461538463,1.3946153846153848,1.3845769230769231,1.3745384615384617,1.3645,1.3544615384615386,1.344423076923077,1.3343846153846155,1.3243461538461538,1.3143076923076924,1.304269230769231,1.2942307692307693,1.2841923076923079,1.2741538461538462,1.2641153846153848,1.254076923076923,1.2440384615384616,1.234,1.2239615384615385,1.213923076923077,1.2038846153846154,1.193846153846154,1.1838076923076923,1.173769230769231,1.1637307692307695,1.1536923076923078,1.1436538461538461,1.1336153846153847,1.1235769230769233,1.1135384615384616,1.1035000000000001,1.0934615384615385,1.083423076923077,1.0733846153846156,1.063346153846154,1.0533076923076923,1.0432692307692308,1.0332307692307694,1.0231923076923077,1.0131538461538463,1.0031153846153846,0.9930769230769232,0.9830384615384616,0.9730000000000001,0.9629615384615385,0.9529230769230771,0.9428846153846155,0.932846153846154,0.9228076923076923,0.9127692307692309,0.9027307692307693,0.8926923076923078,0.8826538461538462,0.8726153846153847,0.8625769230769231,0.8525384615384617,0.8425000000000001,0.8324615384615386,0.822423076923077,0.8123846153846155,0.8023461538461539,0.7923076923076924,0.7822692307692308,0.7722307692307693,0.7621923076923077,0.7521538461538463,0.7421153846153847,0.7320769230769232,0.7220384615384616,0.7120000000000001,0.7019615384615386,0.6919230769230771,0.6818846153846155,0.671846153846154,0.6618076923076924,0.6517692307692309,0.6417307692307694,0.6316923076923079,0.6216538461538463,0.6116153846153847,0.6015769230769231,0.5915384615384616,0.5815,0.5714615384615385,0.5614230769230769,0.5513846153846155,0.5413461538461539,0.5313076923076924,0.5212692307692308,0.5112307692307693,0.5011923076923078,0.4911538461538463,0.4811153846153846,0.47107692307692317,0.46103846153846173,0.45100000000000007,0.4409615384615386,0.43092307692307696,0.4208846153846155,0.4108461538461541,0.4008076923076924,0.390769230769231,0.3807307692307693,0.3706923076923079,0.3606538461538462,0.35061538461538455,0.3405769230769231,0.33053846153846167,0.3205,0.31046153846153857,0.3004230769230769,0.29038461538461546,0.2803461538461538,0.27030769230769236,0.2602692307692309,0.25023076923076926,0.24019230769230782,0.23015384615384615,0.2201153846153847,0.21007692307692327,0.2000384615384616,0.19000000000000017,0.1799615384615385,0.16992307692307707,0.15988461538461562,0.14984615384615396,0.13980769230769252,0.12976923076923086,0.11973076923076942,0.10969230769230776,0.09965384615384609,0.08961538461538465,0.07957692307692299,0.06953846153846155,0.05950000000000011,0.049461538461538446,0.039423076923077005,0.029384615384615342,0.019346153846153902,0.009307692307692461,-0.0007307692307692015,-0.010769230769230642,-0.020807692307692305,-0.030846153846153745,-0.040884615384615186,-0.05092307692307685,-0.06096153846153829,-0.07099999999999995,-0.08103846153846139,-0.09107692307692283,-0.1011153846153845,-0.11115384615384594,-0.1211923076923076,-0.13123076923076904,-0.1412692307692307,-0.15130769230769214,-0.16134615384615358,-0.17138461538461525,-0.1814230769230767,-0.19146153846153835,-0.2014999999999998,-0.21153846153846123,-0.2215769230769229,-0.23161538461538433,-0.241653846153846,-0.25169230769230744,-0.2617307692307693,-0.27176923076923076,-0.2818076923076924,-0.29184615384615387,-0.30188461538461553,-0.31192307692307697,-0.3219615384615384,-0.3320000000000001,-0.3420384615384615,-0.3520769230769232,-0.3621153846153846,-0.3721538461538463,-0.3821923076923077,-0.39223076923076916,-0.4022692307692308,-0.41230769230769226,-0.4223461538461539,-0.43238461538461537,-0.4424230769230768,-0.45246153846153847,-0.4624999999999999,-0.4725384615384616,-0.482576923076923,-0.49261538461538446,-0.5026538461538461,-0.5126923076923076,-0.522730769230769,-0.5327692307692309,-0.5428076923076923,-0.5528461538461538,-0.5628846153846152,-0.5729230769230766,-0.5829615384615385,-0.593,-0.6030384615384614,-0.6130769230769229,-0.6231153846153843,-0.6331538461538462,-0.6431923076923076,-0.6532307692307691,-0.6632692307692305,-0.6733076923076919,-0.6833461538461538,-0.6933846153846153,-0.7034230769230767,-0.7134615384615381,-0.7234999999999996,-0.7335384615384615,-0.7435769230769229,-0.7536153846153844,-0.7636538461538462,-0.7736923076923077,-0.7837307692307691,-0.793769230769231,-0.8038076923076924,-0.8138461538461539,-0.8238846153846153,-0.8339230769230768,-0.8439615384615387,-0.8540000000000001,-0.8640384615384615,-0.874076923076923,-0.8841153846153844,-0.8941538461538463,-0.9041923076923077,-0.9142307692307692,-0.9242692307692306,-0.9343076923076925,-0.944346153846154,-0.9543846153846154,-0.9644230769230768,-0.9744615384615383,-0.9845000000000002,-0.9945384615384616,-1.004576923076923,-1.0146153846153845,-1.024653846153846,-1.0346923076923078,-1.0447307692307692,-1.0547692307692307,-1.0648076923076921,-1.0748461538461536,-1.0848846153846154,-1.0949230769230769,-1.1049615384615383,-1.1149999999999998,-1.1250384615384612,-1.135076923076923,-1.1451153846153845,-1.155153846153846,-1.1651923076923074,-1.1752307692307689,-1.1852692307692307,-1.1953076923076922,-1.2053461538461536,-1.215384615384615,-1.2254230769230765,-1.2354615384615384,-1.2454999999999998,-1.2555384615384613,-1.2655769230769232,-1.2756153846153846,-1.285653846153846,-1.295692307692308,-1.3057307692307694,-1.3157692307692308,-1.3258076923076922,-1.3358461538461541,-1.3458846153846156,-1.355923076923077,-1.3659615384615384,-1.376,-1.3860384615384618,-1.3960769230769232,-1.4061153846153847,-1.416153846153846,-1.4261923076923075,-1.4362307692307694,-1.4462692307692309,-1.4563076923076923,-1.4663461538461537,-1.4763846153846152,-1.486423076923077,-1.4964615384615385,-1.5065]
            },
        }

    }

}
