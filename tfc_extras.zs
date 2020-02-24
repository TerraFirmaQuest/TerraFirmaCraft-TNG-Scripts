import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Heating;

// tfc specific crafttweaker functions https://github.com/TerraFirmaCraft/TerraFirmaCraft/wiki/CraftTweaker-scripts

// Added "quick" arrow recipe that creates one arrow when crafting arrows from stone
recipes.addShaped(
    "tfc_stone_arrow",
    <minecraft:arrow>,
    [
        [null, <ore:rock>, null],
        [null, <ore:stickWood>, null],
        [null, <ore:feather>, null]
    ]
);
