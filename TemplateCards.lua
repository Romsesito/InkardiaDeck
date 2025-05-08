--- STEAMODDED HEADER
--- MOD_NAME: Inkardia Deck
--- MOD_ID: Inkardia_Deck
--- MOD_AUTHOR: [Romsesito]
--- MOD_DESCRIPTION: This is a custom card deck for Balatro, inspired by the Inkardia community.

----------------------------------------------
------------MOD CODE -------------------------

function SMODS.INIT.DecColors()

    local dec_mod = SMODS.findModByID("Inkardia_Deck")
    local sprite_card = SMODS.Sprite:new("cards_1", dec_mod.path, "TemplateCards.png", 71, 95, "asset_atli")
    
    sprite_card:register()
end

----------------------------------------------
------------MOD CODE END----------------------
