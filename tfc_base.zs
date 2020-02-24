import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Heating;


// ---- Add terracota (hardened clay) recipe ----
// Resize clay block so only one can be fired at a time
ItemRegistry.registerItemSize(<minecraft:clay>, 'HUGE', 'MEDIUM');
ItemRegistry.registerItemSize(<minecraft:hardened_clay>, 'HUGE', 'MEDIUM');

// Remove vanilla recipes
recipes.remove(<minecraft:clay>);
furnace.remove(<minecraft:hardened_clay>);

// Add new clay block recipes
recipes.addShaped(
    'tfc_clay_block',
    <minecraft:clay>,
    [
        [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
        [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
        [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]
    ]
);

// Add heat capacity to clay block
ItemRegistry.registerItemHeat(
    <minecraft:clay>,
    0.2,
    2000,
    false
);
ItemRegistry.registerItemHeat(
    <minecraft:hardened_clay>,
    0.2,
    2000,
    false
);

// Add heat recipe for clay block -> terracotta
Heating.addRecipe(
    'tfc_terracotta',
    <minecraft:clay>,
    <minecraft:hardened_clay>,
    1500,
    2000
);


// Add missing black terracotta recipe
recipes.addShaped(
    "tfc_black_terracotta",
    <minecraft:stained_hardened_clay:15>,
    [
        [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>],
        [<minecraft:hardened_clay>, <ore:dyeBlack>, <minecraft:hardened_clay>],
        [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]
    ]
);

// add missing blue terracotta recipe
recipes.addShaped(
    "tfc_blue_terracotta",
    <minecraft:stained_hardened_clay:11>,
    [
        [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>],
        [<minecraft:hardened_clay>, <ore:dyeBlue>, <minecraft:hardened_clay>],
        [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]
    ]
);

// Add heating recipes for glazed terracotta

var terracotta_dict = {
    'white': {
        'unglazed': <minecraft:stained_hardened_clay>,
        'glazed': <minecraft:white_glazed_terracotta>,
    } as IItemStack[string],
    'orange': {
        'unglazed': <minecraft:stained_hardened_clay:1>,
        'glazed': <minecraft:orange_glazed_terracotta>,
    } as IItemStack[string],
    'magenta': {
        'unglazed': <minecraft:stained_hardened_clay:2>,
        'glazed': <minecraft:magenta_glazed_terracotta>,
    } as IItemStack[string],
    'light_blue': {
        'unglazed': <minecraft:stained_hardened_clay:3>,
        'glazed': <minecraft:light_blue_glazed_terracotta>,
    } as IItemStack[string],
    'yellow': {
        'unglazed': <minecraft:stained_hardened_clay:4>,
        'glazed': <minecraft:yellow_glazed_terracotta>,
    } as IItemStack[string],
    'lime': {
        'unglazed': <minecraft:stained_hardened_clay:5>,
        'glazed': <minecraft:lime_glazed_terracotta>,
    } as IItemStack[string],
    'pink': {
        'unglazed': <minecraft:stained_hardened_clay:6>,
        'glazed': <minecraft:pink_glazed_terracotta>,
    } as IItemStack[string],
    'grey': {
        'unglazed': <minecraft:stained_hardened_clay:7>,
        'glazed': <minecraft:gray_glazed_terracotta>,
    } as IItemStack[string],
    'light_grey': {
        'unglazed': <minecraft:stained_hardened_clay:8>,
        'glazed': <minecraft:silver_glazed_terracotta>,
    } as IItemStack[string],
    'cyan': {
        'unglazed': <minecraft:stained_hardened_clay:9>,
        'glazed': <minecraft:cyan_glazed_terracotta>,
    } as IItemStack[string],
    'purple': {
        'unglazed': <minecraft:stained_hardened_clay:10>,
        'glazed': <minecraft:purple_glazed_terracotta>,
    } as IItemStack[string],
    'blue': {
        'unglazed': <minecraft:stained_hardened_clay:11>,
        'glazed': <minecraft:blue_glazed_terracotta>,
    } as IItemStack[string],
    'brown': {
        'unglazed': <minecraft:stained_hardened_clay:12>,
        'glazed': <minecraft:brown_glazed_terracotta>,
    } as IItemStack[string],
    'green': {
        'unglazed': <minecraft:stained_hardened_clay:13>,
        'glazed': <minecraft:green_glazed_terracotta>,
    } as IItemStack[string],
    'red': {
        'unglazed': <minecraft:stained_hardened_clay:14>,
        'glazed': <minecraft:red_glazed_terracotta>,
    } as IItemStack[string],
    'black': {
        'unglazed': <minecraft:stained_hardened_clay:15>,
        'glazed': <minecraft:black_glazed_terracotta>,
    } as IItemStack[string],
} as IItemStack[string][string];


// add heat capacity
for key, item in terracotta_dict {
    furnace.remove(item['glazed']);
    ItemRegistry.registerItemHeat(
        item['unglazed'],
        0.2,
        2000,
        false
    );
    ItemRegistry.registerItemHeat(
        item['glazed'],
        0.2,
        2000,
        false
    );
}

// // add heating recipe
terracotta_dict = {
    'white': {
        'unglazed': <minecraft:stained_hardened_clay>,
        'glazed': <minecraft:white_glazed_terracotta>,
    } as IItemStack[string],
    'orange': {
        'unglazed': <minecraft:stained_hardened_clay:1>,
        'glazed': <minecraft:orange_glazed_terracotta>,
    } as IItemStack[string],
    'magenta': {
        'unglazed': <minecraft:stained_hardened_clay:2>,
        'glazed': <minecraft:magenta_glazed_terracotta>,
    } as IItemStack[string],
    'light_blue': {
        'unglazed': <minecraft:stained_hardened_clay:3>,
        'glazed': <minecraft:light_blue_glazed_terracotta>,
    } as IItemStack[string],
    'yellow': {
        'unglazed': <minecraft:stained_hardened_clay:4>,
        'glazed': <minecraft:yellow_glazed_terracotta>,
    } as IItemStack[string],
    'lime': {
        'unglazed': <minecraft:stained_hardened_clay:5>,
        'glazed': <minecraft:lime_glazed_terracotta>,
    } as IItemStack[string],
    'pink': {
        'unglazed': <minecraft:stained_hardened_clay:6>,
        'glazed': <minecraft:pink_glazed_terracotta>,
    } as IItemStack[string],
    'grey': {
        'unglazed': <minecraft:stained_hardened_clay:7>,
        'glazed': <minecraft:gray_glazed_terracotta>,
    } as IItemStack[string],
    'light_grey': {
        'unglazed': <minecraft:stained_hardened_clay:8>,
        'glazed': <minecraft:silver_glazed_terracotta>,
    } as IItemStack[string],
    'cyan': {
        'unglazed': <minecraft:stained_hardened_clay:9>,
        'glazed': <minecraft:cyan_glazed_terracotta>,
    } as IItemStack[string],
    'purple': {
        'unglazed': <minecraft:stained_hardened_clay:10>,
        'glazed': <minecraft:purple_glazed_terracotta>,
    } as IItemStack[string],
    'blue': {
        'unglazed': <minecraft:stained_hardened_clay:11>,
        'glazed': <minecraft:blue_glazed_terracotta>,
    } as IItemStack[string],
    'brown': {
        'unglazed': <minecraft:stained_hardened_clay:12>,
        'glazed': <minecraft:brown_glazed_terracotta>,
    } as IItemStack[string],
    'green': {
        'unglazed': <minecraft:stained_hardened_clay:13>,
        'glazed': <minecraft:green_glazed_terracotta>,
    } as IItemStack[string],
    'red': {
        'unglazed': <minecraft:stained_hardened_clay:14>,
        'glazed': <minecraft:red_glazed_terracotta>,
    } as IItemStack[string],
    'black': {
        'unglazed': <minecraft:stained_hardened_clay:15>,
        'glazed': <minecraft:black_glazed_terracotta>,
    } as IItemStack[string],
} as IItemStack[string][string];

for key, item in terracotta_dict {
    Heating.addRecipe(
        'tfc_glazed_terracotta_' + key,
        item['unglazed'],
        item['glazed'],
        1100,
        2000
    );
}
