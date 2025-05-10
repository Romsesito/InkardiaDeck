--- STEAMODDED HEADER
--- MOD_NAME: Inkardia Deck
--- PREFIX: Inkardia_Deck
--- MOD_ID: Inkardia_Deck
--- MOD_AUTHOR: [Romsesito]
--- MOD_DESCRIPTION: This is a custom card deck for Balatro, inspired by the Inkardia community.

----------------------------------------------
------------MOD CODE -------------------------

local mod_prefix = "Inkardia_Deck" 
local atlas_base_name = "cards" 
local atlas_key = mod_prefix .. "_" .. atlas_base_name 


local atlas_path = 'InkardiaCards_lc.png' 
local atlas_path_hc = 'InkardiaCards_hc.png' 

local suits = {'hearts', 'clubs', 'diamonds', 'spades'} 
local ranks = {'Jack', 'Queen', "King"} 

local descriptions = {'Inkardia', 'Inkardia', 'Inkardia', 'Inkardia'} 



SMODS.Atlas{  
    key = atlas_key..'_lc',
    px = 71,
    py = 95,
    path = atlas_path,
    prefix_config = {key = false}, 
}

if atlas_path_hc then
    SMODS.Atlas{  
        key = atlas_key..'_hc',
        px = 71,
        py = 95,
        path = atlas_path_hc,
        prefix_config = {key = false}, 
    }
end

for i, suit in ipairs(suits) do
    SMODS.DeckSkin{
        key = suit.."_skin",
        suit = suit:gsub("^%l", string.upper),
        ranks = ranks,
        lc_atlas = atlas_key..'_lc',
        hc_atlas = (atlas_path_hc and atlas_key..'_hc') or atlas_key..'_lc',
        loc_txt = {
            ['en-us'] = descriptions[i]
        },
        posStyle = 'deck'
    }
end



----------------------------------------------
------------MOD CODE END----------------------
