
local atlasenhanced = {
    object_type = "Atlas",
    key = "atlasenhanced",
    path = "atlasdeck.png",
    px = 71,
    py = 95
}

packs_to_add = {atlasenhanced}

local typed_decks = {
--	{'mod_prefix',	'Type',			'Name of Deck',				'Name of Object',		'Object Key',		'Shader Name',		'Atlas',			'posX',	'posY',	'Flavour Text'},
--	 eg. 'cry_' for	Edition,		Leave nil to construct								Usually matches		Leave nil to use	All three of these are used			Small subtext underneath
--   Cryptid cards	Enhancement,	automatically from									name				object key as name	for custom deck backs				main text
--	 Leave empty	Seal,           object name											Used instead for	Should be nil for	Leave nil to use default
--	 for vanilla	Sticker,															banned boss blind	non-shader objects	fallback
--   				Suit                                   								on Suit decks
--																						For stickers ONLY,
--																						prefix must be included
--																						if you use one
--		
	-- Vanilla	
	{'',			'Enhancement',	"The Hierophant's Deck",	'Bonus',				'bonus',			nil,				'atlasenhanced',	3,		3,		''},
	{'',			'Enhancement',	"The Empress' Deck",		'Mult',					'mult',				nil,				'atlasenhanced',	2,		3,		''},
	{'',			'Enhancement',	"The Lovers' Deck",			'Wild',					'wild',				nil,				'atlasenhanced',	5,		3,		''},
	{'',			'Enhancement',	"Deck of Justice",			'Glass',				'glass',			nil,				'atlasenhanced',	4,		3,		''},
	{'',			'Enhancement',	"The Chariot's Deck",		'Steel',				'steel',			nil,				nil,				6,		1,		''},
	{'',			'Enhancement',	"Stoner's Deck",			'Stone',				'stone',			nil,				nil,				5,		0,		''},
	{'',			'Enhancement',	"The Devil's Deck",			'Gold',					'gold',				nil,				nil,				6,		0,		''},
	{'',			'Enhancement',	"The Magician's Deck",		'Lucky',				'lucky',			nil,				nil,				4,		1,		''},
	
	{'',			'Edition',		"Deck of Chips",			'Foil',					'foil',				nil,				nil,				0,		2,		''},
	{'',			'Edition',		"Deck of Mult",				'Holographic',			'holo',				nil,				nil,				0,		0,		''},
	{'',			'Edition',		"Deck of XMult",			'Polychrome',			'polychrome',		nil,				nil,				5,		2,		''},
	{'',			'Edition',		nil,						'Negative',				'negative',			nil,				nil,				5,		2,		''},
	
	{'',			'Seal',			'Talisman Deck',			'Gold',					'Gold',				nil,				nil,				1,		2,		''},
	{'',			'Seal',			'Déja Vu Deck',				'Red',					'Red',				nil,				nil,				0,		0,		''},
	{'',			'Seal',			'Trance Deck',				'Blue',					'Blue',				nil,				"atlasenhanced",	2,		2,		''},
	{'',			'Seal',			'Medium Deck',				'Purple',				'Purple',			nil,				"atlasenhanced",	1,		2,		''},

	{'',			'Sticker',		nil,						'Eternal',				'eternal',			nil,				"atlasenhanced",	5,		2,		''},
	{'',			'Sticker',		nil,						'Perishable',			'perishable',		nil,				"atlasenhanced",	0,		3,		''},
	{'',			'Sticker',		nil,						'Rental',				'rental',			nil,				"atlasenhanced",	1,		3,		''},
	{'',			'Sticker',		nil,						'Pinned',				'pinned',			nil,				"atlasenhanced",	0,		5,		''},
	
	{'',			'Suit',			'Deck of the Stars',		'Diamonds',				'window',			nil,				"atlasenhanced",	2,		1,		''},
	{'',			'Suit',			'Deck of the Sun',			'Hearts',				'head',				nil,				"atlasenhanced",	3,		1,		''},
	{'',			'Suit',			'Deck of the World',		'Spades',				'goad',				nil,				"atlasenhanced",	4,		1,		''},
	{'',			'Suit',			'Deck of the Moon',			'Clubs',				'club',				nil,				"atlasenhanced",	5,		1,		''},
	
	-- Cryptid
	
	{'cry',			'Enhancement',	"The Eclipse's Deck",		'Echo',					'echo',				nil,				"atlasenhanced",	1,		5,		''},
	
	{'cry',			'Edition',		nil,						'Astral',				'astral',			nil,				nil,				5,		2,		''},
	{'cry',			'Edition',		nil,						'Blurred',				'blur',				nil,				nil,				0,		0,		''},
	{'cry',			'Edition',		nil,						'Mosaic',				'mosaic',			nil,				nil,				5,		2,		''},
	{'cry',			'Edition',		nil,						'Oversaturated',		'oversat',			nil,				nil,				5,		2,		''},
	{'cry',			'Edition',		nil,						'Glitched',				'glitched',			nil,				nil,				5,		2,		"Wait, isn't this just Misprint Deck?"},
	
	{'cry',			'Seal',			'Typhoon Deck',				'Azure',				'azure',			nil,				nil,				0,		2,		''},
	
	{'cry',			'Sticker',		nil,						'Banana',				'banana',			nil,				"atlasenhanced",	5,		4,		''},
	
}

if SMODS.Mods["jen"] then

	local jen_additions = {
		--	{'mod_prefix',	'Type',			'Name of Deck',				'Name of Object',		'Object Key',		'Shader Name',		'Atlas',			'posX',	'posY',	'Flavour Text'},
		--	 eg. 'cry_' for	Edition,		Leave nil to construct								Usually matches		Leave nil to use	All three of these are used			Small subtext underneath
		--   Cryptid cards	Enhancement,	automatically from									name				object key as name	for custom deck backs				main text
		--	 Leave empty	Seal,           object name											Used instead for	Should be nil for	Leave nil to use default
		--	 for vanilla	Sticker,															banned boss blind	non-shader objects	fallback
		--   				Suit                                   								on Suit decks

		{'jen',				'Edition',		nil,						'Prismatic',			'prismatic',		nil,				nil,				5,		2,		''},
		{'jen',				'Edition',		nil,						'Ionised', 				'ionized',			nil,				nil,				5,		2,		''},	-- ionised vs ionized, jen why
		{'jen',				'Edition',		nil,						'Misprint', 			'misprint',			nil,				nil,				5,		2,		'(No, not that one)'},
		{'jen',				'Edition',		nil,						'Wee', 					'wee',				nil,				nil,				5,		2,		''},	-- Works, but shader does nothing in pack menu
		{'jen',				'Edition',		nil,						'Blaze', 				'blaze',			nil,				nil,				5,		2,		''},
		{'jen',				'Edition',		nil,						'Wavy', 				'wavy',				nil,				nil,				5,		2,		''},
		{'jen',				'Edition',		nil,						'Encoded', 				'encoded',			nil,				nil,				5,		2,		''},
		{'jen',				'Edition',		nil,						'Diplopia', 			'diplopia',			nil,				nil,				5,		2,		''},	-- Works, but shader does nothing in pack menu
		{'jen',				'Edition',		nil,						'Sequin', 				'sequin',			nil,				nil,				5,		2,		''},
		{'jen',				'Edition',		nil,						'Laminated', 			'laminated',		nil,				nil,				5,		2,		''},
		{'jen',				'Edition',		nil,						'Crystal', 				'crystal',			'laminated',		nil,				5,		2,		''},
		{'jen',				'Edition',		nil,						'Sepia', 				'sepia',			nil,				nil,				5,		2,		''},
		{'jen',				'Edition',		nil,						'Ink', 					'ink',				nil,				nil,				5,		2,		''},
		{'jen',				'Edition',		nil,						'Polygloss', 			'polygloss',		nil,				nil,				5,		2,		''},
		{'jen',				'Edition',		nil,						'Gilded', 				'gilded',			nil,				nil,				5,		2,		''},
		{'jen',				'Edition',		nil,						'Chromatic', 			'chromatic',		nil,				nil,				5,		2,		''},
		{'jen',				'Edition',		nil,						'Watercoloured', 		'watered',			nil,				nil,				5,		2,		''},
		{'jen',				'Edition',		nil,						'Dithered', 			'dithered',			nil,				nil,				5,		2,		''},
		{'jen',				'Edition',		nil,						'Sharpened', 			'sharpened',		nil,				nil,				5,		2,		''},
		{'jen',				'Edition',		nil,						'Reversed', 			'reversed',			nil,				nil,				5,		2,		''},
		{'jen',				'Edition',		nil,						'Missing Textures',		'missingtexture',	nil,				nil,				5,		2,		'Alright, who forgot to install Counter-Strike: Source?'},
		{'jen',				'Edition',		nil,						'Bloodfoil', 			'bloodfoil',		nil,				nil,				5,		2,		''},
		{'jen',				'Edition',		nil,						'Blood', 				'blood',			'cosmic',			nil,				5,		2,		''},
		{'jen',				'Edition',		nil,						'Moire', 				'moire',			nil,				nil,				5,		2,		''},

		{'jen', 			'Enhancement',	nil,						'Astro',				'astro',			nil,				nil,				5,		2,		''},
--		{'jen', 			'Enhancement',	nil,						'Multichip',			'xchip',			nil,				nil,				5,		2,		''},	-- Crashes the game on hover
--		{'jen', 			'Enhancement',	nil,						'Powerchip',			'echip',			nil,				nil,				5,		2,		''},	-- Crashes the game on hover
--		{'jen', 			'Enhancement',	nil,						'Multimult',			'xmult',			nil,				nil,				5,		2,		''},	-- Crashes the game on hover
--		{'jen', 			'Enhancement',	nil,						'Powermult',			'emult',			nil,				nil,				5,		2,		''},	-- Crashes the game on hover
--		{'jen', 			'Enhancement',	nil,						'Supercharged',			'power',			nil,				nil,				5,		2,		''},	-- Crashes the game on hover
		{'jen', 			'Enhancement',	nil,						'Surreal',				'surreal',			nil,				nil,				5,		2,		'Wait, isn\'t this just Infinite Deck?'},
		{'jen', 			'Enhancement',	nil,						'Fortune',				'fortune',			nil,				nil,				5,		2,		''},
		{'jen', 			'Enhancement',	nil,						'Osmium',				'osmium',			nil,				nil,				5,		2,		''},
		{'jen', 			'Enhancement',	nil,						'Fizzy',				'fizzy',			nil,				nil,				5,		2,		''},
		{'jen', 			'Enhancement',	nil,						'Blue',					'blue',				nil,				nil,				5,		2,		''},
		{'jen', 			'Enhancement',	nil,						'Handy',				'handy',			nil,				nil,				5,		2,		''},
		{'jen', 			'Enhancement',	nil,						'Tossy',				'tossy',			nil,				nil,				5,		2,		''},

--		{'jen', 			'Enhancement',	nil,						'Canio\'s',				'canios',			nil,				nil,				5,		2,		''},	-- Not yet implemented
--		{'jen', 			'Enhancement',	nil,						'Triboulet\'s',			'triboulets',		nil,				nil,				5,		2,		''},	-- Not yet implemented
	}

	for i = 1, #jen_additions do
		typed_decks[#typed_decks + 1] = jen_additions[i]
	end
end


for i = 1, #typed_decks do
	local deck = typed_decks[i]
	
	local shader = nil
	if deck[6] then
		shader = deck[1] .. '_' .. deck[6]
	end
	
	local deck_name = deck[3]
	if not deck_name then
		deck_name = deck[4] .. ' Deck'
	end
	
	local deck_internal_name = ''
	if deck[1] == 'cry' then 	-- don't register eg. 'cry-cry-Typhoon Deck'
		deck_internal_name = 'cry-' .. deck_name
	else						-- eg. 'cry-jen-Blood Deck'
		deck_internal_name = 'cry-' .. deck[1] .. '-' .. deck_name
	end
	
	local deck_key = ''
	if deck[1] == 'cry' then
		deck_key = 'cry' .. deck[5] .. '_deck'
	else
		deck_key = 'cry' .. deck[1] .. '-' .. deck[5] .. '_deck'
	end
	
	local object_key = ''
	if deck[1] == '' then -- vanilla doesn't have a prefix, don't add the _
		object_key = deck[5]
	else
		object_key = deck[1] .. '_' .. deck[5]
	end

	if deck[2] == 'Edition' then
		local obj = {object_type = "Back",
			name = deck_internal_name,
			key = deck_key,
			config = {cry_force_edition = object_key, cry_force_edition_shader = shader},
			pos = {x = deck[8], y = deck[9]},
			loc_txt = {
				name = deck_name,
				text = {
					"All cards are {C:dark_edition,T:" .. object_key .. "}" .. deck[4] .. " Cards{}",
					"Cards cannot change editions",
					"{s:0.8,C:inactive}" .. deck[10]
				}
			},
		}
		if deck[7] then obj.atlas = deck[7] end
		packs_to_add[#packs_to_add + 1] = obj
		
	elseif deck[2] == 'Enhancement' then
		local obj = {object_type = "Back",
			name = deck_internal_name,
			key = deck_key,
			config = {cry_force_enhancement = "m_" .. object_key},
			pos = {x = deck[8], y = deck[9]},
			loc_txt = {
				name = deck_name,
				text = {
					"All {C:attention}playing cards{}",
					"are {C:attention,T:m_" .. object_key .. "}" .. deck[4] .. " Cards{}",
					"Cards cannot change enhancements",
					"{s:0.8,C:inactive}" .. deck[10]
				}
			},
			
		}
		if deck[7] ~= nil then obj.atlas = deck[7] end
		packs_to_add[#packs_to_add + 1] = obj
		
	elseif deck[2] == 'Seal' then

		if deck[1] ~= '' then -- add prefix only if non-vanilla seal because this is a distinction we have to make apparently
			object_key = "s_" .. object_key
		end
	
		local obj = {object_type = "Back",
			name = deck_internal_name,
			key = deck_key,
			config = {cry_force_seal = object_key},
			pos = {x = deck[8], y = deck[9]},
			loc_txt = {
				name = deck_name,
				text = {
					"All cards have a {C:dark_edition}" .. deck[4] .. " Seal{}",
					"Cards cannot change seals",
					"{s:0.8,C:inactive}" .. deck[10]
				}
			},
			
		}
		if deck[7] ~= nil then obj.atlas = deck[7] end
		packs_to_add[#packs_to_add + 1] = obj
		
	elseif deck[2] == 'Sticker' then
	
		local obj = {object_type = "Back",
			name = deck_internal_name,
			key = deck_key,
			config = {cry_force_sticker = deck[5]}, -- stickers DON'T use object_key for SOME reason
			pos = {x = deck[8], y = deck[9]},
			loc_txt = {
				name = deck_name,
				text = {
					"All cards are {C:attention}" .. deck[4] .. "{}",
					"{s:0.8,C:inactive}" .. deck[10]
				}
			},
		}
	
		if deck[7] ~= nil then obj.atlas = deck[7] end
		packs_to_add[#packs_to_add + 1] = obj
	
	elseif deck[2] == 'Suit' then

		local obj = {object_type = "Back",
			name = deck_internal_name,
			key = deck_key,
			config = {cry_force_suit = 'Clubs', cry_boss_blocked = {'bl_' .. deck[5]}},
			pos = {x = deck[8], y = deck[9]},
			loc_txt = {
				name = deck_name,
				text = {
					"All playing cards are {C:dark_edition}" .. deck[4] .. "{}",
					"and cannot change suits",
					"{C:attention}The " .. string.upper(string.sub(deck[5], 1, 1)) .. string.sub(deck[5], 2) .. "{} cannot appear", -- UGLY hack
					"{s:0.8,C:inactive}" .. deck[10]
				}
			},
		}

		if deck[7] ~= nil then obj.atlas = deck[7] end
		packs_to_add[#packs_to_add + 1] = obj
			
	end
end


return {name = "Enhanced Decks", 
        init = function()
            local Backapply_to_runRef = Back.apply_to_run
            function Back.apply_to_run(self)
                Backapply_to_runRef(self)
            
                if self.effect.config.cry_force_enhancement then
                    if self.effect.config.cry_force_enhancement ~= 'random' then G.GAME.modifiers.cry_force_enhancement = self.effect.config.cry_force_enhancement end
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            for c = #G.playing_cards, 1, -1 do
                                if self.effect.config.cry_force_enhancement == 'random' then
                                    local enh = {}
                                    for i = 1, #G.P_CENTER_POOLS.Enhanced do
                                        enh[#enh+1] = G.P_CENTER_POOLS.Enhanced[i]
                                    end
                                    enh[#enh+1] = "CCD"
                                    local random_enhancement = pseudorandom_element(enh, pseudoseed('cry_ant_enhancement'))
                                    if random_enhancement.key and G.P_CENTERS[random_enhancement.key] then
                                        G.playing_cards[c]:set_ability(G.P_CENTERS[random_enhancement.key]);
                                    else
                                        G.playing_cards[c]:set_ability(G.P_CENTERS[pseudorandom_element(G.P_CENTER_POOLS.Consumeables, pseudoseed('cry_ant_ccd')).key], true, nil)
                                    end
                                else
                                    G.playing_cards[c]:set_ability(G.P_CENTERS[self.effect.config.cry_force_enhancement]);
                                end
                            end
            
                            return true
                        end
                    }))
                end
                if self.effect.config.cry_force_edition then
                    if self.effect.config.cry_force_edition ~= 'random' then G.GAME.modifiers.cry_force_edition = self.effect.config.cry_force_edition else G.GAME.modifiers.cry_force_random_edition = true end
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            for c = #G.playing_cards, 1, -1 do
                                local ed_table = {}
                                if self.effect.config.cry_force_edition == 'random' then
                                    local random_edition = pseudorandom_element(G.P_CENTER_POOLS.Edition, pseudoseed('cry_ant_edition'))
                                    while (random_edition.key == "e_base") do
                                        random_edition = pseudorandom_element(G.P_CENTER_POOLS.Edition, pseudoseed('cry_ant_edition'))
                                    end
                                    ed_table[random_edition.key:sub(3)] = true
                                    G.playing_cards[c]:set_edition(ed_table, true, true);
                                else
                                    ed_table[self.effect.config.cry_force_edition] = true
                                    G.playing_cards[c]:set_edition(ed_table, true, true);
                                end
                            end
            
                            return true
                        end
                    }))
                end
                if self.effect.config.cry_force_seal then
                    if self.effect.config.cry_force_seal ~= 'random' then G.GAME.modifiers.cry_force_seal = self.effect.config.cry_force_seal end
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            for c = #G.playing_cards, 1, -1 do
                                if self.effect.config.cry_force_seal == 'random' then
                                    local random_seal = pseudorandom_element(G.P_CENTER_POOLS.Seal, pseudoseed('cry_ant_seal'))
                                    G.playing_cards[c]:set_seal(random_seal.key, true);
                                else
                                    G.playing_cards[c]:set_seal(self.effect.config.cry_force_seal, true);
                                end
                            end
                            return true
                        end
                    }))
                end
                if self.effect.config.cry_force_sticker then
                    G.GAME.modifiers.cry_force_sticker = self.effect.config.cry_force_sticker
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            for c = #G.playing_cards, 1, -1 do
                                G.playing_cards[c].config.center.eternal_compat = true
                                G.playing_cards[c].config.center.perishable_compat = true
                                G.playing_cards[c]["set_"..self.effect.config.cry_force_sticker](G.playing_cards[c],true);
                            end
                            return true
                        end
                    }))
                end
                if self.effect.config.cry_force_suit then
                    G.GAME.modifiers.cry_force_suit = self.effect.config.cry_force_suit
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            for c = #G.playing_cards, 1, -1 do
                                G.playing_cards[c]:change_suit(self.effect.config.cry_force_suit)
                            end
                            return true
                        end
                    }))
                end
                if self.effect.config.cry_boss_blocked then
                    for _, v in pairs(self.effect.config.cry_boss_blocked) do
                        G.GAME.bosses_used[v] = 1e308
                    end
                end
            end
            local sa = Card.set_ability
            function Card:set_ability(center, y, z)
                if center.set == "Enhanced" then
                    return sa(self, G.GAME.modifiers.cry_force_enhancement and G.P_CENTERS[G.GAME.modifiers.cry_force_enhancement] or center, y, z)
                else
                    return sa(self, center, y, z)
                end
            end
            local se = Card.set_edition
            function Card:set_edition(edition, y, z)
                return se(self, G.GAME.modifiers.cry_force_edition and {[G.GAME.modifiers.cry_force_edition]=true} or edition, y, z)
            end
            local ss = Card.set_seal
            function Card:set_seal(seal, y, z)
                return ss(self, G.GAME.modifiers.cry_force_seal or seal, y, z)
            end
            local cs = Card.change_suit
            function Card:change_suit(new_suit)
                return cs(self, G.GAME.modifiers.cry_force_suit or new_suit)
            end
        end,
        items = packs_to_add}
