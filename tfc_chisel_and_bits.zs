recipes.addShapeless(
    "tfc_chisel_convert",
    <chiselsandbits:chisel_iron>,
    [<ore:chisel>]
);
recipes.addShaped(
    "tfc_bit_bag",
    <chiselsandbits:bit_bag>,
    [
        [<tfc:crop/product/burlap_cloth>, <tfc:crop/product/burlap_cloth>, <tfc:crop/product/burlap_cloth>],
        [<tfc:crop/product/burlap_cloth>, <chiselsandbits:block_bit:*>, <tfc:crop/product/burlap_cloth>],
        [<tfc:crop/product/burlap_cloth>, <tfc:crop/product/burlap_cloth>, <tfc:crop/product/burlap_cloth>]
    ]
);
recipes.addShapeless(
    "tfc_bit_bag_blue",
    <chiselsandbits:bit_bag>,
    [<chiselsandbits:bit_bag:*>, <ore:dyeBlue>]
);
