recipes.addShaped(
    "tfc_sleepingbag",
    <comforts:sleeping_bag>,
    [
        [<ore:clothHighQuality>, <ore:clothHighQuality>, <ore:clothHighQuality>],
    ]
);

recipes.addShaped(
    "tfc_hammock",
    <comforts:hammock>,
    [
        [<ore:stickWood>, <ore:string>, <ore:stickWood>],
        [<ore:stickWood>, <ore:clothHighQuality>, <ore:stickWood>],
        [<ore:stickWood>, <ore:string>, <ore:stickWood>]
    ]
);
var blue_dye = <ore:dyeBlue>;
recipes.addShapeless(
    "tfc_blue_hammock",
    <comforts:hammock:11>,
    [<comforts:hammock:*>, blue_dye]
);
recipes.addShapeless(
    "tfc_blue_sleepingbag",
    <comforts:sleeping_bag:11>,
    [<comforts:sleeping_bag:*>, <ore:gemLapis>]
);
