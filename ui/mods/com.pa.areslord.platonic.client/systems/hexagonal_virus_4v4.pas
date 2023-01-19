{
    "name": "Hexagonal Virus 4v4",
    "description": "",
    "creator": "",
    "version": "",
    "planets": [
        {
            "name": "Hexagonal Virus 4v4",
            "mass": 5000,
            "position_x": 9026.1591796875,
            "position_y": -19193.5546875,
            "velocity_x": 138.940673828125,
            "velocity_y": 65.33968353271484,
            "required_thrust_to_move": 3,
            "starting_planet": true,
            "respawn": false,
            "start_destroyed": false,
            "min_spawn_delay": 0,
            "max_spawn_delay": 0,
            "planet": {
                "seed": 791481984,
                "radius": 500,
                "heightRange": 0,
                "waterHeight": 0,
                "waterDepth": 100,
                "temperature": 0,
                "metalDensity": 25,
                "metalClusters": 25,
                "metalSpotLimit": -1,
                "biomeScale": 50,
                "biome": "moon",
                "symmetryType": "none",
                "symmetricalMetal": false,
                "symmetricalStarts": false,
                "numArmies": 2,
                "landingZonesPerArmy": 0,
                "landingZoneSize": 0,
                "heightAdjustments": []
            },
            "planetCSG": [
                {
                    "proj": "BP_None",
                    "spec": "/pa/terrain/platonic_csg/brushes/cube_01.json",
                    "height": -600,
                    "op": "BO_Subtract",
                    "position": [
                        0,
                        0,
                        1
                    ],
                    "transform": [
                        40,
                        0,
                        0,
                        0,
                        0,
                        40,
                        0,
                        0,
                        0,
                        0,
                        40,
                        -600
                    ],
                    "scale": [
                        40,
                        40,
                        40
                    ],
                    "rotation": 0,
                    "weight": [
                        0,
                        0,
                        0,
                        0
                    ],
                    "weightHard": false,
                    "weightScale": [
                        1,
                        1,
                        1
                    ],
                    "mirrored": false,
                    "twinId": 0,
                    "pathable": true,
                    "flooded": false,
                    "mergeable": true,
                    "no_features": false
                },
                {
                    "proj": "BP_None",
                    "spec": "/pa/terrain/platonic_csg/brushes/hexagonal_virus_2.json",
                    "height": 0,
                    "op": "BO_Add",
                    "position": [
                        0,
                        0,
                        1
                    ],
                    "transform": [
                        13,
                        0,
                        0,
                        0,
                        0,
                        13,
                        0,
                        0,
                        0,
                        0,
                        13,
                        0
                    ],
                    "scale": [
                        13,
                        13,
                        13
                    ],
                    "rotation": 0,
                    "weight": [
                        0,
                        0,
                        0,
                        0
                    ],
                    "weightHard": false,
                    "weightScale": [
                        1,
                        1,
                        1
                    ],
                    "mirrored": false,
                    "twinId": 0,
                    "pathable": true,
                    "flooded": false,
                    "mergeable": true,
                    "no_features": true
                }
            ],
            "metal_spots": [
                [
                    -207.11276245117188,
                    107.73065185546875,
                    456.84637451171875
                ],
                [
                    -223.715576171875,
                    221.51754760742188,
                    402.1158447265625
                ],
                [
                    -113.2359619140625,
                    204.27426147460938,
                    455.93255615234375
                ],
                [
                    -312.406005859375,
                    57.373626708984375,
                    402.03955078125
                ],
                [
                    -399.29058837890625,
                    67.04934692382812,
                    312.5135498046875
                ],
                [
                    -341.9154052734375,
                    155.41708374023438,
                    344.7464599609375
                ],
                [
                    -455.57244873046875,
                    118.53590393066406,
                    200.12750244140625
                ],
                [
                    -459.18792724609375,
                    204.01385498046875,
                    105.303955078125
                ],
                [
                    -408.0091552734375,
                    213.31085205078125,
                    217.9686279296875
                ],
                [
                    -405.36962890625,
                    310.035888671875,
                    53.345947265625
                ],
                [
                    -341.20660400390625,
                    344.4063720703125,
                    159.10342407226562
                ],
                [
                    -311.44647216796875,
                    402.985595703125,
                    57.21136474609375
                ],
                [
                    -205.74221801757812,
                    451.27606201171875,
                    123.0938720703125
                ],
                [
                    -228.04400634765625,
                    397.807373046875,
                    227.390625
                ],
                [
                    -121.46188354492188,
                    451.27569580078125,
                    207.37490844726562
                ],
                [
                    -171.77293395996094,
                    338.56170654296875,
                    343.44549560546875
                ],
                [
                    -64.43893432617188,
                    315.2275390625,
                    397.32672119140625
                ],
                [
                    -69.25112915039062,
                    397.72735595703125,
                    313.45733642578125
                ],
                [
                    -107.73065185546875,
                    -207.11276245117188,
                    456.84637451171875
                ],
                [
                    -221.51754760742188,
                    -223.715576171875,
                    402.1158447265625
                ],
                [
                    -204.27426147460938,
                    -113.2359619140625,
                    455.93255615234375
                ],
                [
                    -57.373626708984375,
                    -312.406005859375,
                    402.03955078125
                ],
                [
                    -67.04934692382812,
                    -399.29058837890625,
                    312.5135498046875
                ],
                [
                    -155.41708374023438,
                    -341.9154052734375,
                    344.7464599609375
                ],
                [
                    -118.53590393066406,
                    -455.57244873046875,
                    200.12750244140625
                ],
                [
                    -204.01385498046875,
                    -459.18792724609375,
                    105.303955078125
                ],
                [
                    -213.31085205078125,
                    -408.0091552734375,
                    217.9686279296875
                ],
                [
                    -310.035888671875,
                    -405.36962890625,
                    53.345947265625
                ],
                [
                    -344.4063720703125,
                    -341.20660400390625,
                    159.10342407226562
                ],
                [
                    -402.985595703125,
                    -311.44647216796875,
                    57.21136474609375
                ],
                [
                    -451.27606201171875,
                    -205.74221801757812,
                    123.0938720703125
                ],
                [
                    -397.807373046875,
                    -228.04400634765625,
                    227.390625
                ],
                [
                    -451.27569580078125,
                    -121.46188354492188,
                    207.37490844726562
                ],
                [
                    -338.56170654296875,
                    -171.77293395996094,
                    343.44549560546875
                ],
                [
                    -315.2275390625,
                    -64.43893432617188,
                    397.32672119140625
                ],
                [
                    -397.72735595703125,
                    -69.25112915039062,
                    313.45733642578125
                ],
                [
                    207.11276245117188,
                    -107.73065185546875,
                    456.84637451171875
                ],
                [
                    223.715576171875,
                    -221.51754760742188,
                    402.1158447265625
                ],
                [
                    113.2359619140625,
                    -204.27426147460938,
                    455.93255615234375
                ],
                [
                    312.406005859375,
                    -57.373626708984375,
                    402.03955078125
                ],
                [
                    399.29058837890625,
                    -67.04934692382812,
                    312.5135498046875
                ],
                [
                    341.9154052734375,
                    -155.41708374023438,
                    344.7464599609375
                ],
                [
                    455.57244873046875,
                    -118.53590393066406,
                    200.12750244140625
                ],
                [
                    459.18792724609375,
                    -204.01385498046875,
                    105.303955078125
                ],
                [
                    408.0091552734375,
                    -213.31085205078125,
                    217.9686279296875
                ],
                [
                    405.36962890625,
                    -310.035888671875,
                    53.345947265625
                ],
                [
                    341.20660400390625,
                    -344.4063720703125,
                    159.10342407226562
                ],
                [
                    311.44647216796875,
                    -402.985595703125,
                    57.21136474609375
                ],
                [
                    205.74221801757812,
                    -451.27606201171875,
                    123.0938720703125
                ],
                [
                    228.04400634765625,
                    -397.807373046875,
                    227.390625
                ],
                [
                    121.46188354492188,
                    -451.27569580078125,
                    207.37490844726562
                ],
                [
                    171.77293395996094,
                    -338.56170654296875,
                    343.44549560546875
                ],
                [
                    64.43893432617188,
                    -315.2275390625,
                    397.32672119140625
                ],
                [
                    69.25112915039062,
                    -397.72735595703125,
                    313.45733642578125
                ],
                [
                    107.73065185546875,
                    207.11276245117188,
                    456.84637451171875
                ],
                [
                    221.51754760742188,
                    223.715576171875,
                    402.1158447265625
                ],
                [
                    204.27426147460938,
                    113.2359619140625,
                    455.93255615234375
                ],
                [
                    57.373626708984375,
                    312.406005859375,
                    402.03955078125
                ],
                [
                    67.04934692382812,
                    399.29058837890625,
                    312.5135498046875
                ],
                [
                    155.41708374023438,
                    341.9154052734375,
                    344.7464599609375
                ],
                [
                    118.53590393066406,
                    455.57244873046875,
                    200.12750244140625
                ],
                [
                    204.01385498046875,
                    459.18792724609375,
                    105.303955078125
                ],
                [
                    213.31085205078125,
                    408.0091552734375,
                    217.9686279296875
                ],
                [
                    310.035888671875,
                    405.36962890625,
                    53.345947265625
                ],
                [
                    344.4063720703125,
                    341.20660400390625,
                    159.10342407226562
                ],
                [
                    402.985595703125,
                    311.44647216796875,
                    57.21136474609375
                ],
                [
                    451.27606201171875,
                    205.74221801757812,
                    123.0938720703125
                ],
                [
                    397.807373046875,
                    228.04400634765625,
                    227.390625
                ],
                [
                    451.27569580078125,
                    121.46188354492188,
                    207.37490844726562
                ],
                [
                    338.56170654296875,
                    171.77293395996094,
                    343.44549560546875
                ],
                [
                    315.2275390625,
                    64.43893432617188,
                    397.32672119140625
                ],
                [
                    397.72735595703125,
                    69.25112915039062,
                    313.45733642578125
                ],
                [
                    207.11276245117188,
                    -107.73065185546875,
                    -456.84637451171875
                ],
                [
                    223.715576171875,
                    -221.51754760742188,
                    -402.1158447265625
                ],
                [
                    113.2359619140625,
                    -204.27426147460938,
                    -455.93255615234375
                ],
                [
                    312.406005859375,
                    -57.373626708984375,
                    -402.03955078125
                ],
                [
                    399.29058837890625,
                    -67.04934692382812,
                    -312.5135498046875
                ],
                [
                    341.9154052734375,
                    -155.41708374023438,
                    -344.7464599609375
                ],
                [
                    455.57244873046875,
                    -118.53590393066406,
                    -200.12750244140625
                ],
                [
                    459.18792724609375,
                    -204.01385498046875,
                    -105.303955078125
                ],
                [
                    408.0091552734375,
                    -213.31085205078125,
                    -217.9686279296875
                ],
                [
                    405.36962890625,
                    -310.035888671875,
                    -53.345947265625
                ],
                [
                    341.20660400390625,
                    -344.4063720703125,
                    -159.10342407226562
                ],
                [
                    311.44647216796875,
                    -402.985595703125,
                    -57.21136474609375
                ],
                [
                    205.74221801757812,
                    -451.27606201171875,
                    -123.0938720703125
                ],
                [
                    228.04400634765625,
                    -397.807373046875,
                    -227.390625
                ],
                [
                    121.46188354492188,
                    -451.27569580078125,
                    -207.37490844726562
                ],
                [
                    171.77293395996094,
                    -338.56170654296875,
                    -343.44549560546875
                ],
                [
                    64.43893432617188,
                    -315.2275390625,
                    -397.32672119140625
                ],
                [
                    69.25112915039062,
                    -397.72735595703125,
                    -313.45733642578125
                ],
                [
                    107.73065185546875,
                    207.11276245117188,
                    -456.84637451171875
                ],
                [
                    221.51754760742188,
                    223.715576171875,
                    -402.1158447265625
                ],
                [
                    204.27426147460938,
                    113.2359619140625,
                    -455.93255615234375
                ],
                [
                    57.373626708984375,
                    312.406005859375,
                    -402.03955078125
                ],
                [
                    67.04934692382812,
                    399.29058837890625,
                    -312.5135498046875
                ],
                [
                    155.41708374023438,
                    341.9154052734375,
                    -344.7464599609375
                ],
                [
                    118.53590393066406,
                    455.57244873046875,
                    -200.12750244140625
                ],
                [
                    204.01385498046875,
                    459.18792724609375,
                    -105.303955078125
                ],
                [
                    213.31085205078125,
                    408.0091552734375,
                    -217.9686279296875
                ],
                [
                    310.035888671875,
                    405.36962890625,
                    -53.345947265625
                ],
                [
                    344.4063720703125,
                    341.20660400390625,
                    -159.10342407226562
                ],
                [
                    402.985595703125,
                    311.44647216796875,
                    -57.21136474609375
                ],
                [
                    451.27606201171875,
                    205.74221801757812,
                    -123.0938720703125
                ],
                [
                    397.807373046875,
                    228.04400634765625,
                    -227.390625
                ],
                [
                    451.27569580078125,
                    121.46188354492188,
                    -207.37490844726562
                ],
                [
                    338.56170654296875,
                    171.77293395996094,
                    -343.44549560546875
                ],
                [
                    315.2275390625,
                    64.43893432617188,
                    -397.32672119140625
                ],
                [
                    397.72735595703125,
                    69.25112915039062,
                    -313.45733642578125
                ],
                [
                    -207.11276245117188,
                    107.73065185546875,
                    -456.84637451171875
                ],
                [
                    -223.715576171875,
                    221.51754760742188,
                    -402.1158447265625
                ],
                [
                    -113.2359619140625,
                    204.27426147460938,
                    -455.93255615234375
                ],
                [
                    -312.406005859375,
                    57.373626708984375,
                    -402.03955078125
                ],
                [
                    -399.29058837890625,
                    67.04934692382812,
                    -312.5135498046875
                ],
                [
                    -341.9154052734375,
                    155.41708374023438,
                    -344.7464599609375
                ],
                [
                    -455.57244873046875,
                    118.53590393066406,
                    -200.12750244140625
                ],
                [
                    -459.18792724609375,
                    204.01385498046875,
                    -105.303955078125
                ],
                [
                    -408.0091552734375,
                    213.31085205078125,
                    -217.9686279296875
                ],
                [
                    -405.36962890625,
                    310.035888671875,
                    -53.345947265625
                ],
                [
                    -341.20660400390625,
                    344.4063720703125,
                    -159.10342407226562
                ],
                [
                    -311.44647216796875,
                    402.985595703125,
                    -57.21136474609375
                ],
                [
                    -205.74221801757812,
                    451.27606201171875,
                    -123.0938720703125
                ],
                [
                    -228.04400634765625,
                    397.807373046875,
                    -227.390625
                ],
                [
                    -121.46188354492188,
                    451.27569580078125,
                    -207.37490844726562
                ],
                [
                    -171.77293395996094,
                    338.56170654296875,
                    -343.44549560546875
                ],
                [
                    -64.43893432617188,
                    315.2275390625,
                    -397.32672119140625
                ],
                [
                    -69.25112915039062,
                    397.72735595703125,
                    -313.45733642578125
                ],
                [
                    -107.73065185546875,
                    -207.11276245117188,
                    -456.84637451171875
                ],
                [
                    -221.51754760742188,
                    -223.715576171875,
                    -402.1158447265625
                ],
                [
                    -204.27426147460938,
                    -113.2359619140625,
                    -455.93255615234375
                ],
                [
                    -57.373626708984375,
                    -312.406005859375,
                    -402.03955078125
                ],
                [
                    -67.04934692382812,
                    -399.29058837890625,
                    -312.5135498046875
                ],
                [
                    -155.41708374023438,
                    -341.9154052734375,
                    -344.7464599609375
                ],
                [
                    -118.53590393066406,
                    -455.57244873046875,
                    -200.12750244140625
                ],
                [
                    -204.01385498046875,
                    -459.18792724609375,
                    -105.303955078125
                ],
                [
                    -213.31085205078125,
                    -408.0091552734375,
                    -217.9686279296875
                ],
                [
                    -310.035888671875,
                    -405.36962890625,
                    -53.345947265625
                ],
                [
                    -344.4063720703125,
                    -341.20660400390625,
                    -159.10342407226562
                ],
                [
                    -402.985595703125,
                    -311.44647216796875,
                    -57.21136474609375
                ],
                [
                    -451.27606201171875,
                    -205.74221801757812,
                    -123.0938720703125
                ],
                [
                    -397.807373046875,
                    -228.04400634765625,
                    -227.390625
                ],
                [
                    -451.27569580078125,
                    -121.46188354492188,
                    -207.37490844726562
                ],
                [
                    -338.56170654296875,
                    -171.77293395996094,
                    -343.44549560546875
                ],
                [
                    -315.2275390625,
                    -64.43893432617188,
                    -397.32672119140625
                ],
                [
                    -397.72735595703125,
                    -69.25112915039062,
                    -313.45733642578125
                ],
                [
                    62.154876708984375,
                    -497.498779296875,
                    -117.6334228515625
                ],
                [
                    -66.01539611816406,
                    -496.9830322265625,
                    -116.98844909667969
                ],
                [
                    119.47171783447266,
                    -499.129150390625,
                    -50.14801025390625
                ],
                [
                    127.13148498535156,
                    -497.1453857421875,
                    54.85974884033203
                ],
                [
                    51.17066955566406,
                    -498.2757568359375,
                    123.77226257324219
                ],
                [
                    -59.108489990234375,
                    -496.7857666015625,
                    125.12583923339844
                ],
                [
                    -117.96708679199219,
                    -497.73828125,
                    -60.327796936035156
                ],
                [
                    -117.72494506835938,
                    -500.0640869140625,
                    46.06305694580078
                ],
                [
                    497.498779296875,
                    62.154876708984375,
                    -117.6334228515625
                ],
                [
                    496.9830322265625,
                    -66.01539611816406,
                    -116.98844909667969
                ],
                [
                    499.129150390625,
                    119.47171783447266,
                    -50.14801025390625
                ],
                [
                    497.1453857421875,
                    127.13148498535156,
                    54.85974884033203
                ],
                [
                    498.2757568359375,
                    51.17066955566406,
                    123.77226257324219
                ],
                [
                    496.7857666015625,
                    -59.108489990234375,
                    125.12583923339844
                ],
                [
                    497.73828125,
                    -117.96708679199219,
                    -60.327796936035156
                ],
                [
                    500.0640869140625,
                    -117.72494506835938,
                    46.06305694580078
                ],
                [
                    -62.154876708984375,
                    497.498779296875,
                    -117.6334228515625
                ],
                [
                    66.01539611816406,
                    496.9830322265625,
                    -116.98844909667969
                ],
                [
                    -119.47171783447266,
                    499.129150390625,
                    -50.14801025390625
                ],
                [
                    -127.13148498535156,
                    497.1453857421875,
                    54.85974884033203
                ],
                [
                    -51.17066955566406,
                    498.2757568359375,
                    123.77226257324219
                ],
                [
                    59.108489990234375,
                    496.7857666015625,
                    125.12583923339844
                ],
                [
                    117.96708679199219,
                    497.73828125,
                    -60.327796936035156
                ],
                [
                    117.72494506835938,
                    500.0640869140625,
                    46.06305694580078
                ],
                [
                    -497.498779296875,
                    -62.154876708984375,
                    -117.6334228515625
                ],
                [
                    -496.9830322265625,
                    66.01539611816406,
                    -116.98844909667969
                ],
                [
                    -499.129150390625,
                    -119.47171783447266,
                    -50.14801025390625
                ],
                [
                    -497.1453857421875,
                    -127.13148498535156,
                    54.85974884033203
                ],
                [
                    -498.2757568359375,
                    -51.17066955566406,
                    123.77226257324219
                ],
                [
                    -496.7857666015625,
                    59.108489990234375,
                    125.12583923339844
                ],
                [
                    -497.73828125,
                    117.96708679199219,
                    -60.327796936035156
                ],
                [
                    -500.0640869140625,
                    117.72494506835938,
                    46.06305694580078
                ],
                [
                    -62.20769119262695,
                    -1.192962646484375,
                    515.9844970703125
                ],
                [
                    3.0656204223632812,
                    60.19154357910156,
                    515.9844970703125
                ],
                [
                    61.50227355957031,
                    -0.6021347045898438,
                    515.9844360351562
                ],
                [
                    -1.2796630859375,
                    -64.18585205078125,
                    515.8294067382812
                ],
                [
                    62.20769119262695,
                    1.192962646484375,
                    -515.9844970703125
                ],
                [
                    -3.0656204223632812,
                    -60.19154357910156,
                    -515.9844970703125
                ],
                [
                    -61.50227355957031,
                    0.6021347045898438,
                    -515.9844360351562
                ],
                [
                    1.2796630859375,
                    64.18585205078125,
                    -515.8294067382812
                ]
            ],
            "landing_zones": {
                "list": [
                    [
                        -182.60716247558594,
                        176.53518676757812,
                        438.47613525390625
                    ],
                    [
                        176.5382537841797,
                        171.67015075683594,
                        443.0938720703125
                    ],
                    [
                        178.72052001953125,
                        -181.597412109375,
                        437.9796142578125
                    ],
                    [
                        -186.564453125,
                        -181.00982666015625,
                        434.914794921875
                    ],
                    [
                        -185.997802734375,
                        179.66619873046875,
                        -435.721923828125
                    ],
                    [
                        181.01690673828125,
                        180.45916748046875,
                        -437.4903564453125
                    ],
                    [
                        186.35369873046875,
                        -179.21136474609375,
                        -435.7635498046875
                    ],
                    [
                        -175.34808349609375,
                        -181.16722106933594,
                        -439.585693359375
                    ]
                ],
                "rules": [
                    {
                        "min": 0,
                        "max": 32
                    },
                    {
                        "min": 0,
                        "max": 32
                    },
                    {
                        "min": 0,
                        "max": 32
                    },
                    {
                        "min": 0,
                        "max": 32
                    },
                    {
                        "min": 0,
                        "max": 32
                    },
                    {
                        "min": 0,
                        "max": 32
                    },
                    {
                        "min": 0,
                        "max": 32
                    },
                    {
                        "min": 0,
                        "max": 32
                    }
                ]
            }
        }
    ]
}