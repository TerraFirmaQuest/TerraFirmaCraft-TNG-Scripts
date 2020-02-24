import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// name and ore dict tweaks
<ore:gemLapis>.remove(<minecraft:dye:4>);
<minecraft:dye:4>.displayName = "Blue Dye";

// all dyes
var all = <minecraft:dye:*>;
var white = <minecraft:dye:15>;
var orange = <minecraft:dye:14>;
var magenta = <minecraft:dye:13>;
var light_blue = <minecraft:dye:12>;
var yellow = <minecraft:dye:11>;
var lime = <minecraft:dye:10>;
var pink = <minecraft:dye:9>;
var grey = <minecraft:dye:8>;
var light_grey = <minecraft:dye:7>;
var cyan = <minecraft:dye:6>;
var purple = <minecraft:dye:5>;
var blue = <minecraft:dye:4>;
var brown = <minecraft:dye:3>;
var green = <minecraft:dye:2>;
var red = <minecraft:dye:1>;
var black = <minecraft:dye>;

// tfc colour dusts
var white_powder = <tfc:powder/flux>;
var red_powder = <tfc:powder/hematite>;
var blue_powder = <tfc:powder/lapis_lazuli>;
var yellow_powder = <tfc:powder/limonite>;
var green_powder = <tfc:powder/malachite>;

// other items
var sand = <ore:sand>;

// remove unwanted recipes
recipes.remove(magenta);
recipes.remove(light_blue);
recipes.remove(yellow);
recipes.remove(blue);
furnace.remove(green);
recipes.remove(green);
recipes.remove(red);


// ---- Recipes ----
// white
recipes.addShapeless(
    "tfc_white_dye_0",
    white,
    [
        sand,
        white_powder,
        white_powder
    ]
);

// orange
recipes.addShapeless(
    "tfc_orange_dye_0",
    orange,
    [
        sand,
        red_powder,
        yellow_powder
    ]
);

// magenta
recipes.addShapeless(
    "tfc_magenta_dye_0",
    magenta,
    [
        sand,
        red_powder,
        red_powder,
        blue_powder
    ]
);
recipes.addShapeless(
    "tfc_magenta_dye_1",
    magenta*3,
    [
        red,
        red,
        blue
    ]
);

// light_blue
recipes.addShapeless(
    "tfc_light_blue_dye_0",
    light_blue,
    [
        sand,
        white_powder,
        blue_powder
    ]
);
recipes.addShapeless(
    "tfc_light_blue_dye_1",
    light_blue*2,
    [
        white,
        blue
    ]
);

// yellow
recipes.addShapeless(
    "tfc_yellow_dye_0",
    yellow,
    [
        sand,
        yellow_powder,
        yellow_powder
    ]
);

// lime
recipes.addShapeless(
    "tfc_lime_dye_0",
    lime,
    [
        sand,
        green_powder,
        white_powder
    ]
);
recipes.addShapeless(
    "tfc_lime_dye_1",
    lime,
    [
        sand,
        red_powder,
        yellow_powder,
        white_powder
    ]
);
recipes.addShapeless(
    "tfc_lime_dye_4",
    lime*3,
    [
        blue,
        yellow,
        white,
    ]
);

// pink
recipes.addShapeless(
    "tfc_pink_dye_0",
    pink,
    [
        sand,
        red_powder,
        white_powder
    ]
);
recipes.addShapeless(
    "tfc_pink_dye_1",
    pink*2,
    [
        red,
        white
    ]
);

// grey
recipes.addShapeless(
    "tfc_grey_dye_0",
    grey*2,
    [
        black,
        white
    ]
);

// light_grey
recipes.addShapeless(
    "tfc_light_grey_dye_0",
    light_grey*2,
    [
        grey,
        white
    ]
);
recipes.addShapeless(
    "tfc_light_grey_dye_1",
    light_grey*3,
    [
        black,
        white,
        white
    ]
);

// cyan
recipes.addShapeless(
    "tfc_cyan_dye_0",
    cyan,
    [
        sand,
        green_powder,
        blue_powder
    ]
);
recipes.addShapeless(
    "tfc_cyan_dye_1",
    cyan,
    [
        sand,
        blue_powder,
        blue_powder,
        yellow_powder,
    ]
);
recipes.addShapeless(
    "tfc_cyan_dye_2",
    cyan*2,
    [
        green,
        blue
    ]
);
recipes.addShapeless(
    "tfc_cyan_dye_3",
    cyan*3,
    [
        blue,
        blue,
        yellow
    ]
);

// purple
recipes.addShapeless(
    "tfc_purple_dye_0",
    purple,
    [
        sand,
        red_powder,
        blue_powder
    ]
);

// blue
recipes.addShapeless(
    "tfc_blue_dye_0",
    blue,
    [
        sand,
        blue_powder,
        blue_powder
    ]
);

// brown
recipes.addShapeless(
    "tfc_brown_dye_0",
    brown,
    [
        sand,
        red_powder,
        green_powder,
        green_powder
    ]
);
recipes.addShapeless(
    "tfc_brown_dye_1",
    brown,
    [
        sand,
        red_powder,
        blue_powder,
        blue_powder,
        yellow_powder,
        yellow_powder
    ]
);
recipes.addShapeless(
    "tfc_brown_dye_2",
    brown*3,
    [
        red,
        green,
        green,
    ]
);
recipes.addShapeless(
    "tfc_brown_dye_3",
    brown*5,
    [
        red,
        blue,
        blue,
        yellow,
        yellow
    ]
);

// green
recipes.addShapeless(
    "tfc_green_dye_0",
    green,
    [
        sand,
        green_powder,
        green_powder
    ]
);
recipes.addShapeless(
    "tfc_green_dye_1",
    green,
    [
        sand,
        blue_powder,
        yellow_powder
    ]
);
recipes.addShapeless(
    "tfc_green_dye_2",
    green*2,
    [
        blue,
        yellow,
    ]
);

// red
recipes.addShapeless(
    "tfc_red_dye_0",
    red,
    [
        sand,
        red_powder,
        red_powder
    ]
);

// black
recipes.addShapeless(
    "tfc_black_dye_0",
    black,
    [
        sand,
        blue_powder,
        red_powder,
        yellow_powder
    ]
);
recipes.addShapeless(
    "tfc_black_dye_1",
    black*3,
    [
        blue,
        red,
        yellow
    ]
);
