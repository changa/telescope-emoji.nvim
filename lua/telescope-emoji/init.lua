local M = {}

local emojis = {
  {
    name = "artist_palette",
    value = "🎨",
    description = "artist palette",
    category = "Activities / arts & crafts"
  },
  {
    name = "framed_picture",
    value = "🖼️",
    description = "framed picture",
    category = "Activities / arts & crafts"
  },
  {
    name = "knot",
    value = "🪢",
    description = "knot",
    category = "Activities / arts & crafts"
  },
  {
    name = "performing_arts",
    value = "🎭",
    description = "performing arts",
    category = "Activities / arts & crafts"
  },
  {
    name = "sewing_needle",
    value = "🪡",
    description = "sewing needle",
    category = "Activities / arts & crafts"
  },
  {
    name = "thread",
    value = "🧵",
    description = "thread",
    category = "Activities / arts & crafts"
  },
  {
    name = "yarn",
    value = "🧶",
    description = "yarn",
    category = "Activities / arts & crafts"
  },
  {
    name = "1st_place_medal",
    value = "🥇",
    description = "1st place medal",
    category = "Activities / award-medal"
  },
  {
    name = "2nd_place_medal",
    value = "🥈",
    description = "2nd place medal",
    category = "Activities / award-medal"
  },
  {
    name = "3rd_place_medal",
    value = "🥉",
    description = "3rd place medal",
    category = "Activities / award-medal"
  },
  {
    name = "military_medal",
    value = "🎖️",
    description = "military medal",
    category = "Activities / award-medal"
  },
  {
    name = "sports_medal",
    value = "🏅",
    description = "sports medal",
    category = "Activities / award-medal"
  },
  {
    name = "trophy",
    value = "🏆",
    description = "trophy",
    category = "Activities / award-medal"
  },
  {
    name = "admission_tickets",
    value = "🎟️",
    description = "admission tickets",
    category = "Activities / event"
  },
  {
    name = "balloon",
    value = "🎈",
    description = "balloon",
    category = "Activities / event"
  },
  {
    name = "carp_streamer",
    value = "🎏",
    description = "carp streamer",
    category = "Activities / event"
  },
  {
    name = "christmas_tree",
    value = "🎄",
    description = "Christmas tree",
    category = "Activities / event"
  },
  {
    name = "confetti_ball",
    value = "🎊",
    description = "confetti ball",
    category = "Activities / event"
  },
  {
    name = "firecracker",
    value = "🧨",
    description = "firecracker",
    category = "Activities / event"
  },
  {
    name = "fireworks",
    value = "🎆",
    description = "fireworks",
    category = "Activities / event"
  },
  {
    name = "jack_o_lantern",
    value = "🎃",
    description = "jack-o-lantern",
    category = "Activities / event"
  },
  {
    name = "japanese_dolls",
    value = "🎎",
    description = "Japanese dolls",
    category = "Activities / event"
  },
  {
    name = "moon_viewing_ceremony",
    value = "🎑",
    description = "moon viewing ceremony",
    category = "Activities / event"
  },
  {
    name = "party_popper",
    value = "🎉",
    description = "party popper",
    category = "Activities / event"
  },
  {
    name = "pine_decoration",
    value = "🎍",
    description = "pine decoration",
    category = "Activities / event"
  },
  {
    name = "red_envelope",
    value = "🧧",
    description = "red envelope",
    category = "Activities / event"
  },
  {
    name = "reminder_ribbon",
    value = "🎗️",
    description = "reminder ribbon",
    category = "Activities / event"
  },
  {
    name = "ribbon",
    value = "🎀",
    description = "ribbon",
    category = "Activities / event"
  },
  {
    name = "sparkler",
    value = "🎇",
    description = "sparkler",
    category = "Activities / event"
  },
  {
    name = "sparkles",
    value = "✨",
    description = "sparkles",
    category = "Activities / event"
  },
  {
    name = "tanabata_tree",
    value = "🎋",
    description = "tanabata tree",
    category = "Activities / event"
  },
  {
    name = "ticket",
    value = "🎫",
    description = "ticket",
    category = "Activities / event"
  },
  {
    name = "wind_chime",
    value = "🎐",
    description = "wind chime",
    category = "Activities / event"
  },
  {
    name = "wrapped_gift",
    value = "🎁",
    description = "wrapped gift",
    category = "Activities / event"
  },
  {
    name = "bullseye",
    value = "🎯",
    description = "bullseye",
    category = "Activities / game"
  },
  {
    name = "chess_pawn",
    value = "♟️",
    description = "chess pawn",
    category = "Activities / game"
  },
  {
    name = "club_suit",
    value = "♣️",
    description = "club suit",
    category = "Activities / game"
  },
  {
    name = "crystal_ball",
    value = "🔮",
    description = "crystal ball",
    category = "Activities / game"
  },
  {
    name = "diamond_suit",
    value = "♦️",
    description = "diamond suit",
    category = "Activities / game"
  },
  {
    name = "flower_playing_cards",
    value = "🎴",
    description = "flower playing cards",
    category = "Activities / game"
  },
  {
    name = "game_die",
    value = "🎲",
    description = "game die",
    category = "Activities / game"
  },
  {
    name = "heart_suit",
    value = "♥️",
    description = "heart suit",
    category = "Activities / game"
  },
  {
    name = "joker",
    value = "🃏",
    description = "joker",
    category = "Activities / game"
  },
  {
    name = "joystick",
    value = "🕹️",
    description = "joystick",
    category = "Activities / game"
  },
  {
    name = "kite",
    value = "🪁",
    description = "kite",
    category = "Activities / game"
  },
  {
    name = "magic_wand",
    value = "🪄",
    description = "magic wand",
    category = "Activities / game"
  },
  {
    name = "mahjong_red_dragon",
    value = "🀄",
    description = "mahjong red dragon",
    category = "Activities / game"
  },
  {
    name = "mirror_ball",
    value = "🪩",
    description = "mirror ball",
    category = "Activities / game"
  },
  {
    name = "nesting_dolls",
    value = "🪆",
    description = "nesting dolls",
    category = "Activities / game"
  },
  {
    name = "pi_ata",
    value = "🪅",
    description = "piñata",
    category = "Activities / game"
  },
  {
    name = "pool_8_ball",
    value = "🎱",
    description = "pool 8 ball",
    category = "Activities / game"
  },
  {
    name = "puzzle_piece",
    value = "🧩",
    description = "puzzle piece",
    category = "Activities / game"
  },
  {
    name = "slot_machine",
    value = "🎰",
    description = "slot machine",
    category = "Activities / game"
  },
  {
    name = "spade_suit",
    value = "♠️",
    description = "spade suit",
    category = "Activities / game"
  },
  {
    name = "teddy_bear",
    value = "🧸",
    description = "teddy bear",
    category = "Activities / game"
  },
  {
    name = "video_game",
    value = "🎮",
    description = "video game",
    category = "Activities / game"
  },
  {
    name = "water_pistol",
    value = "🔫",
    description = "water pistol",
    category = "Activities / game"
  },
  {
    name = "yo_yo",
    value = "🪀",
    description = "yo-yo",
    category = "Activities / game"
  },
  {
    name = "american_football",
    value = "🏈",
    description = "american football",
    category = "Activities / sport"
  },
  {
    name = "badminton",
    value = "🏸",
    description = "badminton",
    category = "Activities / sport"
  },
  {
    name = "baseball",
    value = "⚾",
    description = "baseball",
    category = "Activities / sport"
  },
  {
    name = "basketball",
    value = "🏀",
    description = "basketball",
    category = "Activities / sport"
  },
  {
    name = "bowling",
    value = "🎳",
    description = "bowling",
    category = "Activities / sport"
  },
  {
    name = "boxing_glove",
    value = "🥊",
    description = "boxing glove",
    category = "Activities / sport"
  },
  {
    name = "cricket_game",
    value = "🏏",
    description = "cricket game",
    category = "Activities / sport"
  },
  {
    name = "curling_stone",
    value = "🥌",
    description = "curling stone",
    category = "Activities / sport"
  },
  {
    name = "diving_mask",
    value = "🤿",
    description = "diving mask",
    category = "Activities / sport"
  },
  {
    name = "field_hockey",
    value = "🏑",
    description = "field hockey",
    category = "Activities / sport"
  },
  {
    name = "fishing_pole",
    value = "🎣",
    description = "fishing pole",
    category = "Activities / sport"
  },
  {
    name = "flag_in_hole",
    value = "⛳",
    description = "flag in hole",
    category = "Activities / sport"
  },
  {
    name = "flying_disc",
    value = "🥏",
    description = "flying disc",
    category = "Activities / sport"
  },
  {
    name = "goal_net",
    value = "🥅",
    description = "goal net",
    category = "Activities / sport"
  },
  {
    name = "ice_hockey",
    value = "🏒",
    description = "ice hockey",
    category = "Activities / sport"
  },
  {
    name = "ice_skate",
    value = "⛸️",
    description = "ice skate",
    category = "Activities / sport"
  },
  {
    name = "lacrosse",
    value = "🥍",
    description = "lacrosse",
    category = "Activities / sport"
  },
  {
    name = "martial_arts_uniform",
    value = "🥋",
    description = "martial arts uniform",
    category = "Activities / sport"
  },
  {
    name = "ping_pong",
    value = "🏓",
    description = "ping pong",
    category = "Activities / sport"
  },
  {
    name = "rugby_football",
    value = "🏉",
    description = "rugby football",
    category = "Activities / sport"
  },
  {
    name = "running_shirt",
    value = "🎽",
    description = "running shirt",
    category = "Activities / sport"
  },
  {
    name = "skis",
    value = "🎿",
    description = "skis",
    category = "Activities / sport"
  },
  {
    name = "sled",
    value = "🛷",
    description = "sled",
    category = "Activities / sport"
  },
  {
    name = "soccer_ball",
    value = "⚽",
    description = "soccer ball",
    category = "Activities / sport"
  },
  {
    name = "softball",
    value = "🥎",
    description = "softball",
    category = "Activities / sport"
  },
  {
    name = "tennis",
    value = "🎾",
    description = "tennis",
    category = "Activities / sport"
  },
  {
    name = "volleyball",
    value = "🏐",
    description = "volleyball",
    category = "Activities / sport"
  },
  {
    name = "frog",
    value = "🐸",
    description = "frog",
    category = "Animals & Nature / animal-amphibian"
  },
  {
    name = "baby_chick",
    value = "🐤",
    description = "baby chick",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "bird",
    value = "🐦",
    description = "bird",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "black_bird",
    value = "🐦‍⬛",
    description = "black bird",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "chicken",
    value = "🐔",
    description = "chicken",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "dodo",
    value = "🦤",
    description = "dodo",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "dove",
    value = "🕊️",
    description = "dove",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "duck",
    value = "🦆",
    description = "duck",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "eagle",
    value = "🦅",
    description = "eagle",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "feather",
    value = "🪶",
    description = "feather",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "flamingo",
    value = "🦩",
    description = "flamingo",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "front_facing_baby_chick",
    value = "🐥",
    description = "front-facing baby chick",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "goose",
    value = "🪿",
    description = "goose",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "hatching_chick",
    value = "🐣",
    description = "hatching chick",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "owl",
    value = "🦉",
    description = "owl",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "parrot",
    value = "🦜",
    description = "parrot",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "peacock",
    value = "🦚",
    description = "peacock",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "penguin",
    value = "🐧",
    description = "penguin",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "phoenix",
    value = "🐦‍🔥",
    description = "phoenix",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "rooster",
    value = "🐓",
    description = "rooster",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "swan",
    value = "🦢",
    description = "swan",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "turkey",
    value = "🦃",
    description = "turkey",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "wing",
    value = "🪽",
    description = "wing",
    category = "Animals & Nature / animal-bird"
  },
  {
    name = "ant",
    value = "🐜",
    description = "ant",
    category = "Animals & Nature / animal-bug"
  },
  {
    name = "beetle",
    value = "🪲",
    description = "beetle",
    category = "Animals & Nature / animal-bug"
  },
  {
    name = "bug",
    value = "🐛",
    description = "bug",
    category = "Animals & Nature / animal-bug"
  },
  {
    name = "butterfly",
    value = "🦋",
    description = "butterfly",
    category = "Animals & Nature / animal-bug"
  },
  {
    name = "cockroach",
    value = "🪳",
    description = "cockroach",
    category = "Animals & Nature / animal-bug"
  },
  {
    name = "cricket",
    value = "🦗",
    description = "cricket",
    category = "Animals & Nature / animal-bug"
  },
  {
    name = "fly",
    value = "🪰",
    description = "fly",
    category = "Animals & Nature / animal-bug"
  },
  {
    name = "honeybee",
    value = "🐝",
    description = "honeybee",
    category = "Animals & Nature / animal-bug"
  },
  {
    name = "lady_beetle",
    value = "🐞",
    description = "lady beetle",
    category = "Animals & Nature / animal-bug"
  },
  {
    name = "microbe",
    value = "🦠",
    description = "microbe",
    category = "Animals & Nature / animal-bug"
  },
  {
    name = "mosquito",
    value = "🦟",
    description = "mosquito",
    category = "Animals & Nature / animal-bug"
  },
  {
    name = "scorpion",
    value = "🦂",
    description = "scorpion",
    category = "Animals & Nature / animal-bug"
  },
  {
    name = "snail",
    value = "🐌",
    description = "snail",
    category = "Animals & Nature / animal-bug"
  },
  {
    name = "spider",
    value = "🕷️",
    description = "spider",
    category = "Animals & Nature / animal-bug"
  },
  {
    name = "spider_web",
    value = "🕸️",
    description = "spider web",
    category = "Animals & Nature / animal-bug"
  },
  {
    name = "worm",
    value = "🪱",
    description = "worm",
    category = "Animals & Nature / animal-bug"
  },
  {
    name = "badger",
    value = "🦡",
    description = "badger",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "bat",
    value = "🦇",
    description = "bat",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "bear",
    value = "🐻",
    description = "bear",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "beaver",
    value = "🦫",
    description = "beaver",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "bison",
    value = "🦬",
    description = "bison",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "black_cat",
    value = "🐈‍⬛",
    description = "black cat",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "boar",
    value = "🐗",
    description = "boar",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "camel",
    value = "🐪",
    description = "camel",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "cat",
    value = "🐈",
    description = "cat",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "cat_face",
    value = "🐱",
    description = "cat face",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "chipmunk",
    value = "🐿️",
    description = "chipmunk",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "cow",
    value = "🐄",
    description = "cow",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "cow_face",
    value = "🐮",
    description = "cow face",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "deer",
    value = "🦌",
    description = "deer",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "dog",
    value = "🐕",
    description = "dog",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "dog_face",
    value = "🐶",
    description = "dog face",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "donkey",
    value = "🫏",
    description = "donkey",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "elephant",
    value = "🐘",
    description = "elephant",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "ewe",
    value = "🐑",
    description = "ewe",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "fox",
    value = "🦊",
    description = "fox",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "giraffe",
    value = "🦒",
    description = "giraffe",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "goat",
    value = "🐐",
    description = "goat",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "gorilla",
    value = "🦍",
    description = "gorilla",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "guide_dog",
    value = "🦮",
    description = "guide dog",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "hamster",
    value = "🐹",
    description = "hamster",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "hedgehog",
    value = "🦔",
    description = "hedgehog",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "hippopotamus",
    value = "🦛",
    description = "hippopotamus",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "horse",
    value = "🐎",
    description = "horse",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "horse_face",
    value = "🐴",
    description = "horse face",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "kangaroo",
    value = "🦘",
    description = "kangaroo",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "koala",
    value = "🐨",
    description = "koala",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "leopard",
    value = "🐆",
    description = "leopard",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "lion",
    value = "🦁",
    description = "lion",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "llama",
    value = "🦙",
    description = "llama",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "mammoth",
    value = "🦣",
    description = "mammoth",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "monkey",
    value = "🐒",
    description = "monkey",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "monkey_face",
    value = "🐵",
    description = "monkey face",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "moose",
    value = "🫎",
    description = "moose",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "mouse",
    value = "🐁",
    description = "mouse",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "mouse_face",
    value = "🐭",
    description = "mouse face",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "orangutan",
    value = "🦧",
    description = "orangutan",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "otter",
    value = "🦦",
    description = "otter",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "ox",
    value = "🐂",
    description = "ox",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "panda",
    value = "🐼",
    description = "panda",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "paw_prints",
    value = "🐾",
    description = "paw prints",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "pig",
    value = "🐖",
    description = "pig",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "pig_face",
    value = "🐷",
    description = "pig face",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "pig_nose",
    value = "🐽",
    description = "pig nose",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "polar_bear",
    value = "🐻‍❄️",
    description = "polar bear",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "poodle",
    value = "🐩",
    description = "poodle",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "rabbit",
    value = "🐇",
    description = "rabbit",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "rabbit_face",
    value = "🐰",
    description = "rabbit face",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "raccoon",
    value = "🦝",
    description = "raccoon",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "ram",
    value = "🐏",
    description = "ram",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "rat",
    value = "🐀",
    description = "rat",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "rhinoceros",
    value = "🦏",
    description = "rhinoceros",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "service_dog",
    value = "🐕‍🦺",
    description = "service dog",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "skunk",
    value = "🦨",
    description = "skunk",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "sloth",
    value = "🦥",
    description = "sloth",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "tiger",
    value = "🐅",
    description = "tiger",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "tiger_face",
    value = "🐯",
    description = "tiger face",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "two_hump_camel",
    value = "🐫",
    description = "two-hump camel",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "unicorn",
    value = "🦄",
    description = "unicorn",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "water_buffalo",
    value = "🐃",
    description = "water buffalo",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "wolf",
    value = "🐺",
    description = "wolf",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "zebra",
    value = "🦓",
    description = "zebra",
    category = "Animals & Nature / animal-mammal"
  },
  {
    name = "blowfish",
    value = "🐡",
    description = "blowfish",
    category = "Animals & Nature / animal-marine"
  },
  {
    name = "coral",
    value = "🪸",
    description = "coral",
    category = "Animals & Nature / animal-marine"
  },
  {
    name = "dolphin",
    value = "🐬",
    description = "dolphin",
    category = "Animals & Nature / animal-marine"
  },
  {
    name = "fish",
    value = "🐟",
    description = "fish",
    category = "Animals & Nature / animal-marine"
  },
  {
    name = "jellyfish",
    value = "🪼",
    description = "jellyfish",
    category = "Animals & Nature / animal-marine"
  },
  {
    name = "octopus",
    value = "🐙",
    description = "octopus",
    category = "Animals & Nature / animal-marine"
  },
  {
    name = "seal",
    value = "🦭",
    description = "seal",
    category = "Animals & Nature / animal-marine"
  },
  {
    name = "shark",
    value = "🦈",
    description = "shark",
    category = "Animals & Nature / animal-marine"
  },
  {
    name = "spiral_shell",
    value = "🐚",
    description = "spiral shell",
    category = "Animals & Nature / animal-marine"
  },
  {
    name = "spouting_whale",
    value = "🐳",
    description = "spouting whale",
    category = "Animals & Nature / animal-marine"
  },
  {
    name = "tropical_fish",
    value = "🐠",
    description = "tropical fish",
    category = "Animals & Nature / animal-marine"
  },
  {
    name = "whale",
    value = "🐋",
    description = "whale",
    category = "Animals & Nature / animal-marine"
  },
  {
    name = "crocodile",
    value = "🐊",
    description = "crocodile",
    category = "Animals & Nature / animal-reptile"
  },
  {
    name = "dragon",
    value = "🐉",
    description = "dragon",
    category = "Animals & Nature / animal-reptile"
  },
  {
    name = "dragon_face",
    value = "🐲",
    description = "dragon face",
    category = "Animals & Nature / animal-reptile"
  },
  {
    name = "lizard",
    value = "🦎",
    description = "lizard",
    category = "Animals & Nature / animal-reptile"
  },
  {
    name = "sauropod",
    value = "🦕",
    description = "sauropod",
    category = "Animals & Nature / animal-reptile"
  },
  {
    name = "snake",
    value = "🐍",
    description = "snake",
    category = "Animals & Nature / animal-reptile"
  },
  {
    name = "t_rex",
    value = "🦖",
    description = "T-Rex",
    category = "Animals & Nature / animal-reptile"
  },
  {
    name = "turtle",
    value = "🐢",
    description = "turtle",
    category = "Animals & Nature / animal-reptile"
  },
  {
    name = "blossom",
    value = "🌼",
    description = "blossom",
    category = "Animals & Nature / plant-flower"
  },
  {
    name = "bouquet",
    value = "💐",
    description = "bouquet",
    category = "Animals & Nature / plant-flower"
  },
  {
    name = "cherry_blossom",
    value = "🌸",
    description = "cherry blossom",
    category = "Animals & Nature / plant-flower"
  },
  {
    name = "hibiscus",
    value = "🌺",
    description = "hibiscus",
    category = "Animals & Nature / plant-flower"
  },
  {
    name = "hyacinth",
    value = "🪻",
    description = "hyacinth",
    category = "Animals & Nature / plant-flower"
  },
  {
    name = "lotus",
    value = "🪷",
    description = "lotus",
    category = "Animals & Nature / plant-flower"
  },
  {
    name = "rose",
    value = "🌹",
    description = "rose",
    category = "Animals & Nature / plant-flower"
  },
  {
    name = "rosette",
    value = "🏵️",
    description = "rosette",
    category = "Animals & Nature / plant-flower"
  },
  {
    name = "sunflower",
    value = "🌻",
    description = "sunflower",
    category = "Animals & Nature / plant-flower"
  },
  {
    name = "tulip",
    value = "🌷",
    description = "tulip",
    category = "Animals & Nature / plant-flower"
  },
  {
    name = "white_flower",
    value = "💮",
    description = "white flower",
    category = "Animals & Nature / plant-flower"
  },
  {
    name = "wilted_flower",
    value = "🥀",
    description = "wilted flower",
    category = "Animals & Nature / plant-flower"
  },
  {
    name = "cactus",
    value = "🌵",
    description = "cactus",
    category = "Animals & Nature / plant-other"
  },
  {
    name = "deciduous_tree",
    value = "🌳",
    description = "deciduous tree",
    category = "Animals & Nature / plant-other"
  },
  {
    name = "empty_nest",
    value = "🪹",
    description = "empty nest",
    category = "Animals & Nature / plant-other"
  },
  {
    name = "evergreen_tree",
    value = "🌲",
    description = "evergreen tree",
    category = "Animals & Nature / plant-other"
  },
  {
    name = "fallen_leaf",
    value = "🍂",
    description = "fallen leaf",
    category = "Animals & Nature / plant-other"
  },
  {
    name = "four_leaf_clover",
    value = "🍀",
    description = "four leaf clover",
    category = "Animals & Nature / plant-other"
  },
  {
    name = "herb",
    value = "🌿",
    description = "herb",
    category = "Animals & Nature / plant-other"
  },
  {
    name = "leaf_fluttering_in_wind",
    value = "🍃",
    description = "leaf fluttering in wind",
    category = "Animals & Nature / plant-other"
  },
  {
    name = "maple_leaf",
    value = "🍁",
    description = "maple leaf",
    category = "Animals & Nature / plant-other"
  },
  {
    name = "mushroom",
    value = "🍄",
    description = "mushroom",
    category = "Animals & Nature / plant-other"
  },
  {
    name = "nest_with_eggs",
    value = "🪺",
    description = "nest with eggs",
    category = "Animals & Nature / plant-other"
  },
  {
    name = "palm_tree",
    value = "🌴",
    description = "palm tree",
    category = "Animals & Nature / plant-other"
  },
  {
    name = "potted_plant",
    value = "🪴",
    description = "potted plant",
    category = "Animals & Nature / plant-other"
  },
  {
    name = "seedling",
    value = "🌱",
    description = "seedling",
    category = "Animals & Nature / plant-other"
  },
  {
    name = "shamrock",
    value = "☘️",
    description = "shamrock",
    category = "Animals & Nature / plant-other"
  },
  {
    name = "sheaf_of_rice",
    value = "🌾",
    description = "sheaf of rice",
    category = "Animals & Nature / plant-other"
  },
  {
    name = "flag_afghanistan",
    value = "🇦🇫",
    description = "flag: Afghanistan",
    category = "Flags / country-flag"
  },
  {
    name = "flag_albania",
    value = "🇦🇱",
    description = "flag: Albania",
    category = "Flags / country-flag"
  },
  {
    name = "flag_algeria",
    value = "🇩🇿",
    description = "flag: Algeria",
    category = "Flags / country-flag"
  },
  {
    name = "flag_american_samoa",
    value = "🇦🇸",
    description = "flag: American Samoa",
    category = "Flags / country-flag"
  },
  {
    name = "flag_andorra",
    value = "🇦🇩",
    description = "flag: Andorra",
    category = "Flags / country-flag"
  },
  {
    name = "flag_angola",
    value = "🇦🇴",
    description = "flag: Angola",
    category = "Flags / country-flag"
  },
  {
    name = "flag_anguilla",
    value = "🇦🇮",
    description = "flag: Anguilla",
    category = "Flags / country-flag"
  },
  {
    name = "flag_antarctica",
    value = "🇦🇶",
    description = "flag: Antarctica",
    category = "Flags / country-flag"
  },
  {
    name = "flag_antigua_barbuda",
    value = "🇦🇬",
    description = "flag: Antigua & Barbuda",
    category = "Flags / country-flag"
  },
  {
    name = "flag_argentina",
    value = "🇦🇷",
    description = "flag: Argentina",
    category = "Flags / country-flag"
  },
  {
    name = "flag_armenia",
    value = "🇦🇲",
    description = "flag: Armenia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_aruba",
    value = "🇦🇼",
    description = "flag: Aruba",
    category = "Flags / country-flag"
  },
  {
    name = "flag_ascension_island",
    value = "🇦🇨",
    description = "flag: Ascension Island",
    category = "Flags / country-flag"
  },
  {
    name = "flag_australia",
    value = "🇦🇺",
    description = "flag: Australia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_austria",
    value = "🇦🇹",
    description = "flag: Austria",
    category = "Flags / country-flag"
  },
  {
    name = "flag_azerbaijan",
    value = "🇦🇿",
    description = "flag: Azerbaijan",
    category = "Flags / country-flag"
  },
  {
    name = "flag_bahamas",
    value = "🇧🇸",
    description = "flag: Bahamas",
    category = "Flags / country-flag"
  },
  {
    name = "flag_bahrain",
    value = "🇧🇭",
    description = "flag: Bahrain",
    category = "Flags / country-flag"
  },
  {
    name = "flag_bangladesh",
    value = "🇧🇩",
    description = "flag: Bangladesh",
    category = "Flags / country-flag"
  },
  {
    name = "flag_barbados",
    value = "🇧🇧",
    description = "flag: Barbados",
    category = "Flags / country-flag"
  },
  {
    name = "flag_belarus",
    value = "🇧🇾",
    description = "flag: Belarus",
    category = "Flags / country-flag"
  },
  {
    name = "flag_belgium",
    value = "🇧🇪",
    description = "flag: Belgium",
    category = "Flags / country-flag"
  },
  {
    name = "flag_belize",
    value = "🇧🇿",
    description = "flag: Belize",
    category = "Flags / country-flag"
  },
  {
    name = "flag_benin",
    value = "🇧🇯",
    description = "flag: Benin",
    category = "Flags / country-flag"
  },
  {
    name = "flag_bermuda",
    value = "🇧🇲",
    description = "flag: Bermuda",
    category = "Flags / country-flag"
  },
  {
    name = "flag_bhutan",
    value = "🇧🇹",
    description = "flag: Bhutan",
    category = "Flags / country-flag"
  },
  {
    name = "flag_bolivia",
    value = "🇧🇴",
    description = "flag: Bolivia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_bosnia_herzegovina",
    value = "🇧🇦",
    description = "flag: Bosnia & Herzegovina",
    category = "Flags / country-flag"
  },
  {
    name = "flag_botswana",
    value = "🇧🇼",
    description = "flag: Botswana",
    category = "Flags / country-flag"
  },
  {
    name = "flag_bouvet_island",
    value = "🇧🇻",
    description = "flag: Bouvet Island",
    category = "Flags / country-flag"
  },
  {
    name = "flag_brazil",
    value = "🇧🇷",
    description = "flag: Brazil",
    category = "Flags / country-flag"
  },
  {
    name = "flag_british_indian_ocean_territory",
    value = "🇮🇴",
    description = "flag: British Indian Ocean Territory",
    category = "Flags / country-flag"
  },
  {
    name = "flag_british_virgin_islands",
    value = "🇻🇬",
    description = "flag: British Virgin Islands",
    category = "Flags / country-flag"
  },
  {
    name = "flag_brunei",
    value = "🇧🇳",
    description = "flag: Brunei",
    category = "Flags / country-flag"
  },
  {
    name = "flag_bulgaria",
    value = "🇧🇬",
    description = "flag: Bulgaria",
    category = "Flags / country-flag"
  },
  {
    name = "flag_burkina_faso",
    value = "🇧🇫",
    description = "flag: Burkina Faso",
    category = "Flags / country-flag"
  },
  {
    name = "flag_burundi",
    value = "🇧🇮",
    description = "flag: Burundi",
    category = "Flags / country-flag"
  },
  {
    name = "flag_c_te_d_ivoire",
    value = "🇨🇮",
    description = "flag: Côte d’Ivoire",
    category = "Flags / country-flag"
  },
  {
    name = "flag_cambodia",
    value = "🇰🇭",
    description = "flag: Cambodia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_cameroon",
    value = "🇨🇲",
    description = "flag: Cameroon",
    category = "Flags / country-flag"
  },
  {
    name = "flag_canada",
    value = "🇨🇦",
    description = "flag: Canada",
    category = "Flags / country-flag"
  },
  {
    name = "flag_canary_islands",
    value = "🇮🇨",
    description = "flag: Canary Islands",
    category = "Flags / country-flag"
  },
  {
    name = "flag_cape_verde",
    value = "🇨🇻",
    description = "flag: Cape Verde",
    category = "Flags / country-flag"
  },
  {
    name = "flag_caribbean_netherlands",
    value = "🇧🇶",
    description = "flag: Caribbean Netherlands",
    category = "Flags / country-flag"
  },
  {
    name = "flag_cayman_islands",
    value = "🇰🇾",
    description = "flag: Cayman Islands",
    category = "Flags / country-flag"
  },
  {
    name = "flag_central_african_republic",
    value = "🇨🇫",
    description = "flag: Central African Republic",
    category = "Flags / country-flag"
  },
  {
    name = "flag_ceuta_melilla",
    value = "🇪🇦",
    description = "flag: Ceuta & Melilla",
    category = "Flags / country-flag"
  },
  {
    name = "flag_chad",
    value = "🇹🇩",
    description = "flag: Chad",
    category = "Flags / country-flag"
  },
  {
    name = "flag_chile",
    value = "🇨🇱",
    description = "flag: Chile",
    category = "Flags / country-flag"
  },
  {
    name = "flag_china",
    value = "🇨🇳",
    description = "flag: China",
    category = "Flags / country-flag"
  },
  {
    name = "flag_christmas_island",
    value = "🇨🇽",
    description = "flag: Christmas Island",
    category = "Flags / country-flag"
  },
  {
    name = "flag_clipperton_island",
    value = "🇨🇵",
    description = "flag: Clipperton Island",
    category = "Flags / country-flag"
  },
  {
    name = "flag_cocos_keeling_islands",
    value = "🇨🇨",
    description = "flag: Cocos (Keeling) Islands",
    category = "Flags / country-flag"
  },
  {
    name = "flag_colombia",
    value = "🇨🇴",
    description = "flag: Colombia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_comoros",
    value = "🇰🇲",
    description = "flag: Comoros",
    category = "Flags / country-flag"
  },
  {
    name = "flag_congo_brazzaville",
    value = "🇨🇬",
    description = "flag: Congo - Brazzaville",
    category = "Flags / country-flag"
  },
  {
    name = "flag_congo_kinshasa",
    value = "🇨🇩",
    description = "flag: Congo - Kinshasa",
    category = "Flags / country-flag"
  },
  {
    name = "flag_cook_islands",
    value = "🇨🇰",
    description = "flag: Cook Islands",
    category = "Flags / country-flag"
  },
  {
    name = "flag_costa_rica",
    value = "🇨🇷",
    description = "flag: Costa Rica",
    category = "Flags / country-flag"
  },
  {
    name = "flag_croatia",
    value = "🇭🇷",
    description = "flag: Croatia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_cuba",
    value = "🇨🇺",
    description = "flag: Cuba",
    category = "Flags / country-flag"
  },
  {
    name = "flag_cura_ao",
    value = "🇨🇼",
    description = "flag: Curaçao",
    category = "Flags / country-flag"
  },
  {
    name = "flag_cyprus",
    value = "🇨🇾",
    description = "flag: Cyprus",
    category = "Flags / country-flag"
  },
  {
    name = "flag_czechia",
    value = "🇨🇿",
    description = "flag: Czechia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_denmark",
    value = "🇩🇰",
    description = "flag: Denmark",
    category = "Flags / country-flag"
  },
  {
    name = "flag_diego_garcia",
    value = "🇩🇬",
    description = "flag: Diego Garcia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_djibouti",
    value = "🇩🇯",
    description = "flag: Djibouti",
    category = "Flags / country-flag"
  },
  {
    name = "flag_dominica",
    value = "🇩🇲",
    description = "flag: Dominica",
    category = "Flags / country-flag"
  },
  {
    name = "flag_dominican_republic",
    value = "🇩🇴",
    description = "flag: Dominican Republic",
    category = "Flags / country-flag"
  },
  {
    name = "flag_ecuador",
    value = "🇪🇨",
    description = "flag: Ecuador",
    category = "Flags / country-flag"
  },
  {
    name = "flag_egypt",
    value = "🇪🇬",
    description = "flag: Egypt",
    category = "Flags / country-flag"
  },
  {
    name = "flag_el_salvador",
    value = "🇸🇻",
    description = "flag: El Salvador",
    category = "Flags / country-flag"
  },
  {
    name = "flag_equatorial_guinea",
    value = "🇬🇶",
    description = "flag: Equatorial Guinea",
    category = "Flags / country-flag"
  },
  {
    name = "flag_eritrea",
    value = "🇪🇷",
    description = "flag: Eritrea",
    category = "Flags / country-flag"
  },
  {
    name = "flag_estonia",
    value = "🇪🇪",
    description = "flag: Estonia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_eswatini",
    value = "🇸🇿",
    description = "flag: Eswatini",
    category = "Flags / country-flag"
  },
  {
    name = "flag_ethiopia",
    value = "🇪🇹",
    description = "flag: Ethiopia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_european_union",
    value = "🇪🇺",
    description = "flag: European Union",
    category = "Flags / country-flag"
  },
  {
    name = "flag_falkland_islands",
    value = "🇫🇰",
    description = "flag: Falkland Islands",
    category = "Flags / country-flag"
  },
  {
    name = "flag_faroe_islands",
    value = "🇫🇴",
    description = "flag: Faroe Islands",
    category = "Flags / country-flag"
  },
  {
    name = "flag_fiji",
    value = "🇫🇯",
    description = "flag: Fiji",
    category = "Flags / country-flag"
  },
  {
    name = "flag_finland",
    value = "🇫🇮",
    description = "flag: Finland",
    category = "Flags / country-flag"
  },
  {
    name = "flag_france",
    value = "🇫🇷",
    description = "flag: France",
    category = "Flags / country-flag"
  },
  {
    name = "flag_french_guiana",
    value = "🇬🇫",
    description = "flag: French Guiana",
    category = "Flags / country-flag"
  },
  {
    name = "flag_french_polynesia",
    value = "🇵🇫",
    description = "flag: French Polynesia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_french_southern_territories",
    value = "🇹🇫",
    description = "flag: French Southern Territories",
    category = "Flags / country-flag"
  },
  {
    name = "flag_gabon",
    value = "🇬🇦",
    description = "flag: Gabon",
    category = "Flags / country-flag"
  },
  {
    name = "flag_gambia",
    value = "🇬🇲",
    description = "flag: Gambia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_georgia",
    value = "🇬🇪",
    description = "flag: Georgia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_germany",
    value = "🇩🇪",
    description = "flag: Germany",
    category = "Flags / country-flag"
  },
  {
    name = "flag_ghana",
    value = "🇬🇭",
    description = "flag: Ghana",
    category = "Flags / country-flag"
  },
  {
    name = "flag_gibraltar",
    value = "🇬🇮",
    description = "flag: Gibraltar",
    category = "Flags / country-flag"
  },
  {
    name = "flag_greece",
    value = "🇬🇷",
    description = "flag: Greece",
    category = "Flags / country-flag"
  },
  {
    name = "flag_greenland",
    value = "🇬🇱",
    description = "flag: Greenland",
    category = "Flags / country-flag"
  },
  {
    name = "flag_grenada",
    value = "🇬🇩",
    description = "flag: Grenada",
    category = "Flags / country-flag"
  },
  {
    name = "flag_guadeloupe",
    value = "🇬🇵",
    description = "flag: Guadeloupe",
    category = "Flags / country-flag"
  },
  {
    name = "flag_guam",
    value = "🇬🇺",
    description = "flag: Guam",
    category = "Flags / country-flag"
  },
  {
    name = "flag_guatemala",
    value = "🇬🇹",
    description = "flag: Guatemala",
    category = "Flags / country-flag"
  },
  {
    name = "flag_guernsey",
    value = "🇬🇬",
    description = "flag: Guernsey",
    category = "Flags / country-flag"
  },
  {
    name = "flag_guinea",
    value = "🇬🇳",
    description = "flag: Guinea",
    category = "Flags / country-flag"
  },
  {
    name = "flag_guinea_bissau",
    value = "🇬🇼",
    description = "flag: Guinea-Bissau",
    category = "Flags / country-flag"
  },
  {
    name = "flag_guyana",
    value = "🇬🇾",
    description = "flag: Guyana",
    category = "Flags / country-flag"
  },
  {
    name = "flag_haiti",
    value = "🇭🇹",
    description = "flag: Haiti",
    category = "Flags / country-flag"
  },
  {
    name = "flag_heard_mcdonald_islands",
    value = "🇭🇲",
    description = "flag: Heard & McDonald Islands",
    category = "Flags / country-flag"
  },
  {
    name = "flag_honduras",
    value = "🇭🇳",
    description = "flag: Honduras",
    category = "Flags / country-flag"
  },
  {
    name = "flag_hong_kong_sar_china",
    value = "🇭🇰",
    description = "flag: Hong Kong SAR China",
    category = "Flags / country-flag"
  },
  {
    name = "flag_hungary",
    value = "🇭🇺",
    description = "flag: Hungary",
    category = "Flags / country-flag"
  },
  {
    name = "flag_iceland",
    value = "🇮🇸",
    description = "flag: Iceland",
    category = "Flags / country-flag"
  },
  {
    name = "flag_india",
    value = "🇮🇳",
    description = "flag: India",
    category = "Flags / country-flag"
  },
  {
    name = "flag_indonesia",
    value = "🇮🇩",
    description = "flag: Indonesia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_iran",
    value = "🇮🇷",
    description = "flag: Iran",
    category = "Flags / country-flag"
  },
  {
    name = "flag_iraq",
    value = "🇮🇶",
    description = "flag: Iraq",
    category = "Flags / country-flag"
  },
  {
    name = "flag_ireland",
    value = "🇮🇪",
    description = "flag: Ireland",
    category = "Flags / country-flag"
  },
  {
    name = "flag_isle_of_man",
    value = "🇮🇲",
    description = "flag: Isle of Man",
    category = "Flags / country-flag"
  },
  {
    name = "flag_israel",
    value = "🇮🇱",
    description = "flag: Israel",
    category = "Flags / country-flag"
  },
  {
    name = "flag_italy",
    value = "🇮🇹",
    description = "flag: Italy",
    category = "Flags / country-flag"
  },
  {
    name = "flag_jamaica",
    value = "🇯🇲",
    description = "flag: Jamaica",
    category = "Flags / country-flag"
  },
  {
    name = "flag_japan",
    value = "🇯🇵",
    description = "flag: Japan",
    category = "Flags / country-flag"
  },
  {
    name = "flag_jersey",
    value = "🇯🇪",
    description = "flag: Jersey",
    category = "Flags / country-flag"
  },
  {
    name = "flag_jordan",
    value = "🇯🇴",
    description = "flag: Jordan",
    category = "Flags / country-flag"
  },
  {
    name = "flag_kazakhstan",
    value = "🇰🇿",
    description = "flag: Kazakhstan",
    category = "Flags / country-flag"
  },
  {
    name = "flag_kenya",
    value = "🇰🇪",
    description = "flag: Kenya",
    category = "Flags / country-flag"
  },
  {
    name = "flag_kiribati",
    value = "🇰🇮",
    description = "flag: Kiribati",
    category = "Flags / country-flag"
  },
  {
    name = "flag_kosovo",
    value = "🇽🇰",
    description = "flag: Kosovo",
    category = "Flags / country-flag"
  },
  {
    name = "flag_kuwait",
    value = "🇰🇼",
    description = "flag: Kuwait",
    category = "Flags / country-flag"
  },
  {
    name = "flag_kyrgyzstan",
    value = "🇰🇬",
    description = "flag: Kyrgyzstan",
    category = "Flags / country-flag"
  },
  {
    name = "flag_land_islands",
    value = "🇦🇽",
    description = "flag: Åland Islands",
    category = "Flags / country-flag"
  },
  {
    name = "flag_laos",
    value = "🇱🇦",
    description = "flag: Laos",
    category = "Flags / country-flag"
  },
  {
    name = "flag_latvia",
    value = "🇱🇻",
    description = "flag: Latvia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_lebanon",
    value = "🇱🇧",
    description = "flag: Lebanon",
    category = "Flags / country-flag"
  },
  {
    name = "flag_lesotho",
    value = "🇱🇸",
    description = "flag: Lesotho",
    category = "Flags / country-flag"
  },
  {
    name = "flag_liberia",
    value = "🇱🇷",
    description = "flag: Liberia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_libya",
    value = "🇱🇾",
    description = "flag: Libya",
    category = "Flags / country-flag"
  },
  {
    name = "flag_liechtenstein",
    value = "🇱🇮",
    description = "flag: Liechtenstein",
    category = "Flags / country-flag"
  },
  {
    name = "flag_lithuania",
    value = "🇱🇹",
    description = "flag: Lithuania",
    category = "Flags / country-flag"
  },
  {
    name = "flag_luxembourg",
    value = "🇱🇺",
    description = "flag: Luxembourg",
    category = "Flags / country-flag"
  },
  {
    name = "flag_macao_sar_china",
    value = "🇲🇴",
    description = "flag: Macao SAR China",
    category = "Flags / country-flag"
  },
  {
    name = "flag_madagascar",
    value = "🇲🇬",
    description = "flag: Madagascar",
    category = "Flags / country-flag"
  },
  {
    name = "flag_malawi",
    value = "🇲🇼",
    description = "flag: Malawi",
    category = "Flags / country-flag"
  },
  {
    name = "flag_malaysia",
    value = "🇲🇾",
    description = "flag: Malaysia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_maldives",
    value = "🇲🇻",
    description = "flag: Maldives",
    category = "Flags / country-flag"
  },
  {
    name = "flag_mali",
    value = "🇲🇱",
    description = "flag: Mali",
    category = "Flags / country-flag"
  },
  {
    name = "flag_malta",
    value = "🇲🇹",
    description = "flag: Malta",
    category = "Flags / country-flag"
  },
  {
    name = "flag_marshall_islands",
    value = "🇲🇭",
    description = "flag: Marshall Islands",
    category = "Flags / country-flag"
  },
  {
    name = "flag_martinique",
    value = "🇲🇶",
    description = "flag: Martinique",
    category = "Flags / country-flag"
  },
  {
    name = "flag_mauritania",
    value = "🇲🇷",
    description = "flag: Mauritania",
    category = "Flags / country-flag"
  },
  {
    name = "flag_mauritius",
    value = "🇲🇺",
    description = "flag: Mauritius",
    category = "Flags / country-flag"
  },
  {
    name = "flag_mayotte",
    value = "🇾🇹",
    description = "flag: Mayotte",
    category = "Flags / country-flag"
  },
  {
    name = "flag_mexico",
    value = "🇲🇽",
    description = "flag: Mexico",
    category = "Flags / country-flag"
  },
  {
    name = "flag_micronesia",
    value = "🇫🇲",
    description = "flag: Micronesia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_moldova",
    value = "🇲🇩",
    description = "flag: Moldova",
    category = "Flags / country-flag"
  },
  {
    name = "flag_monaco",
    value = "🇲🇨",
    description = "flag: Monaco",
    category = "Flags / country-flag"
  },
  {
    name = "flag_mongolia",
    value = "🇲🇳",
    description = "flag: Mongolia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_montenegro",
    value = "🇲🇪",
    description = "flag: Montenegro",
    category = "Flags / country-flag"
  },
  {
    name = "flag_montserrat",
    value = "🇲🇸",
    description = "flag: Montserrat",
    category = "Flags / country-flag"
  },
  {
    name = "flag_morocco",
    value = "🇲🇦",
    description = "flag: Morocco",
    category = "Flags / country-flag"
  },
  {
    name = "flag_mozambique",
    value = "🇲🇿",
    description = "flag: Mozambique",
    category = "Flags / country-flag"
  },
  {
    name = "flag_myanmar_burma",
    value = "🇲🇲",
    description = "flag: Myanmar (Burma)",
    category = "Flags / country-flag"
  },
  {
    name = "flag_namibia",
    value = "🇳🇦",
    description = "flag: Namibia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_nauru",
    value = "🇳🇷",
    description = "flag: Nauru",
    category = "Flags / country-flag"
  },
  {
    name = "flag_nepal",
    value = "🇳🇵",
    description = "flag: Nepal",
    category = "Flags / country-flag"
  },
  {
    name = "flag_netherlands",
    value = "🇳🇱",
    description = "flag: Netherlands",
    category = "Flags / country-flag"
  },
  {
    name = "flag_new_caledonia",
    value = "🇳🇨",
    description = "flag: New Caledonia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_new_zealand",
    value = "🇳🇿",
    description = "flag: New Zealand",
    category = "Flags / country-flag"
  },
  {
    name = "flag_nicaragua",
    value = "🇳🇮",
    description = "flag: Nicaragua",
    category = "Flags / country-flag"
  },
  {
    name = "flag_niger",
    value = "🇳🇪",
    description = "flag: Niger",
    category = "Flags / country-flag"
  },
  {
    name = "flag_nigeria",
    value = "🇳🇬",
    description = "flag: Nigeria",
    category = "Flags / country-flag"
  },
  {
    name = "flag_niue",
    value = "🇳🇺",
    description = "flag: Niue",
    category = "Flags / country-flag"
  },
  {
    name = "flag_norfolk_island",
    value = "🇳🇫",
    description = "flag: Norfolk Island",
    category = "Flags / country-flag"
  },
  {
    name = "flag_north_korea",
    value = "🇰🇵",
    description = "flag: North Korea",
    category = "Flags / country-flag"
  },
  {
    name = "flag_north_macedonia",
    value = "🇲🇰",
    description = "flag: North Macedonia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_northern_mariana_islands",
    value = "🇲🇵",
    description = "flag: Northern Mariana Islands",
    category = "Flags / country-flag"
  },
  {
    name = "flag_norway",
    value = "🇳🇴",
    description = "flag: Norway",
    category = "Flags / country-flag"
  },
  {
    name = "flag_oman",
    value = "🇴🇲",
    description = "flag: Oman",
    category = "Flags / country-flag"
  },
  {
    name = "flag_pakistan",
    value = "🇵🇰",
    description = "flag: Pakistan",
    category = "Flags / country-flag"
  },
  {
    name = "flag_palau",
    value = "🇵🇼",
    description = "flag: Palau",
    category = "Flags / country-flag"
  },
  {
    name = "flag_palestinian_territories",
    value = "🇵🇸",
    description = "flag: Palestinian Territories",
    category = "Flags / country-flag"
  },
  {
    name = "flag_panama",
    value = "🇵🇦",
    description = "flag: Panama",
    category = "Flags / country-flag"
  },
  {
    name = "flag_papua_new_guinea",
    value = "🇵🇬",
    description = "flag: Papua New Guinea",
    category = "Flags / country-flag"
  },
  {
    name = "flag_paraguay",
    value = "🇵🇾",
    description = "flag: Paraguay",
    category = "Flags / country-flag"
  },
  {
    name = "flag_peru",
    value = "🇵🇪",
    description = "flag: Peru",
    category = "Flags / country-flag"
  },
  {
    name = "flag_philippines",
    value = "🇵🇭",
    description = "flag: Philippines",
    category = "Flags / country-flag"
  },
  {
    name = "flag_pitcairn_islands",
    value = "🇵🇳",
    description = "flag: Pitcairn Islands",
    category = "Flags / country-flag"
  },
  {
    name = "flag_poland",
    value = "🇵🇱",
    description = "flag: Poland",
    category = "Flags / country-flag"
  },
  {
    name = "flag_portugal",
    value = "🇵🇹",
    description = "flag: Portugal",
    category = "Flags / country-flag"
  },
  {
    name = "flag_puerto_rico",
    value = "🇵🇷",
    description = "flag: Puerto Rico",
    category = "Flags / country-flag"
  },
  {
    name = "flag_qatar",
    value = "🇶🇦",
    description = "flag: Qatar",
    category = "Flags / country-flag"
  },
  {
    name = "flag_r_union",
    value = "🇷🇪",
    description = "flag: Réunion",
    category = "Flags / country-flag"
  },
  {
    name = "flag_romania",
    value = "🇷🇴",
    description = "flag: Romania",
    category = "Flags / country-flag"
  },
  {
    name = "flag_russia",
    value = "🇷🇺",
    description = "flag: Russia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_rwanda",
    value = "🇷🇼",
    description = "flag: Rwanda",
    category = "Flags / country-flag"
  },
  {
    name = "flag_s_o_tom_pr_ncipe",
    value = "🇸🇹",
    description = "flag: São Tomé & Príncipe",
    category = "Flags / country-flag"
  },
  {
    name = "flag_samoa",
    value = "🇼🇸",
    description = "flag: Samoa",
    category = "Flags / country-flag"
  },
  {
    name = "flag_san_marino",
    value = "🇸🇲",
    description = "flag: San Marino",
    category = "Flags / country-flag"
  },
  {
    name = "flag_saudi_arabia",
    value = "🇸🇦",
    description = "flag: Saudi Arabia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_senegal",
    value = "🇸🇳",
    description = "flag: Senegal",
    category = "Flags / country-flag"
  },
  {
    name = "flag_serbia",
    value = "🇷🇸",
    description = "flag: Serbia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_seychelles",
    value = "🇸🇨",
    description = "flag: Seychelles",
    category = "Flags / country-flag"
  },
  {
    name = "flag_sierra_leone",
    value = "🇸🇱",
    description = "flag: Sierra Leone",
    category = "Flags / country-flag"
  },
  {
    name = "flag_singapore",
    value = "🇸🇬",
    description = "flag: Singapore",
    category = "Flags / country-flag"
  },
  {
    name = "flag_sint_maarten",
    value = "🇸🇽",
    description = "flag: Sint Maarten",
    category = "Flags / country-flag"
  },
  {
    name = "flag_slovakia",
    value = "🇸🇰",
    description = "flag: Slovakia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_slovenia",
    value = "🇸🇮",
    description = "flag: Slovenia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_solomon_islands",
    value = "🇸🇧",
    description = "flag: Solomon Islands",
    category = "Flags / country-flag"
  },
  {
    name = "flag_somalia",
    value = "🇸🇴",
    description = "flag: Somalia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_south_africa",
    value = "🇿🇦",
    description = "flag: South Africa",
    category = "Flags / country-flag"
  },
  {
    name = "flag_south_georgia_south_sandwich_islands",
    value = "🇬🇸",
    description = "flag: South Georgia & South Sandwich Islands",
    category = "Flags / country-flag"
  },
  {
    name = "flag_south_korea",
    value = "🇰🇷",
    description = "flag: South Korea",
    category = "Flags / country-flag"
  },
  {
    name = "flag_south_sudan",
    value = "🇸🇸",
    description = "flag: South Sudan",
    category = "Flags / country-flag"
  },
  {
    name = "flag_spain",
    value = "🇪🇸",
    description = "flag: Spain",
    category = "Flags / country-flag"
  },
  {
    name = "flag_sri_lanka",
    value = "🇱🇰",
    description = "flag: Sri Lanka",
    category = "Flags / country-flag"
  },
  {
    name = "flag_st_barth_lemy",
    value = "🇧🇱",
    description = "flag: St. Barthélemy",
    category = "Flags / country-flag"
  },
  {
    name = "flag_st_helena",
    value = "🇸🇭",
    description = "flag: St. Helena",
    category = "Flags / country-flag"
  },
  {
    name = "flag_st_kitts_nevis",
    value = "🇰🇳",
    description = "flag: St. Kitts & Nevis",
    category = "Flags / country-flag"
  },
  {
    name = "flag_st_lucia",
    value = "🇱🇨",
    description = "flag: St. Lucia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_st_martin",
    value = "🇲🇫",
    description = "flag: St. Martin",
    category = "Flags / country-flag"
  },
  {
    name = "flag_st_pierre_miquelon",
    value = "🇵🇲",
    description = "flag: St. Pierre & Miquelon",
    category = "Flags / country-flag"
  },
  {
    name = "flag_st_vincent_grenadines",
    value = "🇻🇨",
    description = "flag: St. Vincent & Grenadines",
    category = "Flags / country-flag"
  },
  {
    name = "flag_sudan",
    value = "🇸🇩",
    description = "flag: Sudan",
    category = "Flags / country-flag"
  },
  {
    name = "flag_suriname",
    value = "🇸🇷",
    description = "flag: Suriname",
    category = "Flags / country-flag"
  },
  {
    name = "flag_svalbard_jan_mayen",
    value = "🇸🇯",
    description = "flag: Svalbard & Jan Mayen",
    category = "Flags / country-flag"
  },
  {
    name = "flag_sweden",
    value = "🇸🇪",
    description = "flag: Sweden",
    category = "Flags / country-flag"
  },
  {
    name = "flag_switzerland",
    value = "🇨🇭",
    description = "flag: Switzerland",
    category = "Flags / country-flag"
  },
  {
    name = "flag_syria",
    value = "🇸🇾",
    description = "flag: Syria",
    category = "Flags / country-flag"
  },
  {
    name = "flag_t_rkiye",
    value = "🇹🇷",
    description = "flag: Türkiye",
    category = "Flags / country-flag"
  },
  {
    name = "flag_taiwan",
    value = "🇹🇼",
    description = "flag: Taiwan",
    category = "Flags / country-flag"
  },
  {
    name = "flag_tajikistan",
    value = "🇹🇯",
    description = "flag: Tajikistan",
    category = "Flags / country-flag"
  },
  {
    name = "flag_tanzania",
    value = "🇹🇿",
    description = "flag: Tanzania",
    category = "Flags / country-flag"
  },
  {
    name = "flag_thailand",
    value = "🇹🇭",
    description = "flag: Thailand",
    category = "Flags / country-flag"
  },
  {
    name = "flag_timor_leste",
    value = "🇹🇱",
    description = "flag: Timor-Leste",
    category = "Flags / country-flag"
  },
  {
    name = "flag_togo",
    value = "🇹🇬",
    description = "flag: Togo",
    category = "Flags / country-flag"
  },
  {
    name = "flag_tokelau",
    value = "🇹🇰",
    description = "flag: Tokelau",
    category = "Flags / country-flag"
  },
  {
    name = "flag_tonga",
    value = "🇹🇴",
    description = "flag: Tonga",
    category = "Flags / country-flag"
  },
  {
    name = "flag_trinidad_tobago",
    value = "🇹🇹",
    description = "flag: Trinidad & Tobago",
    category = "Flags / country-flag"
  },
  {
    name = "flag_tristan_da_cunha",
    value = "🇹🇦",
    description = "flag: Tristan da Cunha",
    category = "Flags / country-flag"
  },
  {
    name = "flag_tunisia",
    value = "🇹🇳",
    description = "flag: Tunisia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_turkmenistan",
    value = "🇹🇲",
    description = "flag: Turkmenistan",
    category = "Flags / country-flag"
  },
  {
    name = "flag_turks_caicos_islands",
    value = "🇹🇨",
    description = "flag: Turks & Caicos Islands",
    category = "Flags / country-flag"
  },
  {
    name = "flag_tuvalu",
    value = "🇹🇻",
    description = "flag: Tuvalu",
    category = "Flags / country-flag"
  },
  {
    name = "flag_u_s_outlying_islands",
    value = "🇺🇲",
    description = "flag: U.S. Outlying Islands",
    category = "Flags / country-flag"
  },
  {
    name = "flag_u_s_virgin_islands",
    value = "🇻🇮",
    description = "flag: U.S. Virgin Islands",
    category = "Flags / country-flag"
  },
  {
    name = "flag_uganda",
    value = "🇺🇬",
    description = "flag: Uganda",
    category = "Flags / country-flag"
  },
  {
    name = "flag_ukraine",
    value = "🇺🇦",
    description = "flag: Ukraine",
    category = "Flags / country-flag"
  },
  {
    name = "flag_united_arab_emirates",
    value = "🇦🇪",
    description = "flag: United Arab Emirates",
    category = "Flags / country-flag"
  },
  {
    name = "flag_united_kingdom",
    value = "🇬🇧",
    description = "flag: United Kingdom",
    category = "Flags / country-flag"
  },
  {
    name = "flag_united_nations",
    value = "🇺🇳",
    description = "flag: United Nations",
    category = "Flags / country-flag"
  },
  {
    name = "flag_united_states",
    value = "🇺🇸",
    description = "flag: United States",
    category = "Flags / country-flag"
  },
  {
    name = "flag_uruguay",
    value = "🇺🇾",
    description = "flag: Uruguay",
    category = "Flags / country-flag"
  },
  {
    name = "flag_uzbekistan",
    value = "🇺🇿",
    description = "flag: Uzbekistan",
    category = "Flags / country-flag"
  },
  {
    name = "flag_vanuatu",
    value = "🇻🇺",
    description = "flag: Vanuatu",
    category = "Flags / country-flag"
  },
  {
    name = "flag_vatican_city",
    value = "🇻🇦",
    description = "flag: Vatican City",
    category = "Flags / country-flag"
  },
  {
    name = "flag_venezuela",
    value = "🇻🇪",
    description = "flag: Venezuela",
    category = "Flags / country-flag"
  },
  {
    name = "flag_vietnam",
    value = "🇻🇳",
    description = "flag: Vietnam",
    category = "Flags / country-flag"
  },
  {
    name = "flag_wallis_futuna",
    value = "🇼🇫",
    description = "flag: Wallis & Futuna",
    category = "Flags / country-flag"
  },
  {
    name = "flag_western_sahara",
    value = "🇪🇭",
    description = "flag: Western Sahara",
    category = "Flags / country-flag"
  },
  {
    name = "flag_yemen",
    value = "🇾🇪",
    description = "flag: Yemen",
    category = "Flags / country-flag"
  },
  {
    name = "flag_zambia",
    value = "🇿🇲",
    description = "flag: Zambia",
    category = "Flags / country-flag"
  },
  {
    name = "flag_zimbabwe",
    value = "🇿🇼",
    description = "flag: Zimbabwe",
    category = "Flags / country-flag"
  },
  {
    name = "black_flag",
    value = "🏴",
    description = "black flag",
    category = "Flags / flag"
  },
  {
    name = "chequered_flag",
    value = "🏁",
    description = "chequered flag",
    category = "Flags / flag"
  },
  {
    name = "crossed_flags",
    value = "🎌",
    description = "crossed flags",
    category = "Flags / flag"
  },
  {
    name = "pirate_flag",
    value = "🏴‍☠️",
    description = "pirate flag",
    category = "Flags / flag"
  },
  {
    name = "rainbow_flag",
    value = "🏳️‍🌈",
    description = "rainbow flag",
    category = "Flags / flag"
  },
  {
    name = "transgender_flag",
    value = "🏳️‍⚧️",
    description = "transgender flag",
    category = "Flags / flag"
  },
  {
    name = "triangular_flag",
    value = "🚩",
    description = "triangular flag",
    category = "Flags / flag"
  },
  {
    name = "white_flag",
    value = "🏳️",
    description = "white flag",
    category = "Flags / flag"
  },
  {
    name = "flag_england",
    value = "🏴󠁧󠁢󠁥󠁮󠁧󠁿",
    description = "flag: England",
    category = "Flags / subdivision-flag"
  },
  {
    name = "flag_scotland",
    value = "🏴󠁧󠁢󠁳󠁣󠁴󠁿",
    description = "flag: Scotland",
    category = "Flags / subdivision-flag"
  },
  {
    name = "flag_wales",
    value = "🏴󠁧󠁢󠁷󠁬󠁳󠁿",
    description = "flag: Wales",
    category = "Flags / subdivision-flag"
  },
  {
    name = "amphora",
    value = "🏺",
    description = "amphora",
    category = "Food & Drink / dishware"
  },
  {
    name = "chopsticks",
    value = "🥢",
    description = "chopsticks",
    category = "Food & Drink / dishware"
  },
  {
    name = "fork_and_knife",
    value = "🍴",
    description = "fork and knife",
    category = "Food & Drink / dishware"
  },
  {
    name = "fork_and_knife_with_plate",
    value = "🍽️",
    description = "fork and knife with plate",
    category = "Food & Drink / dishware"
  },
  {
    name = "jar",
    value = "🫙",
    description = "jar",
    category = "Food & Drink / dishware"
  },
  {
    name = "kitchen_knife",
    value = "🔪",
    description = "kitchen knife",
    category = "Food & Drink / dishware"
  },
  {
    name = "spoon",
    value = "🥄",
    description = "spoon",
    category = "Food & Drink / dishware"
  },
  {
    name = "baby_bottle",
    value = "🍼",
    description = "baby bottle",
    category = "Food & Drink / drink"
  },
  {
    name = "beer_mug",
    value = "🍺",
    description = "beer mug",
    category = "Food & Drink / drink"
  },
  {
    name = "beverage_box",
    value = "🧃",
    description = "beverage box",
    category = "Food & Drink / drink"
  },
  {
    name = "bottle_with_popping_cork",
    value = "🍾",
    description = "bottle with popping cork",
    category = "Food & Drink / drink"
  },
  {
    name = "bubble_tea",
    value = "🧋",
    description = "bubble tea",
    category = "Food & Drink / drink"
  },
  {
    name = "clinking_beer_mugs",
    value = "🍻",
    description = "clinking beer mugs",
    category = "Food & Drink / drink"
  },
  {
    name = "clinking_glasses",
    value = "🥂",
    description = "clinking glasses",
    category = "Food & Drink / drink"
  },
  {
    name = "cocktail_glass",
    value = "🍸",
    description = "cocktail glass",
    category = "Food & Drink / drink"
  },
  {
    name = "cup_with_straw",
    value = "🥤",
    description = "cup with straw",
    category = "Food & Drink / drink"
  },
  {
    name = "glass_of_milk",
    value = "🥛",
    description = "glass of milk",
    category = "Food & Drink / drink"
  },
  {
    name = "hot_beverage",
    value = "☕",
    description = "hot beverage",
    category = "Food & Drink / drink"
  },
  {
    name = "ice",
    value = "🧊",
    description = "ice",
    category = "Food & Drink / drink"
  },
  {
    name = "mate",
    value = "🧉",
    description = "mate",
    category = "Food & Drink / drink"
  },
  {
    name = "pouring_liquid",
    value = "🫗",
    description = "pouring liquid",
    category = "Food & Drink / drink"
  },
  {
    name = "sake",
    value = "🍶",
    description = "sake",
    category = "Food & Drink / drink"
  },
  {
    name = "teacup_without_handle",
    value = "🍵",
    description = "teacup without handle",
    category = "Food & Drink / drink"
  },
  {
    name = "teapot",
    value = "🫖",
    description = "teapot",
    category = "Food & Drink / drink"
  },
  {
    name = "tropical_drink",
    value = "🍹",
    description = "tropical drink",
    category = "Food & Drink / drink"
  },
  {
    name = "tumbler_glass",
    value = "🥃",
    description = "tumbler glass",
    category = "Food & Drink / drink"
  },
  {
    name = "wine_glass",
    value = "🍷",
    description = "wine glass",
    category = "Food & Drink / drink"
  },
  {
    name = "bento_box",
    value = "🍱",
    description = "bento box",
    category = "Food & Drink / food-asian"
  },
  {
    name = "cooked_rice",
    value = "🍚",
    description = "cooked rice",
    category = "Food & Drink / food-asian"
  },
  {
    name = "curry_rice",
    value = "🍛",
    description = "curry rice",
    category = "Food & Drink / food-asian"
  },
  {
    name = "dango",
    value = "🍡",
    description = "dango",
    category = "Food & Drink / food-asian"
  },
  {
    name = "dumpling",
    value = "🥟",
    description = "dumpling",
    category = "Food & Drink / food-asian"
  },
  {
    name = "fish_cake_with_swirl",
    value = "🍥",
    description = "fish cake with swirl",
    category = "Food & Drink / food-asian"
  },
  {
    name = "fortune_cookie",
    value = "🥠",
    description = "fortune cookie",
    category = "Food & Drink / food-asian"
  },
  {
    name = "fried_shrimp",
    value = "🍤",
    description = "fried shrimp",
    category = "Food & Drink / food-asian"
  },
  {
    name = "moon_cake",
    value = "🥮",
    description = "moon cake",
    category = "Food & Drink / food-asian"
  },
  {
    name = "oden",
    value = "🍢",
    description = "oden",
    category = "Food & Drink / food-asian"
  },
  {
    name = "rice_ball",
    value = "🍙",
    description = "rice ball",
    category = "Food & Drink / food-asian"
  },
  {
    name = "rice_cracker",
    value = "🍘",
    description = "rice cracker",
    category = "Food & Drink / food-asian"
  },
  {
    name = "roasted_sweet_potato",
    value = "🍠",
    description = "roasted sweet potato",
    category = "Food & Drink / food-asian"
  },
  {
    name = "spaghetti",
    value = "🍝",
    description = "spaghetti",
    category = "Food & Drink / food-asian"
  },
  {
    name = "steaming_bowl",
    value = "🍜",
    description = "steaming bowl",
    category = "Food & Drink / food-asian"
  },
  {
    name = "sushi",
    value = "🍣",
    description = "sushi",
    category = "Food & Drink / food-asian"
  },
  {
    name = "takeout_box",
    value = "🥡",
    description = "takeout box",
    category = "Food & Drink / food-asian"
  },
  {
    name = "banana",
    value = "🍌",
    description = "banana",
    category = "Food & Drink / food-fruit"
  },
  {
    name = "blueberries",
    value = "🫐",
    description = "blueberries",
    category = "Food & Drink / food-fruit"
  },
  {
    name = "cherries",
    value = "🍒",
    description = "cherries",
    category = "Food & Drink / food-fruit"
  },
  {
    name = "coconut",
    value = "🥥",
    description = "coconut",
    category = "Food & Drink / food-fruit"
  },
  {
    name = "grapes",
    value = "🍇",
    description = "grapes",
    category = "Food & Drink / food-fruit"
  },
  {
    name = "green_apple",
    value = "🍏",
    description = "green apple",
    category = "Food & Drink / food-fruit"
  },
  {
    name = "kiwi_fruit",
    value = "🥝",
    description = "kiwi fruit",
    category = "Food & Drink / food-fruit"
  },
  {
    name = "lemon",
    value = "🍋",
    description = "lemon",
    category = "Food & Drink / food-fruit"
  },
  {
    name = "lime",
    value = "🍋‍🟩",
    description = "lime",
    category = "Food & Drink / food-fruit"
  },
  {
    name = "mango",
    value = "🥭",
    description = "mango",
    category = "Food & Drink / food-fruit"
  },
  {
    name = "melon",
    value = "🍈",
    description = "melon",
    category = "Food & Drink / food-fruit"
  },
  {
    name = "olive",
    value = "🫒",
    description = "olive",
    category = "Food & Drink / food-fruit"
  },
  {
    name = "peach",
    value = "🍑",
    description = "peach",
    category = "Food & Drink / food-fruit"
  },
  {
    name = "pear",
    value = "🍐",
    description = "pear",
    category = "Food & Drink / food-fruit"
  },
  {
    name = "pineapple",
    value = "🍍",
    description = "pineapple",
    category = "Food & Drink / food-fruit"
  },
  {
    name = "red_apple",
    value = "🍎",
    description = "red apple",
    category = "Food & Drink / food-fruit"
  },
  {
    name = "strawberry",
    value = "🍓",
    description = "strawberry",
    category = "Food & Drink / food-fruit"
  },
  {
    name = "tangerine",
    value = "🍊",
    description = "tangerine",
    category = "Food & Drink / food-fruit"
  },
  {
    name = "tomato",
    value = "🍅",
    description = "tomato",
    category = "Food & Drink / food-fruit"
  },
  {
    name = "watermelon",
    value = "🍉",
    description = "watermelon",
    category = "Food & Drink / food-fruit"
  },
  {
    name = "crab",
    value = "🦀",
    description = "crab",
    category = "Food & Drink / food-marine"
  },
  {
    name = "lobster",
    value = "🦞",
    description = "lobster",
    category = "Food & Drink / food-marine"
  },
  {
    name = "oyster",
    value = "🦪",
    description = "oyster",
    category = "Food & Drink / food-marine"
  },
  {
    name = "shrimp",
    value = "🦐",
    description = "shrimp",
    category = "Food & Drink / food-marine"
  },
  {
    name = "squid",
    value = "🦑",
    description = "squid",
    category = "Food & Drink / food-marine"
  },
  {
    name = "bacon",
    value = "🥓",
    description = "bacon",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "bagel",
    value = "🥯",
    description = "bagel",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "baguette_bread",
    value = "🥖",
    description = "baguette bread",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "bowl_with_spoon",
    value = "🥣",
    description = "bowl with spoon",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "bread",
    value = "🍞",
    description = "bread",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "burrito",
    value = "🌯",
    description = "burrito",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "butter",
    value = "🧈",
    description = "butter",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "canned_food",
    value = "🥫",
    description = "canned food",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "cheese_wedge",
    value = "🧀",
    description = "cheese wedge",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "cooking",
    value = "🍳",
    description = "cooking",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "croissant",
    value = "🥐",
    description = "croissant",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "cut_of_meat",
    value = "🥩",
    description = "cut of meat",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "egg",
    value = "🥚",
    description = "egg",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "falafel",
    value = "🧆",
    description = "falafel",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "flatbread",
    value = "🫓",
    description = "flatbread",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "fondue",
    value = "🫕",
    description = "fondue",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "french_fries",
    value = "🍟",
    description = "french fries",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "green_salad",
    value = "🥗",
    description = "green salad",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "hamburger",
    value = "🍔",
    description = "hamburger",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "hot_dog",
    value = "🌭",
    description = "hot dog",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "meat_on_bone",
    value = "🍖",
    description = "meat on bone",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "pancakes",
    value = "🥞",
    description = "pancakes",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "pizza",
    value = "🍕",
    description = "pizza",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "popcorn",
    value = "🍿",
    description = "popcorn",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "pot_of_food",
    value = "🍲",
    description = "pot of food",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "poultry_leg",
    value = "🍗",
    description = "poultry leg",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "pretzel",
    value = "🥨",
    description = "pretzel",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "salt",
    value = "🧂",
    description = "salt",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "sandwich",
    value = "🥪",
    description = "sandwich",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "shallow_pan_of_food",
    value = "🥘",
    description = "shallow pan of food",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "stuffed_flatbread",
    value = "🥙",
    description = "stuffed flatbread",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "taco",
    value = "🌮",
    description = "taco",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "tamale",
    value = "🫔",
    description = "tamale",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "waffle",
    value = "🧇",
    description = "waffle",
    category = "Food & Drink / food-prepared"
  },
  {
    name = "birthday_cake",
    value = "🎂",
    description = "birthday cake",
    category = "Food & Drink / food-sweet"
  },
  {
    name = "candy",
    value = "🍬",
    description = "candy",
    category = "Food & Drink / food-sweet"
  },
  {
    name = "chocolate_bar",
    value = "🍫",
    description = "chocolate bar",
    category = "Food & Drink / food-sweet"
  },
  {
    name = "cookie",
    value = "🍪",
    description = "cookie",
    category = "Food & Drink / food-sweet"
  },
  {
    name = "cupcake",
    value = "🧁",
    description = "cupcake",
    category = "Food & Drink / food-sweet"
  },
  {
    name = "custard",
    value = "🍮",
    description = "custard",
    category = "Food & Drink / food-sweet"
  },
  {
    name = "doughnut",
    value = "🍩",
    description = "doughnut",
    category = "Food & Drink / food-sweet"
  },
  {
    name = "honey_pot",
    value = "🍯",
    description = "honey pot",
    category = "Food & Drink / food-sweet"
  },
  {
    name = "ice_cream",
    value = "🍨",
    description = "ice cream",
    category = "Food & Drink / food-sweet"
  },
  {
    name = "lollipop",
    value = "🍭",
    description = "lollipop",
    category = "Food & Drink / food-sweet"
  },
  {
    name = "pie",
    value = "🥧",
    description = "pie",
    category = "Food & Drink / food-sweet"
  },
  {
    name = "shaved_ice",
    value = "🍧",
    description = "shaved ice",
    category = "Food & Drink / food-sweet"
  },
  {
    name = "shortcake",
    value = "🍰",
    description = "shortcake",
    category = "Food & Drink / food-sweet"
  },
  {
    name = "soft_ice_cream",
    value = "🍦",
    description = "soft ice cream",
    category = "Food & Drink / food-sweet"
  },
  {
    name = "avocado",
    value = "🥑",
    description = "avocado",
    category = "Food & Drink / food-vegetable"
  },
  {
    name = "beans",
    value = "🫘",
    description = "beans",
    category = "Food & Drink / food-vegetable"
  },
  {
    name = "bell_pepper",
    value = "🫑",
    description = "bell pepper",
    category = "Food & Drink / food-vegetable"
  },
  {
    name = "broccoli",
    value = "🥦",
    description = "broccoli",
    category = "Food & Drink / food-vegetable"
  },
  {
    name = "brown_mushroom",
    value = "🍄‍🟫",
    description = "brown mushroom",
    category = "Food & Drink / food-vegetable"
  },
  {
    name = "carrot",
    value = "🥕",
    description = "carrot",
    category = "Food & Drink / food-vegetable"
  },
  {
    name = "chestnut",
    value = "🌰",
    description = "chestnut",
    category = "Food & Drink / food-vegetable"
  },
  {
    name = "cucumber",
    value = "🥒",
    description = "cucumber",
    category = "Food & Drink / food-vegetable"
  },
  {
    name = "ear_of_corn",
    value = "🌽",
    description = "ear of corn",
    category = "Food & Drink / food-vegetable"
  },
  {
    name = "eggplant",
    value = "🍆",
    description = "eggplant",
    category = "Food & Drink / food-vegetable"
  },
  {
    name = "garlic",
    value = "🧄",
    description = "garlic",
    category = "Food & Drink / food-vegetable"
  },
  {
    name = "ginger_root",
    value = "🫚",
    description = "ginger root",
    category = "Food & Drink / food-vegetable"
  },
  {
    name = "hot_pepper",
    value = "🌶️",
    description = "hot pepper",
    category = "Food & Drink / food-vegetable"
  },
  {
    name = "leafy_green",
    value = "🥬",
    description = "leafy green",
    category = "Food & Drink / food-vegetable"
  },
  {
    name = "onion",
    value = "🧅",
    description = "onion",
    category = "Food & Drink / food-vegetable"
  },
  {
    name = "pea_pod",
    value = "🫛",
    description = "pea pod",
    category = "Food & Drink / food-vegetable"
  },
  {
    name = "peanuts",
    value = "🥜",
    description = "peanuts",
    category = "Food & Drink / food-vegetable"
  },
  {
    name = "potato",
    value = "🥔",
    description = "potato",
    category = "Food & Drink / food-vegetable"
  },
  {
    name = "blue_book",
    value = "📘",
    description = "blue book",
    category = "Objects / book-paper"
  },
  {
    name = "bookmark",
    value = "🔖",
    description = "bookmark",
    category = "Objects / book-paper"
  },
  {
    name = "bookmark_tabs",
    value = "📑",
    description = "bookmark tabs",
    category = "Objects / book-paper"
  },
  {
    name = "books",
    value = "📚",
    description = "books",
    category = "Objects / book-paper"
  },
  {
    name = "closed_book",
    value = "📕",
    description = "closed book",
    category = "Objects / book-paper"
  },
  {
    name = "green_book",
    value = "📗",
    description = "green book",
    category = "Objects / book-paper"
  },
  {
    name = "label",
    value = "🏷️",
    description = "label",
    category = "Objects / book-paper"
  },
  {
    name = "ledger",
    value = "📒",
    description = "ledger",
    category = "Objects / book-paper"
  },
  {
    name = "newspaper",
    value = "📰",
    description = "newspaper",
    category = "Objects / book-paper"
  },
  {
    name = "notebook",
    value = "📓",
    description = "notebook",
    category = "Objects / book-paper"
  },
  {
    name = "notebook_with_decorative_cover",
    value = "📔",
    description = "notebook with decorative cover",
    category = "Objects / book-paper"
  },
  {
    name = "open_book",
    value = "📖",
    description = "open book",
    category = "Objects / book-paper"
  },
  {
    name = "orange_book",
    value = "📙",
    description = "orange book",
    category = "Objects / book-paper"
  },
  {
    name = "page_facing_up",
    value = "📄",
    description = "page facing up",
    category = "Objects / book-paper"
  },
  {
    name = "page_with_curl",
    value = "📃",
    description = "page with curl",
    category = "Objects / book-paper"
  },
  {
    name = "rolled_up_newspaper",
    value = "🗞️",
    description = "rolled-up newspaper",
    category = "Objects / book-paper"
  },
  {
    name = "scroll",
    value = "📜",
    description = "scroll",
    category = "Objects / book-paper"
  },
  {
    name = "backpack",
    value = "🎒",
    description = "backpack",
    category = "Objects / clothing"
  },
  {
    name = "ballet_shoes",
    value = "🩰",
    description = "ballet shoes",
    category = "Objects / clothing"
  },
  {
    name = "bikini",
    value = "👙",
    description = "bikini",
    category = "Objects / clothing"
  },
  {
    name = "billed_cap",
    value = "🧢",
    description = "billed cap",
    category = "Objects / clothing"
  },
  {
    name = "briefs",
    value = "🩲",
    description = "briefs",
    category = "Objects / clothing"
  },
  {
    name = "clutch_bag",
    value = "👝",
    description = "clutch bag",
    category = "Objects / clothing"
  },
  {
    name = "coat",
    value = "🧥",
    description = "coat",
    category = "Objects / clothing"
  },
  {
    name = "crown",
    value = "👑",
    description = "crown",
    category = "Objects / clothing"
  },
  {
    name = "dress",
    value = "👗",
    description = "dress",
    category = "Objects / clothing"
  },
  {
    name = "flat_shoe",
    value = "🥿",
    description = "flat shoe",
    category = "Objects / clothing"
  },
  {
    name = "folding_hand_fan",
    value = "🪭",
    description = "folding hand fan",
    category = "Objects / clothing"
  },
  {
    name = "gem_stone",
    value = "💎",
    description = "gem stone",
    category = "Objects / clothing"
  },
  {
    name = "glasses",
    value = "👓",
    description = "glasses",
    category = "Objects / clothing"
  },
  {
    name = "gloves",
    value = "🧤",
    description = "gloves",
    category = "Objects / clothing"
  },
  {
    name = "goggles",
    value = "🥽",
    description = "goggles",
    category = "Objects / clothing"
  },
  {
    name = "graduation_cap",
    value = "🎓",
    description = "graduation cap",
    category = "Objects / clothing"
  },
  {
    name = "hair_pick",
    value = "🪮",
    description = "hair pick",
    category = "Objects / clothing"
  },
  {
    name = "handbag",
    value = "👜",
    description = "handbag",
    category = "Objects / clothing"
  },
  {
    name = "high_heeled_shoe",
    value = "👠",
    description = "high-heeled shoe",
    category = "Objects / clothing"
  },
  {
    name = "hiking_boot",
    value = "🥾",
    description = "hiking boot",
    category = "Objects / clothing"
  },
  {
    name = "jeans",
    value = "👖",
    description = "jeans",
    category = "Objects / clothing"
  },
  {
    name = "kimono",
    value = "👘",
    description = "kimono",
    category = "Objects / clothing"
  },
  {
    name = "lab_coat",
    value = "🥼",
    description = "lab coat",
    category = "Objects / clothing"
  },
  {
    name = "lipstick",
    value = "💄",
    description = "lipstick",
    category = "Objects / clothing"
  },
  {
    name = "man_s_shoe",
    value = "👞",
    description = "man’s shoe",
    category = "Objects / clothing"
  },
  {
    name = "military_helmet",
    value = "🪖",
    description = "military helmet",
    category = "Objects / clothing"
  },
  {
    name = "necktie",
    value = "👔",
    description = "necktie",
    category = "Objects / clothing"
  },
  {
    name = "one_piece_swimsuit",
    value = "🩱",
    description = "one-piece swimsuit",
    category = "Objects / clothing"
  },
  {
    name = "prayer_beads",
    value = "📿",
    description = "prayer beads",
    category = "Objects / clothing"
  },
  {
    name = "purse",
    value = "👛",
    description = "purse",
    category = "Objects / clothing"
  },
  {
    name = "rescue_worker_s_helmet",
    value = "⛑️",
    description = "rescue worker’s helmet",
    category = "Objects / clothing"
  },
  {
    name = "ring",
    value = "💍",
    description = "ring",
    category = "Objects / clothing"
  },
  {
    name = "running_shoe",
    value = "👟",
    description = "running shoe",
    category = "Objects / clothing"
  },
  {
    name = "safety_vest",
    value = "🦺",
    description = "safety vest",
    category = "Objects / clothing"
  },
  {
    name = "sari",
    value = "🥻",
    description = "sari",
    category = "Objects / clothing"
  },
  {
    name = "scarf",
    value = "🧣",
    description = "scarf",
    category = "Objects / clothing"
  },
  {
    name = "shopping_bags",
    value = "🛍️",
    description = "shopping bags",
    category = "Objects / clothing"
  },
  {
    name = "shorts",
    value = "🩳",
    description = "shorts",
    category = "Objects / clothing"
  },
  {
    name = "socks",
    value = "🧦",
    description = "socks",
    category = "Objects / clothing"
  },
  {
    name = "sunglasses",
    value = "🕶️",
    description = "sunglasses",
    category = "Objects / clothing"
  },
  {
    name = "t_shirt",
    value = "👕",
    description = "t-shirt",
    category = "Objects / clothing"
  },
  {
    name = "thong_sandal",
    value = "🩴",
    description = "thong sandal",
    category = "Objects / clothing"
  },
  {
    name = "top_hat",
    value = "🎩",
    description = "top hat",
    category = "Objects / clothing"
  },
  {
    name = "woman_s_boot",
    value = "👢",
    description = "woman’s boot",
    category = "Objects / clothing"
  },
  {
    name = "woman_s_clothes",
    value = "👚",
    description = "woman’s clothes",
    category = "Objects / clothing"
  },
  {
    name = "woman_s_hat",
    value = "👒",
    description = "woman’s hat",
    category = "Objects / clothing"
  },
  {
    name = "woman_s_sandal",
    value = "👡",
    description = "woman’s sandal",
    category = "Objects / clothing"
  },
  {
    name = "abacus",
    value = "🧮",
    description = "abacus",
    category = "Objects / computer"
  },
  {
    name = "battery",
    value = "🔋",
    description = "battery",
    category = "Objects / computer"
  },
  {
    name = "computer_disk",
    value = "💽",
    description = "computer disk",
    category = "Objects / computer"
  },
  {
    name = "computer_mouse",
    value = "🖱️",
    description = "computer mouse",
    category = "Objects / computer"
  },
  {
    name = "desktop_computer",
    value = "🖥️",
    description = "desktop computer",
    category = "Objects / computer"
  },
  {
    name = "dvd",
    value = "📀",
    description = "dvd",
    category = "Objects / computer"
  },
  {
    name = "electric_plug",
    value = "🔌",
    description = "electric plug",
    category = "Objects / computer"
  },
  {
    name = "floppy_disk",
    value = "💾",
    description = "floppy disk",
    category = "Objects / computer"
  },
  {
    name = "keyboard",
    value = "⌨️",
    description = "keyboard",
    category = "Objects / computer"
  },
  {
    name = "laptop",
    value = "💻",
    description = "laptop",
    category = "Objects / computer"
  },
  {
    name = "low_battery",
    value = "🪫",
    description = "low battery",
    category = "Objects / computer"
  },
  {
    name = "optical_disk",
    value = "💿",
    description = "optical disk",
    category = "Objects / computer"
  },
  {
    name = "printer",
    value = "🖨️",
    description = "printer",
    category = "Objects / computer"
  },
  {
    name = "trackball",
    value = "🖲️",
    description = "trackball",
    category = "Objects / computer"
  },
  {
    name = "basket",
    value = "🧺",
    description = "basket",
    category = "Objects / household"
  },
  {
    name = "bathtub",
    value = "🛁",
    description = "bathtub",
    category = "Objects / household"
  },
  {
    name = "bed",
    value = "🛏️",
    description = "bed",
    category = "Objects / household"
  },
  {
    name = "broom",
    value = "🧹",
    description = "broom",
    category = "Objects / household"
  },
  {
    name = "bubbles",
    value = "🫧",
    description = "bubbles",
    category = "Objects / household"
  },
  {
    name = "bucket",
    value = "🪣",
    description = "bucket",
    category = "Objects / household"
  },
  {
    name = "chair",
    value = "🪑",
    description = "chair",
    category = "Objects / household"
  },
  {
    name = "couch_and_lamp",
    value = "🛋️",
    description = "couch and lamp",
    category = "Objects / household"
  },
  {
    name = "door",
    value = "🚪",
    description = "door",
    category = "Objects / household"
  },
  {
    name = "elevator",
    value = "🛗",
    description = "elevator",
    category = "Objects / household"
  },
  {
    name = "fire_extinguisher",
    value = "🧯",
    description = "fire extinguisher",
    category = "Objects / household"
  },
  {
    name = "lotion_bottle",
    value = "🧴",
    description = "lotion bottle",
    category = "Objects / household"
  },
  {
    name = "mirror",
    value = "🪞",
    description = "mirror",
    category = "Objects / household"
  },
  {
    name = "mouse_trap",
    value = "🪤",
    description = "mouse trap",
    category = "Objects / household"
  },
  {
    name = "plunger",
    value = "🪠",
    description = "plunger",
    category = "Objects / household"
  },
  {
    name = "razor",
    value = "🪒",
    description = "razor",
    category = "Objects / household"
  },
  {
    name = "roll_of_paper",
    value = "🧻",
    description = "roll of paper",
    category = "Objects / household"
  },
  {
    name = "safety_pin",
    value = "🧷",
    description = "safety pin",
    category = "Objects / household"
  },
  {
    name = "shopping_cart",
    value = "🛒",
    description = "shopping cart",
    category = "Objects / household"
  },
  {
    name = "shower",
    value = "🚿",
    description = "shower",
    category = "Objects / household"
  },
  {
    name = "soap",
    value = "🧼",
    description = "soap",
    category = "Objects / household"
  },
  {
    name = "sponge",
    value = "🧽",
    description = "sponge",
    category = "Objects / household"
  },
  {
    name = "toilet",
    value = "🚽",
    description = "toilet",
    category = "Objects / household"
  },
  {
    name = "toothbrush",
    value = "🪥",
    description = "toothbrush",
    category = "Objects / household"
  },
  {
    name = "window",
    value = "🪟",
    description = "window",
    category = "Objects / household"
  },
  {
    name = "camera",
    value = "📷",
    description = "camera",
    category = "Objects / light & video"
  },
  {
    name = "camera_with_flash",
    value = "📸",
    description = "camera with flash",
    category = "Objects / light & video"
  },
  {
    name = "candle",
    value = "🕯️",
    description = "candle",
    category = "Objects / light & video"
  },
  {
    name = "clapper_board",
    value = "🎬",
    description = "clapper board",
    category = "Objects / light & video"
  },
  {
    name = "diya_lamp",
    value = "🪔",
    description = "diya lamp",
    category = "Objects / light & video"
  },
  {
    name = "film_frames",
    value = "🎞️",
    description = "film frames",
    category = "Objects / light & video"
  },
  {
    name = "film_projector",
    value = "📽️",
    description = "film projector",
    category = "Objects / light & video"
  },
  {
    name = "flashlight",
    value = "🔦",
    description = "flashlight",
    category = "Objects / light & video"
  },
  {
    name = "light_bulb",
    value = "💡",
    description = "light bulb",
    category = "Objects / light & video"
  },
  {
    name = "magnifying_glass_tilted_left",
    value = "🔍",
    description = "magnifying glass tilted left",
    category = "Objects / light & video"
  },
  {
    name = "magnifying_glass_tilted_right",
    value = "🔎",
    description = "magnifying glass tilted right",
    category = "Objects / light & video"
  },
  {
    name = "movie_camera",
    value = "🎥",
    description = "movie camera",
    category = "Objects / light & video"
  },
  {
    name = "red_paper_lantern",
    value = "🏮",
    description = "red paper lantern",
    category = "Objects / light & video"
  },
  {
    name = "television",
    value = "📺",
    description = "television",
    category = "Objects / light & video"
  },
  {
    name = "video_camera",
    value = "📹",
    description = "video camera",
    category = "Objects / light & video"
  },
  {
    name = "videocassette",
    value = "📼",
    description = "videocassette",
    category = "Objects / light & video"
  },
  {
    name = "key",
    value = "🔑",
    description = "key",
    category = "Objects / lock"
  },
  {
    name = "locked",
    value = "🔒",
    description = "locked",
    category = "Objects / lock"
  },
  {
    name = "locked_with_key",
    value = "🔐",
    description = "locked with key",
    category = "Objects / lock"
  },
  {
    name = "locked_with_pen",
    value = "🔏",
    description = "locked with pen",
    category = "Objects / lock"
  },
  {
    name = "old_key",
    value = "🗝️",
    description = "old key",
    category = "Objects / lock"
  },
  {
    name = "unlocked",
    value = "🔓",
    description = "unlocked",
    category = "Objects / lock"
  },
  {
    name = "ballot_box_with_ballot",
    value = "🗳️",
    description = "ballot box with ballot",
    category = "Objects / mail"
  },
  {
    name = "closed_mailbox_with_lowered_flag",
    value = "📪",
    description = "closed mailbox with lowered flag",
    category = "Objects / mail"
  },
  {
    name = "closed_mailbox_with_raised_flag",
    value = "📫",
    description = "closed mailbox with raised flag",
    category = "Objects / mail"
  },
  {
    name = "e_mail",
    value = "📧",
    description = "e-mail",
    category = "Objects / mail"
  },
  {
    name = "envelope",
    value = "✉️",
    description = "envelope",
    category = "Objects / mail"
  },
  {
    name = "envelope_with_arrow",
    value = "📩",
    description = "envelope with arrow",
    category = "Objects / mail"
  },
  {
    name = "inbox_tray",
    value = "📥",
    description = "inbox tray",
    category = "Objects / mail"
  },
  {
    name = "incoming_envelope",
    value = "📨",
    description = "incoming envelope",
    category = "Objects / mail"
  },
  {
    name = "open_mailbox_with_lowered_flag",
    value = "📭",
    description = "open mailbox with lowered flag",
    category = "Objects / mail"
  },
  {
    name = "open_mailbox_with_raised_flag",
    value = "📬",
    description = "open mailbox with raised flag",
    category = "Objects / mail"
  },
  {
    name = "outbox_tray",
    value = "📤",
    description = "outbox tray",
    category = "Objects / mail"
  },
  {
    name = "package",
    value = "📦",
    description = "package",
    category = "Objects / mail"
  },
  {
    name = "postbox",
    value = "📮",
    description = "postbox",
    category = "Objects / mail"
  },
  {
    name = "adhesive_bandage",
    value = "🩹",
    description = "adhesive bandage",
    category = "Objects / medical"
  },
  {
    name = "crutch",
    value = "🩼",
    description = "crutch",
    category = "Objects / medical"
  },
  {
    name = "drop_of_blood",
    value = "🩸",
    description = "drop of blood",
    category = "Objects / medical"
  },
  {
    name = "pill",
    value = "💊",
    description = "pill",
    category = "Objects / medical"
  },
  {
    name = "stethoscope",
    value = "🩺",
    description = "stethoscope",
    category = "Objects / medical"
  },
  {
    name = "syringe",
    value = "💉",
    description = "syringe",
    category = "Objects / medical"
  },
  {
    name = "x_ray",
    value = "🩻",
    description = "x-ray",
    category = "Objects / medical"
  },
  {
    name = "chart_increasing_with_yen",
    value = "💹",
    description = "chart increasing with yen",
    category = "Objects / money"
  },
  {
    name = "coin",
    value = "🪙",
    description = "coin",
    category = "Objects / money"
  },
  {
    name = "credit_card",
    value = "💳",
    description = "credit card",
    category = "Objects / money"
  },
  {
    name = "dollar_banknote",
    value = "💵",
    description = "dollar banknote",
    category = "Objects / money"
  },
  {
    name = "euro_banknote",
    value = "💶",
    description = "euro banknote",
    category = "Objects / money"
  },
  {
    name = "money_bag",
    value = "💰",
    description = "money bag",
    category = "Objects / money"
  },
  {
    name = "money_with_wings",
    value = "💸",
    description = "money with wings",
    category = "Objects / money"
  },
  {
    name = "pound_banknote",
    value = "💷",
    description = "pound banknote",
    category = "Objects / money"
  },
  {
    name = "receipt",
    value = "🧾",
    description = "receipt",
    category = "Objects / money"
  },
  {
    name = "yen_banknote",
    value = "💴",
    description = "yen banknote",
    category = "Objects / money"
  },
  {
    name = "control_knobs",
    value = "🎛️",
    description = "control knobs",
    category = "Objects / music"
  },
  {
    name = "headphone",
    value = "🎧",
    description = "headphone",
    category = "Objects / music"
  },
  {
    name = "level_slider",
    value = "🎚️",
    description = "level slider",
    category = "Objects / music"
  },
  {
    name = "microphone",
    value = "🎤",
    description = "microphone",
    category = "Objects / music"
  },
  {
    name = "musical_note",
    value = "🎵",
    description = "musical note",
    category = "Objects / music"
  },
  {
    name = "musical_notes",
    value = "🎶",
    description = "musical notes",
    category = "Objects / music"
  },
  {
    name = "musical_score",
    value = "🎼",
    description = "musical score",
    category = "Objects / music"
  },
  {
    name = "radio",
    value = "📻",
    description = "radio",
    category = "Objects / music"
  },
  {
    name = "studio_microphone",
    value = "🎙️",
    description = "studio microphone",
    category = "Objects / music"
  },
  {
    name = "accordion",
    value = "🪗",
    description = "accordion",
    category = "Objects / musical-instrument"
  },
  {
    name = "banjo",
    value = "🪕",
    description = "banjo",
    category = "Objects / musical-instrument"
  },
  {
    name = "drum",
    value = "🥁",
    description = "drum",
    category = "Objects / musical-instrument"
  },
  {
    name = "flute",
    value = "🪈",
    description = "flute",
    category = "Objects / musical-instrument"
  },
  {
    name = "guitar",
    value = "🎸",
    description = "guitar",
    category = "Objects / musical-instrument"
  },
  {
    name = "long_drum",
    value = "🪘",
    description = "long drum",
    category = "Objects / musical-instrument"
  },
  {
    name = "maracas",
    value = "🪇",
    description = "maracas",
    category = "Objects / musical-instrument"
  },
  {
    name = "musical_keyboard",
    value = "🎹",
    description = "musical keyboard",
    category = "Objects / musical-instrument"
  },
  {
    name = "saxophone",
    value = "🎷",
    description = "saxophone",
    category = "Objects / musical-instrument"
  },
  {
    name = "trumpet",
    value = "🎺",
    description = "trumpet",
    category = "Objects / musical-instrument"
  },
  {
    name = "violin",
    value = "🎻",
    description = "violin",
    category = "Objects / musical-instrument"
  },
  {
    name = "bar_chart",
    value = "📊",
    description = "bar chart",
    category = "Objects / office"
  },
  {
    name = "briefcase",
    value = "💼",
    description = "briefcase",
    category = "Objects / office"
  },
  {
    name = "calendar",
    value = "📅",
    description = "calendar",
    category = "Objects / office"
  },
  {
    name = "card_file_box",
    value = "🗃️",
    description = "card file box",
    category = "Objects / office"
  },
  {
    name = "card_index",
    value = "📇",
    description = "card index",
    category = "Objects / office"
  },
  {
    name = "card_index_dividers",
    value = "🗂️",
    description = "card index dividers",
    category = "Objects / office"
  },
  {
    name = "chart_decreasing",
    value = "📉",
    description = "chart decreasing",
    category = "Objects / office"
  },
  {
    name = "chart_increasing",
    value = "📈",
    description = "chart increasing",
    category = "Objects / office"
  },
  {
    name = "clipboard",
    value = "📋",
    description = "clipboard",
    category = "Objects / office"
  },
  {
    name = "file_cabinet",
    value = "🗄️",
    description = "file cabinet",
    category = "Objects / office"
  },
  {
    name = "file_folder",
    value = "📁",
    description = "file folder",
    category = "Objects / office"
  },
  {
    name = "linked_paperclips",
    value = "🖇️",
    description = "linked paperclips",
    category = "Objects / office"
  },
  {
    name = "open_file_folder",
    value = "📂",
    description = "open file folder",
    category = "Objects / office"
  },
  {
    name = "paperclip",
    value = "📎",
    description = "paperclip",
    category = "Objects / office"
  },
  {
    name = "pushpin",
    value = "📌",
    description = "pushpin",
    category = "Objects / office"
  },
  {
    name = "round_pushpin",
    value = "📍",
    description = "round pushpin",
    category = "Objects / office"
  },
  {
    name = "scissors",
    value = "✂️",
    description = "scissors",
    category = "Objects / office"
  },
  {
    name = "spiral_calendar",
    value = "🗓️",
    description = "spiral calendar",
    category = "Objects / office"
  },
  {
    name = "spiral_notepad",
    value = "🗒️",
    description = "spiral notepad",
    category = "Objects / office"
  },
  {
    name = "straight_ruler",
    value = "📏",
    description = "straight ruler",
    category = "Objects / office"
  },
  {
    name = "tear_off_calendar",
    value = "📆",
    description = "tear-off calendar",
    category = "Objects / office"
  },
  {
    name = "triangular_ruler",
    value = "📐",
    description = "triangular ruler",
    category = "Objects / office"
  },
  {
    name = "wastebasket",
    value = "🗑️",
    description = "wastebasket",
    category = "Objects / office"
  },
  {
    name = "cigarette",
    value = "🚬",
    description = "cigarette",
    category = "Objects / other-object"
  },
  {
    name = "coffin",
    value = "⚰️",
    description = "coffin",
    category = "Objects / other-object"
  },
  {
    name = "funeral_urn",
    value = "⚱️",
    description = "funeral urn",
    category = "Objects / other-object"
  },
  {
    name = "hamsa",
    value = "🪬",
    description = "hamsa",
    category = "Objects / other-object"
  },
  {
    name = "headstone",
    value = "🪦",
    description = "headstone",
    category = "Objects / other-object"
  },
  {
    name = "identification_card",
    value = "🪪",
    description = "identification card",
    category = "Objects / other-object"
  },
  {
    name = "moai",
    value = "🗿",
    description = "moai",
    category = "Objects / other-object"
  },
  {
    name = "nazar_amulet",
    value = "🧿",
    description = "nazar amulet",
    category = "Objects / other-object"
  },
  {
    name = "placard",
    value = "🪧",
    description = "placard",
    category = "Objects / other-object"
  },
  {
    name = "fax_machine",
    value = "📠",
    description = "fax machine",
    category = "Objects / phone"
  },
  {
    name = "mobile_phone",
    value = "📱",
    description = "mobile phone",
    category = "Objects / phone"
  },
  {
    name = "mobile_phone_with_arrow",
    value = "📲",
    description = "mobile phone with arrow",
    category = "Objects / phone"
  },
  {
    name = "pager",
    value = "📟",
    description = "pager",
    category = "Objects / phone"
  },
  {
    name = "telephone",
    value = "☎️",
    description = "telephone",
    category = "Objects / phone"
  },
  {
    name = "telephone_receiver",
    value = "📞",
    description = "telephone receiver",
    category = "Objects / phone"
  },
  {
    name = "alembic",
    value = "⚗️",
    description = "alembic",
    category = "Objects / science"
  },
  {
    name = "dna",
    value = "🧬",
    description = "dna",
    category = "Objects / science"
  },
  {
    name = "microscope",
    value = "🔬",
    description = "microscope",
    category = "Objects / science"
  },
  {
    name = "petri_dish",
    value = "🧫",
    description = "petri dish",
    category = "Objects / science"
  },
  {
    name = "satellite_antenna",
    value = "📡",
    description = "satellite antenna",
    category = "Objects / science"
  },
  {
    name = "telescope",
    value = "🔭",
    description = "telescope",
    category = "Objects / science"
  },
  {
    name = "test_tube",
    value = "🧪",
    description = "test tube",
    category = "Objects / science"
  },
  {
    name = "bell",
    value = "🔔",
    description = "bell",
    category = "Objects / sound"
  },
  {
    name = "bell_with_slash",
    value = "🔕",
    description = "bell with slash",
    category = "Objects / sound"
  },
  {
    name = "loudspeaker",
    value = "📢",
    description = "loudspeaker",
    category = "Objects / sound"
  },
  {
    name = "megaphone",
    value = "📣",
    description = "megaphone",
    category = "Objects / sound"
  },
  {
    name = "muted_speaker",
    value = "🔇",
    description = "muted speaker",
    category = "Objects / sound"
  },
  {
    name = "postal_horn",
    value = "📯",
    description = "postal horn",
    category = "Objects / sound"
  },
  {
    name = "speaker_high_volume",
    value = "🔊",
    description = "speaker high volume",
    category = "Objects / sound"
  },
  {
    name = "speaker_low_volume",
    value = "🔈",
    description = "speaker low volume",
    category = "Objects / sound"
  },
  {
    name = "speaker_medium_volume",
    value = "🔉",
    description = "speaker medium volume",
    category = "Objects / sound"
  },
  {
    name = "axe",
    value = "🪓",
    description = "axe",
    category = "Objects / tool"
  },
  {
    name = "balance_scale",
    value = "⚖️",
    description = "balance scale",
    category = "Objects / tool"
  },
  {
    name = "bomb",
    value = "💣",
    description = "bomb",
    category = "Objects / tool"
  },
  {
    name = "boomerang",
    value = "🪃",
    description = "boomerang",
    category = "Objects / tool"
  },
  {
    name = "bow_and_arrow",
    value = "🏹",
    description = "bow and arrow",
    category = "Objects / tool"
  },
  {
    name = "broken_chain",
    value = "⛓️‍💥",
    description = "broken chain",
    category = "Objects / tool"
  },
  {
    name = "carpentry_saw",
    value = "🪚",
    description = "carpentry saw",
    category = "Objects / tool"
  },
  {
    name = "chains",
    value = "⛓️",
    description = "chains",
    category = "Objects / tool"
  },
  {
    name = "clamp",
    value = "🗜️",
    description = "clamp",
    category = "Objects / tool"
  },
  {
    name = "crossed_swords",
    value = "⚔️",
    description = "crossed swords",
    category = "Objects / tool"
  },
  {
    name = "dagger",
    value = "🗡️",
    description = "dagger",
    category = "Objects / tool"
  },
  {
    name = "gear",
    value = "⚙️",
    description = "gear",
    category = "Objects / tool"
  },
  {
    name = "hammer",
    value = "🔨",
    description = "hammer",
    category = "Objects / tool"
  },
  {
    name = "hammer_and_pick",
    value = "⚒️",
    description = "hammer and pick",
    category = "Objects / tool"
  },
  {
    name = "hammer_and_wrench",
    value = "🛠️",
    description = "hammer and wrench",
    category = "Objects / tool"
  },
  {
    name = "hook",
    value = "🪝",
    description = "hook",
    category = "Objects / tool"
  },
  {
    name = "ladder",
    value = "🪜",
    description = "ladder",
    category = "Objects / tool"
  },
  {
    name = "link",
    value = "🔗",
    description = "link",
    category = "Objects / tool"
  },
  {
    name = "magnet",
    value = "🧲",
    description = "magnet",
    category = "Objects / tool"
  },
  {
    name = "nut_and_bolt",
    value = "🔩",
    description = "nut and bolt",
    category = "Objects / tool"
  },
  {
    name = "pick",
    value = "⛏️",
    description = "pick",
    category = "Objects / tool"
  },
  {
    name = "screwdriver",
    value = "🪛",
    description = "screwdriver",
    category = "Objects / tool"
  },
  {
    name = "shield",
    value = "🛡️",
    description = "shield",
    category = "Objects / tool"
  },
  {
    name = "toolbox",
    value = "🧰",
    description = "toolbox",
    category = "Objects / tool"
  },
  {
    name = "white_cane",
    value = "🦯",
    description = "white cane",
    category = "Objects / tool"
  },
  {
    name = "wrench",
    value = "🔧",
    description = "wrench",
    category = "Objects / tool"
  },
  {
    name = "black_nib",
    value = "✒️",
    description = "black nib",
    category = "Objects / writing"
  },
  {
    name = "crayon",
    value = "🖍️",
    description = "crayon",
    category = "Objects / writing"
  },
  {
    name = "fountain_pen",
    value = "🖋️",
    description = "fountain pen",
    category = "Objects / writing"
  },
  {
    name = "memo",
    value = "📝",
    description = "memo",
    category = "Objects / writing"
  },
  {
    name = "paintbrush",
    value = "🖌️",
    description = "paintbrush",
    category = "Objects / writing"
  },
  {
    name = "pen",
    value = "🖊️",
    description = "pen",
    category = "Objects / writing"
  },
  {
    name = "pencil",
    value = "✏️",
    description = "pencil",
    category = "Objects / writing"
  },
  {
    name = "anatomical_heart",
    value = "🫀",
    description = "anatomical heart",
    category = "People & Body / body-parts"
  },
  {
    name = "biting_lip",
    value = "🫦",
    description = "biting lip",
    category = "People & Body / body-parts"
  },
  {
    name = "bone",
    value = "🦴",
    description = "bone",
    category = "People & Body / body-parts"
  },
  {
    name = "brain",
    value = "🧠",
    description = "brain",
    category = "People & Body / body-parts"
  },
  {
    name = "ear",
    value = "👂",
    description = "ear",
    category = "People & Body / body-parts"
  },
  {
    name = "ear_dark_skin_tone",
    value = "👂🏿",
    description = "ear: dark skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "ear_light_skin_tone",
    value = "👂🏻",
    description = "ear: light skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "ear_medium_dark_skin_tone",
    value = "👂🏾",
    description = "ear: medium-dark skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "ear_medium_light_skin_tone",
    value = "👂🏼",
    description = "ear: medium-light skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "ear_medium_skin_tone",
    value = "👂🏽",
    description = "ear: medium skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "ear_with_hearing_aid",
    value = "🦻",
    description = "ear with hearing aid",
    category = "People & Body / body-parts"
  },
  {
    name = "ear_with_hearing_aid_dark_skin_tone",
    value = "🦻🏿",
    description = "ear with hearing aid: dark skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "ear_with_hearing_aid_light_skin_tone",
    value = "🦻🏻",
    description = "ear with hearing aid: light skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "ear_with_hearing_aid_medium_dark_skin_tone",
    value = "🦻🏾",
    description = "ear with hearing aid: medium-dark skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "ear_with_hearing_aid_medium_light_skin_tone",
    value = "🦻🏼",
    description = "ear with hearing aid: medium-light skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "ear_with_hearing_aid_medium_skin_tone",
    value = "🦻🏽",
    description = "ear with hearing aid: medium skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "eye",
    value = "👁️",
    description = "eye",
    category = "People & Body / body-parts"
  },
  {
    name = "eyes",
    value = "👀",
    description = "eyes",
    category = "People & Body / body-parts"
  },
  {
    name = "flexed_biceps",
    value = "💪",
    description = "flexed biceps",
    category = "People & Body / body-parts"
  },
  {
    name = "flexed_biceps_dark_skin_tone",
    value = "💪🏿",
    description = "flexed biceps: dark skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "flexed_biceps_light_skin_tone",
    value = "💪🏻",
    description = "flexed biceps: light skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "flexed_biceps_medium_dark_skin_tone",
    value = "💪🏾",
    description = "flexed biceps: medium-dark skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "flexed_biceps_medium_light_skin_tone",
    value = "💪🏼",
    description = "flexed biceps: medium-light skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "flexed_biceps_medium_skin_tone",
    value = "💪🏽",
    description = "flexed biceps: medium skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "foot",
    value = "🦶",
    description = "foot",
    category = "People & Body / body-parts"
  },
  {
    name = "foot_dark_skin_tone",
    value = "🦶🏿",
    description = "foot: dark skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "foot_light_skin_tone",
    value = "🦶🏻",
    description = "foot: light skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "foot_medium_dark_skin_tone",
    value = "🦶🏾",
    description = "foot: medium-dark skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "foot_medium_light_skin_tone",
    value = "🦶🏼",
    description = "foot: medium-light skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "foot_medium_skin_tone",
    value = "🦶🏽",
    description = "foot: medium skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "leg",
    value = "🦵",
    description = "leg",
    category = "People & Body / body-parts"
  },
  {
    name = "leg_dark_skin_tone",
    value = "🦵🏿",
    description = "leg: dark skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "leg_light_skin_tone",
    value = "🦵🏻",
    description = "leg: light skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "leg_medium_dark_skin_tone",
    value = "🦵🏾",
    description = "leg: medium-dark skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "leg_medium_light_skin_tone",
    value = "🦵🏼",
    description = "leg: medium-light skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "leg_medium_skin_tone",
    value = "🦵🏽",
    description = "leg: medium skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "lungs",
    value = "🫁",
    description = "lungs",
    category = "People & Body / body-parts"
  },
  {
    name = "mechanical_arm",
    value = "🦾",
    description = "mechanical arm",
    category = "People & Body / body-parts"
  },
  {
    name = "mechanical_leg",
    value = "🦿",
    description = "mechanical leg",
    category = "People & Body / body-parts"
  },
  {
    name = "mouth",
    value = "👄",
    description = "mouth",
    category = "People & Body / body-parts"
  },
  {
    name = "nose",
    value = "👃",
    description = "nose",
    category = "People & Body / body-parts"
  },
  {
    name = "nose_dark_skin_tone",
    value = "👃🏿",
    description = "nose: dark skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "nose_light_skin_tone",
    value = "👃🏻",
    description = "nose: light skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "nose_medium_dark_skin_tone",
    value = "👃🏾",
    description = "nose: medium-dark skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "nose_medium_light_skin_tone",
    value = "👃🏼",
    description = "nose: medium-light skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "nose_medium_skin_tone",
    value = "👃🏽",
    description = "nose: medium skin tone",
    category = "People & Body / body-parts"
  },
  {
    name = "tongue",
    value = "👅",
    description = "tongue",
    category = "People & Body / body-parts"
  },
  {
    name = "tooth",
    value = "🦷",
    description = "tooth",
    category = "People & Body / body-parts"
  },
  {
    name = "couple_with_heart",
    value = "💑",
    description = "couple with heart",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_dark_skin_tone",
    value = "💑🏿",
    description = "couple with heart: dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_light_skin_tone",
    value = "💑🏻",
    description = "couple with heart: light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man",
    value = "👨‍❤️‍👨",
    description = "couple with heart: man, man",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_dark_skin_tone",
    value = "👨🏿‍❤️‍👨🏿",
    description = "couple with heart: man, man, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_dark_skin_tone_light_skin_tone",
    value = "👨🏿‍❤️‍👨🏻",
    description = "couple with heart: man, man, dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_dark_skin_tone_medium_dark_skin_tone",
    value = "👨🏿‍❤️‍👨🏾",
    description = "couple with heart: man, man, dark skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_dark_skin_tone_medium_light_skin_tone",
    value = "👨🏿‍❤️‍👨🏼",
    description = "couple with heart: man, man, dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_dark_skin_tone_medium_skin_tone",
    value = "👨🏿‍❤️‍👨🏽",
    description = "couple with heart: man, man, dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_light_skin_tone",
    value = "👨🏻‍❤️‍👨🏻",
    description = "couple with heart: man, man, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_light_skin_tone_dark_skin_tone",
    value = "👨🏻‍❤️‍👨🏿",
    description = "couple with heart: man, man, light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_light_skin_tone_medium_dark_skin_tone",
    value = "👨🏻‍❤️‍👨🏾",
    description = "couple with heart: man, man, light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_light_skin_tone_medium_light_skin_tone",
    value = "👨🏻‍❤️‍👨🏼",
    description = "couple with heart: man, man, light skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_light_skin_tone_medium_skin_tone",
    value = "👨🏻‍❤️‍👨🏽",
    description = "couple with heart: man, man, light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_medium_dark_skin_tone",
    value = "👨🏾‍❤️‍👨🏾",
    description = "couple with heart: man, man, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_medium_dark_skin_tone_dark_skin_tone",
    value = "👨🏾‍❤️‍👨🏿",
    description = "couple with heart: man, man, medium-dark skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_medium_dark_skin_tone_light_skin_tone",
    value = "👨🏾‍❤️‍👨🏻",
    description = "couple with heart: man, man, medium-dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_medium_dark_skin_tone_medium_light_skin_tone",
    value = "👨🏾‍❤️‍👨🏼",
    description = "couple with heart: man, man, medium-dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_medium_dark_skin_tone_medium_skin_tone",
    value = "👨🏾‍❤️‍👨🏽",
    description = "couple with heart: man, man, medium-dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_medium_light_skin_tone",
    value = "👨🏼‍❤️‍👨🏼",
    description = "couple with heart: man, man, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_medium_light_skin_tone_dark_skin_tone",
    value = "👨🏼‍❤️‍👨🏿",
    description = "couple with heart: man, man, medium-light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_medium_light_skin_tone_light_skin_tone",
    value = "👨🏼‍❤️‍👨🏻",
    description = "couple with heart: man, man, medium-light skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_medium_light_skin_tone_medium_dark_skin_tone",
    value = "👨🏼‍❤️‍👨🏾",
    description = "couple with heart: man, man, medium-light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_medium_light_skin_tone_medium_skin_tone",
    value = "👨🏼‍❤️‍👨🏽",
    description = "couple with heart: man, man, medium-light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_medium_skin_tone",
    value = "👨🏽‍❤️‍👨🏽",
    description = "couple with heart: man, man, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_medium_skin_tone_dark_skin_tone",
    value = "👨🏽‍❤️‍👨🏿",
    description = "couple with heart: man, man, medium skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_medium_skin_tone_light_skin_tone",
    value = "👨🏽‍❤️‍👨🏻",
    description = "couple with heart: man, man, medium skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_medium_skin_tone_medium_dark_skin_tone",
    value = "👨🏽‍❤️‍👨🏾",
    description = "couple with heart: man, man, medium skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_man_man_medium_skin_tone_medium_light_skin_tone",
    value = "👨🏽‍❤️‍👨🏼",
    description = "couple with heart: man, man, medium skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_medium_dark_skin_tone",
    value = "💑🏾",
    description = "couple with heart: medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_medium_light_skin_tone",
    value = "💑🏼",
    description = "couple with heart: medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_medium_skin_tone",
    value = "💑🏽",
    description = "couple with heart: medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_person_person_dark_skin_tone_light_skin_tone",
    value = "🧑🏿‍❤️‍🧑🏻",
    description = "couple with heart: person, person, dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_person_person_dark_skin_tone_medium_dark_skin_tone",
    value = "🧑🏿‍❤️‍🧑🏾",
    description = "couple with heart: person, person, dark skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_person_person_dark_skin_tone_medium_light_skin_tone",
    value = "🧑🏿‍❤️‍🧑🏼",
    description = "couple with heart: person, person, dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_person_person_dark_skin_tone_medium_skin_tone",
    value = "🧑🏿‍❤️‍🧑🏽",
    description = "couple with heart: person, person, dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_person_person_light_skin_tone_dark_skin_tone",
    value = "🧑🏻‍❤️‍🧑🏿",
    description = "couple with heart: person, person, light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_person_person_light_skin_tone_medium_dark_skin_tone",
    value = "🧑🏻‍❤️‍🧑🏾",
    description = "couple with heart: person, person, light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_person_person_light_skin_tone_medium_light_skin_tone",
    value = "🧑🏻‍❤️‍🧑🏼",
    description = "couple with heart: person, person, light skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_person_person_light_skin_tone_medium_skin_tone",
    value = "🧑🏻‍❤️‍🧑🏽",
    description = "couple with heart: person, person, light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_person_person_medium_dark_skin_tone_dark_skin_tone",
    value = "🧑🏾‍❤️‍🧑🏿",
    description = "couple with heart: person, person, medium-dark skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_person_person_medium_dark_skin_tone_light_skin_tone",
    value = "🧑🏾‍❤️‍🧑🏻",
    description = "couple with heart: person, person, medium-dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_person_person_medium_dark_skin_tone_medium_light_skin_tone",
    value = "🧑🏾‍❤️‍🧑🏼",
    description = "couple with heart: person, person, medium-dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_person_person_medium_dark_skin_tone_medium_skin_tone",
    value = "🧑🏾‍❤️‍🧑🏽",
    description = "couple with heart: person, person, medium-dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_person_person_medium_light_skin_tone_dark_skin_tone",
    value = "🧑🏼‍❤️‍🧑🏿",
    description = "couple with heart: person, person, medium-light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_person_person_medium_light_skin_tone_light_skin_tone",
    value = "🧑🏼‍❤️‍🧑🏻",
    description = "couple with heart: person, person, medium-light skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_person_person_medium_light_skin_tone_medium_dark_skin_tone",
    value = "🧑🏼‍❤️‍🧑🏾",
    description = "couple with heart: person, person, medium-light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_person_person_medium_light_skin_tone_medium_skin_tone",
    value = "🧑🏼‍❤️‍🧑🏽",
    description = "couple with heart: person, person, medium-light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_person_person_medium_skin_tone_dark_skin_tone",
    value = "🧑🏽‍❤️‍🧑🏿",
    description = "couple with heart: person, person, medium skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_person_person_medium_skin_tone_light_skin_tone",
    value = "🧑🏽‍❤️‍🧑🏻",
    description = "couple with heart: person, person, medium skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_person_person_medium_skin_tone_medium_dark_skin_tone",
    value = "🧑🏽‍❤️‍🧑🏾",
    description = "couple with heart: person, person, medium skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_person_person_medium_skin_tone_medium_light_skin_tone",
    value = "🧑🏽‍❤️‍🧑🏼",
    description = "couple with heart: person, person, medium skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man",
    value = "👩‍❤️‍👨",
    description = "couple with heart: woman, man",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_dark_skin_tone",
    value = "👩🏿‍❤️‍👨🏿",
    description = "couple with heart: woman, man, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_dark_skin_tone_light_skin_tone",
    value = "👩🏿‍❤️‍👨🏻",
    description = "couple with heart: woman, man, dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_dark_skin_tone_medium_dark_skin_tone",
    value = "👩🏿‍❤️‍👨🏾",
    description = "couple with heart: woman, man, dark skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_dark_skin_tone_medium_light_skin_tone",
    value = "👩🏿‍❤️‍👨🏼",
    description = "couple with heart: woman, man, dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_dark_skin_tone_medium_skin_tone",
    value = "👩🏿‍❤️‍👨🏽",
    description = "couple with heart: woman, man, dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_light_skin_tone",
    value = "👩🏻‍❤️‍👨🏻",
    description = "couple with heart: woman, man, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_light_skin_tone_dark_skin_tone",
    value = "👩🏻‍❤️‍👨🏿",
    description = "couple with heart: woman, man, light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_light_skin_tone_medium_dark_skin_tone",
    value = "👩🏻‍❤️‍👨🏾",
    description = "couple with heart: woman, man, light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_light_skin_tone_medium_light_skin_tone",
    value = "👩🏻‍❤️‍👨🏼",
    description = "couple with heart: woman, man, light skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_light_skin_tone_medium_skin_tone",
    value = "👩🏻‍❤️‍👨🏽",
    description = "couple with heart: woman, man, light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_medium_dark_skin_tone",
    value = "👩🏾‍❤️‍👨🏾",
    description = "couple with heart: woman, man, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_medium_dark_skin_tone_dark_skin_tone",
    value = "👩🏾‍❤️‍👨🏿",
    description = "couple with heart: woman, man, medium-dark skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_medium_dark_skin_tone_light_skin_tone",
    value = "👩🏾‍❤️‍👨🏻",
    description = "couple with heart: woman, man, medium-dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_medium_dark_skin_tone_medium_light_skin_tone",
    value = "👩🏾‍❤️‍👨🏼",
    description = "couple with heart: woman, man, medium-dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_medium_dark_skin_tone_medium_skin_tone",
    value = "👩🏾‍❤️‍👨🏽",
    description = "couple with heart: woman, man, medium-dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_medium_light_skin_tone",
    value = "👩🏼‍❤️‍👨🏼",
    description = "couple with heart: woman, man, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_medium_light_skin_tone_dark_skin_tone",
    value = "👩🏼‍❤️‍👨🏿",
    description = "couple with heart: woman, man, medium-light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_medium_light_skin_tone_light_skin_tone",
    value = "👩🏼‍❤️‍👨🏻",
    description = "couple with heart: woman, man, medium-light skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_medium_light_skin_tone_medium_dark_skin_tone",
    value = "👩🏼‍❤️‍👨🏾",
    description = "couple with heart: woman, man, medium-light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_medium_light_skin_tone_medium_skin_tone",
    value = "👩🏼‍❤️‍👨🏽",
    description = "couple with heart: woman, man, medium-light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_medium_skin_tone",
    value = "👩🏽‍❤️‍👨🏽",
    description = "couple with heart: woman, man, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_medium_skin_tone_dark_skin_tone",
    value = "👩🏽‍❤️‍👨🏿",
    description = "couple with heart: woman, man, medium skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_medium_skin_tone_light_skin_tone",
    value = "👩🏽‍❤️‍👨🏻",
    description = "couple with heart: woman, man, medium skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_medium_skin_tone_medium_dark_skin_tone",
    value = "👩🏽‍❤️‍👨🏾",
    description = "couple with heart: woman, man, medium skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_man_medium_skin_tone_medium_light_skin_tone",
    value = "👩🏽‍❤️‍👨🏼",
    description = "couple with heart: woman, man, medium skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman",
    value = "👩‍❤️‍👩",
    description = "couple with heart: woman, woman",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_dark_skin_tone",
    value = "👩🏿‍❤️‍👩🏿",
    description = "couple with heart: woman, woman, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_dark_skin_tone_light_skin_tone",
    value = "👩🏿‍❤️‍👩🏻",
    description = "couple with heart: woman, woman, dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_dark_skin_tone_medium_dark_skin_tone",
    value = "👩🏿‍❤️‍👩🏾",
    description = "couple with heart: woman, woman, dark skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_dark_skin_tone_medium_light_skin_tone",
    value = "👩🏿‍❤️‍👩🏼",
    description = "couple with heart: woman, woman, dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_dark_skin_tone_medium_skin_tone",
    value = "👩🏿‍❤️‍👩🏽",
    description = "couple with heart: woman, woman, dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_light_skin_tone",
    value = "👩🏻‍❤️‍👩🏻",
    description = "couple with heart: woman, woman, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_light_skin_tone_dark_skin_tone",
    value = "👩🏻‍❤️‍👩🏿",
    description = "couple with heart: woman, woman, light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_light_skin_tone_medium_dark_skin_tone",
    value = "👩🏻‍❤️‍👩🏾",
    description = "couple with heart: woman, woman, light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_light_skin_tone_medium_light_skin_tone",
    value = "👩🏻‍❤️‍👩🏼",
    description = "couple with heart: woman, woman, light skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_light_skin_tone_medium_skin_tone",
    value = "👩🏻‍❤️‍👩🏽",
    description = "couple with heart: woman, woman, light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_medium_dark_skin_tone",
    value = "👩🏾‍❤️‍👩🏾",
    description = "couple with heart: woman, woman, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_medium_dark_skin_tone_dark_skin_tone",
    value = "👩🏾‍❤️‍👩🏿",
    description = "couple with heart: woman, woman, medium-dark skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_medium_dark_skin_tone_light_skin_tone",
    value = "👩🏾‍❤️‍👩🏻",
    description = "couple with heart: woman, woman, medium-dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_medium_dark_skin_tone_medium_light_skin_tone",
    value = "👩🏾‍❤️‍👩🏼",
    description = "couple with heart: woman, woman, medium-dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_medium_dark_skin_tone_medium_skin_tone",
    value = "👩🏾‍❤️‍👩🏽",
    description = "couple with heart: woman, woman, medium-dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_medium_light_skin_tone",
    value = "👩🏼‍❤️‍👩🏼",
    description = "couple with heart: woman, woman, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_medium_light_skin_tone_dark_skin_tone",
    value = "👩🏼‍❤️‍👩🏿",
    description = "couple with heart: woman, woman, medium-light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_medium_light_skin_tone_light_skin_tone",
    value = "👩🏼‍❤️‍👩🏻",
    description = "couple with heart: woman, woman, medium-light skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_medium_light_skin_tone_medium_dark_skin_tone",
    value = "👩🏼‍❤️‍👩🏾",
    description = "couple with heart: woman, woman, medium-light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_medium_light_skin_tone_medium_skin_tone",
    value = "👩🏼‍❤️‍👩🏽",
    description = "couple with heart: woman, woman, medium-light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_medium_skin_tone",
    value = "👩🏽‍❤️‍👩🏽",
    description = "couple with heart: woman, woman, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_medium_skin_tone_dark_skin_tone",
    value = "👩🏽‍❤️‍👩🏿",
    description = "couple with heart: woman, woman, medium skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_medium_skin_tone_light_skin_tone",
    value = "👩🏽‍❤️‍👩🏻",
    description = "couple with heart: woman, woman, medium skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_medium_skin_tone_medium_dark_skin_tone",
    value = "👩🏽‍❤️‍👩🏾",
    description = "couple with heart: woman, woman, medium skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "couple_with_heart_woman_woman_medium_skin_tone_medium_light_skin_tone",
    value = "👩🏽‍❤️‍👩🏼",
    description = "couple with heart: woman, woman, medium skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "family_man_boy",
    value = "👨‍👦",
    description = "family: man, boy",
    category = "People & Body / family"
  },
  {
    name = "family_man_boy_boy",
    value = "👨‍👦‍👦",
    description = "family: man, boy, boy",
    category = "People & Body / family"
  },
  {
    name = "family_man_girl",
    value = "👨‍👧",
    description = "family: man, girl",
    category = "People & Body / family"
  },
  {
    name = "family_man_girl_boy",
    value = "👨‍👧‍👦",
    description = "family: man, girl, boy",
    category = "People & Body / family"
  },
  {
    name = "family_man_girl_girl",
    value = "👨‍👧‍👧",
    description = "family: man, girl, girl",
    category = "People & Body / family"
  },
  {
    name = "family_man_man_boy",
    value = "👨‍👨‍👦",
    description = "family: man, man, boy",
    category = "People & Body / family"
  },
  {
    name = "family_man_man_boy_boy",
    value = "👨‍👨‍👦‍👦",
    description = "family: man, man, boy, boy",
    category = "People & Body / family"
  },
  {
    name = "family_man_man_girl",
    value = "👨‍👨‍👧",
    description = "family: man, man, girl",
    category = "People & Body / family"
  },
  {
    name = "family_man_man_girl_boy",
    value = "👨‍👨‍👧‍👦",
    description = "family: man, man, girl, boy",
    category = "People & Body / family"
  },
  {
    name = "family_man_man_girl_girl",
    value = "👨‍👨‍👧‍👧",
    description = "family: man, man, girl, girl",
    category = "People & Body / family"
  },
  {
    name = "family_man_woman_boy",
    value = "👨‍👩‍👦",
    description = "family: man, woman, boy",
    category = "People & Body / family"
  },
  {
    name = "family_man_woman_boy_boy",
    value = "👨‍👩‍👦‍👦",
    description = "family: man, woman, boy, boy",
    category = "People & Body / family"
  },
  {
    name = "family_man_woman_girl",
    value = "👨‍👩‍👧",
    description = "family: man, woman, girl",
    category = "People & Body / family"
  },
  {
    name = "family_man_woman_girl_boy",
    value = "👨‍👩‍👧‍👦",
    description = "family: man, woman, girl, boy",
    category = "People & Body / family"
  },
  {
    name = "family_man_woman_girl_girl",
    value = "👨‍👩‍👧‍👧",
    description = "family: man, woman, girl, girl",
    category = "People & Body / family"
  },
  {
    name = "family_woman_boy",
    value = "👩‍👦",
    description = "family: woman, boy",
    category = "People & Body / family"
  },
  {
    name = "family_woman_boy_boy",
    value = "👩‍👦‍👦",
    description = "family: woman, boy, boy",
    category = "People & Body / family"
  },
  {
    name = "family_woman_girl",
    value = "👩‍👧",
    description = "family: woman, girl",
    category = "People & Body / family"
  },
  {
    name = "family_woman_girl_boy",
    value = "👩‍👧‍👦",
    description = "family: woman, girl, boy",
    category = "People & Body / family"
  },
  {
    name = "family_woman_girl_girl",
    value = "👩‍👧‍👧",
    description = "family: woman, girl, girl",
    category = "People & Body / family"
  },
  {
    name = "family_woman_woman_boy",
    value = "👩‍👩‍👦",
    description = "family: woman, woman, boy",
    category = "People & Body / family"
  },
  {
    name = "family_woman_woman_boy_boy",
    value = "👩‍👩‍👦‍👦",
    description = "family: woman, woman, boy, boy",
    category = "People & Body / family"
  },
  {
    name = "family_woman_woman_girl",
    value = "👩‍👩‍👧",
    description = "family: woman, woman, girl",
    category = "People & Body / family"
  },
  {
    name = "family_woman_woman_girl_boy",
    value = "👩‍👩‍👧‍👦",
    description = "family: woman, woman, girl, boy",
    category = "People & Body / family"
  },
  {
    name = "family_woman_woman_girl_girl",
    value = "👩‍👩‍👧‍👧",
    description = "family: woman, woman, girl, girl",
    category = "People & Body / family"
  },
  {
    name = "kiss",
    value = "💏",
    description = "kiss",
    category = "People & Body / family"
  },
  {
    name = "kiss_dark_skin_tone",
    value = "💏🏿",
    description = "kiss: dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_light_skin_tone",
    value = "💏🏻",
    description = "kiss: light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man",
    value = "👨‍❤️‍💋‍👨",
    description = "kiss: man, man",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_dark_skin_tone",
    value = "👨🏿‍❤️‍💋‍👨🏿",
    description = "kiss: man, man, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_dark_skin_tone_light_skin_tone",
    value = "👨🏿‍❤️‍💋‍👨🏻",
    description = "kiss: man, man, dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_dark_skin_tone_medium_dark_skin_tone",
    value = "👨🏿‍❤️‍💋‍👨🏾",
    description = "kiss: man, man, dark skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_dark_skin_tone_medium_light_skin_tone",
    value = "👨🏿‍❤️‍💋‍👨🏼",
    description = "kiss: man, man, dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_dark_skin_tone_medium_skin_tone",
    value = "👨🏿‍❤️‍💋‍👨🏽",
    description = "kiss: man, man, dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_light_skin_tone",
    value = "👨🏻‍❤️‍💋‍👨🏻",
    description = "kiss: man, man, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_light_skin_tone_dark_skin_tone",
    value = "👨🏻‍❤️‍💋‍👨🏿",
    description = "kiss: man, man, light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_light_skin_tone_medium_dark_skin_tone",
    value = "👨🏻‍❤️‍💋‍👨🏾",
    description = "kiss: man, man, light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_light_skin_tone_medium_light_skin_tone",
    value = "👨🏻‍❤️‍💋‍👨🏼",
    description = "kiss: man, man, light skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_light_skin_tone_medium_skin_tone",
    value = "👨🏻‍❤️‍💋‍👨🏽",
    description = "kiss: man, man, light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_medium_dark_skin_tone",
    value = "👨🏾‍❤️‍💋‍👨🏾",
    description = "kiss: man, man, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_medium_dark_skin_tone_dark_skin_tone",
    value = "👨🏾‍❤️‍💋‍👨🏿",
    description = "kiss: man, man, medium-dark skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_medium_dark_skin_tone_light_skin_tone",
    value = "👨🏾‍❤️‍💋‍👨🏻",
    description = "kiss: man, man, medium-dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_medium_dark_skin_tone_medium_light_skin_tone",
    value = "👨🏾‍❤️‍💋‍👨🏼",
    description = "kiss: man, man, medium-dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_medium_dark_skin_tone_medium_skin_tone",
    value = "👨🏾‍❤️‍💋‍👨🏽",
    description = "kiss: man, man, medium-dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_medium_light_skin_tone",
    value = "👨🏼‍❤️‍💋‍👨🏼",
    description = "kiss: man, man, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_medium_light_skin_tone_dark_skin_tone",
    value = "👨🏼‍❤️‍💋‍👨🏿",
    description = "kiss: man, man, medium-light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_medium_light_skin_tone_light_skin_tone",
    value = "👨🏼‍❤️‍💋‍👨🏻",
    description = "kiss: man, man, medium-light skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_medium_light_skin_tone_medium_dark_skin_tone",
    value = "👨🏼‍❤️‍💋‍👨🏾",
    description = "kiss: man, man, medium-light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_medium_light_skin_tone_medium_skin_tone",
    value = "👨🏼‍❤️‍💋‍👨🏽",
    description = "kiss: man, man, medium-light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_medium_skin_tone",
    value = "👨🏽‍❤️‍💋‍👨🏽",
    description = "kiss: man, man, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_medium_skin_tone_dark_skin_tone",
    value = "👨🏽‍❤️‍💋‍👨🏿",
    description = "kiss: man, man, medium skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_medium_skin_tone_light_skin_tone",
    value = "👨🏽‍❤️‍💋‍👨🏻",
    description = "kiss: man, man, medium skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_medium_skin_tone_medium_dark_skin_tone",
    value = "👨🏽‍❤️‍💋‍👨🏾",
    description = "kiss: man, man, medium skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_man_man_medium_skin_tone_medium_light_skin_tone",
    value = "👨🏽‍❤️‍💋‍👨🏼",
    description = "kiss: man, man, medium skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_medium_dark_skin_tone",
    value = "💏🏾",
    description = "kiss: medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_medium_light_skin_tone",
    value = "💏🏼",
    description = "kiss: medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_medium_skin_tone",
    value = "💏🏽",
    description = "kiss: medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_person_person_dark_skin_tone_light_skin_tone",
    value = "🧑🏿‍❤️‍💋‍🧑🏻",
    description = "kiss: person, person, dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_person_person_dark_skin_tone_medium_dark_skin_tone",
    value = "🧑🏿‍❤️‍💋‍🧑🏾",
    description = "kiss: person, person, dark skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_person_person_dark_skin_tone_medium_light_skin_tone",
    value = "🧑🏿‍❤️‍💋‍🧑🏼",
    description = "kiss: person, person, dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_person_person_dark_skin_tone_medium_skin_tone",
    value = "🧑🏿‍❤️‍💋‍🧑🏽",
    description = "kiss: person, person, dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_person_person_light_skin_tone_dark_skin_tone",
    value = "🧑🏻‍❤️‍💋‍🧑🏿",
    description = "kiss: person, person, light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_person_person_light_skin_tone_medium_dark_skin_tone",
    value = "🧑🏻‍❤️‍💋‍🧑🏾",
    description = "kiss: person, person, light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_person_person_light_skin_tone_medium_light_skin_tone",
    value = "🧑🏻‍❤️‍💋‍🧑🏼",
    description = "kiss: person, person, light skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_person_person_light_skin_tone_medium_skin_tone",
    value = "🧑🏻‍❤️‍💋‍🧑🏽",
    description = "kiss: person, person, light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_person_person_medium_dark_skin_tone_dark_skin_tone",
    value = "🧑🏾‍❤️‍💋‍🧑🏿",
    description = "kiss: person, person, medium-dark skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_person_person_medium_dark_skin_tone_light_skin_tone",
    value = "🧑🏾‍❤️‍💋‍🧑🏻",
    description = "kiss: person, person, medium-dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_person_person_medium_dark_skin_tone_medium_light_skin_tone",
    value = "🧑🏾‍❤️‍💋‍🧑🏼",
    description = "kiss: person, person, medium-dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_person_person_medium_dark_skin_tone_medium_skin_tone",
    value = "🧑🏾‍❤️‍💋‍🧑🏽",
    description = "kiss: person, person, medium-dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_person_person_medium_light_skin_tone_dark_skin_tone",
    value = "🧑🏼‍❤️‍💋‍🧑🏿",
    description = "kiss: person, person, medium-light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_person_person_medium_light_skin_tone_light_skin_tone",
    value = "🧑🏼‍❤️‍💋‍🧑🏻",
    description = "kiss: person, person, medium-light skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_person_person_medium_light_skin_tone_medium_dark_skin_tone",
    value = "🧑🏼‍❤️‍💋‍🧑🏾",
    description = "kiss: person, person, medium-light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_person_person_medium_light_skin_tone_medium_skin_tone",
    value = "🧑🏼‍❤️‍💋‍🧑🏽",
    description = "kiss: person, person, medium-light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_person_person_medium_skin_tone_dark_skin_tone",
    value = "🧑🏽‍❤️‍💋‍🧑🏿",
    description = "kiss: person, person, medium skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_person_person_medium_skin_tone_light_skin_tone",
    value = "🧑🏽‍❤️‍💋‍🧑🏻",
    description = "kiss: person, person, medium skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_person_person_medium_skin_tone_medium_dark_skin_tone",
    value = "🧑🏽‍❤️‍💋‍🧑🏾",
    description = "kiss: person, person, medium skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_person_person_medium_skin_tone_medium_light_skin_tone",
    value = "🧑🏽‍❤️‍💋‍🧑🏼",
    description = "kiss: person, person, medium skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man",
    value = "👩‍❤️‍💋‍👨",
    description = "kiss: woman, man",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_dark_skin_tone",
    value = "👩🏿‍❤️‍💋‍👨🏿",
    description = "kiss: woman, man, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_dark_skin_tone_light_skin_tone",
    value = "👩🏿‍❤️‍💋‍👨🏻",
    description = "kiss: woman, man, dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_dark_skin_tone_medium_dark_skin_tone",
    value = "👩🏿‍❤️‍💋‍👨🏾",
    description = "kiss: woman, man, dark skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_dark_skin_tone_medium_light_skin_tone",
    value = "👩🏿‍❤️‍💋‍👨🏼",
    description = "kiss: woman, man, dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_dark_skin_tone_medium_skin_tone",
    value = "👩🏿‍❤️‍💋‍👨🏽",
    description = "kiss: woman, man, dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_light_skin_tone",
    value = "👩🏻‍❤️‍💋‍👨🏻",
    description = "kiss: woman, man, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_light_skin_tone_dark_skin_tone",
    value = "👩🏻‍❤️‍💋‍👨🏿",
    description = "kiss: woman, man, light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_light_skin_tone_medium_dark_skin_tone",
    value = "👩🏻‍❤️‍💋‍👨🏾",
    description = "kiss: woman, man, light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_light_skin_tone_medium_light_skin_tone",
    value = "👩🏻‍❤️‍💋‍👨🏼",
    description = "kiss: woman, man, light skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_light_skin_tone_medium_skin_tone",
    value = "👩🏻‍❤️‍💋‍👨🏽",
    description = "kiss: woman, man, light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_medium_dark_skin_tone",
    value = "👩🏾‍❤️‍💋‍👨🏾",
    description = "kiss: woman, man, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_medium_dark_skin_tone_dark_skin_tone",
    value = "👩🏾‍❤️‍💋‍👨🏿",
    description = "kiss: woman, man, medium-dark skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_medium_dark_skin_tone_light_skin_tone",
    value = "👩🏾‍❤️‍💋‍👨🏻",
    description = "kiss: woman, man, medium-dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_medium_dark_skin_tone_medium_light_skin_tone",
    value = "👩🏾‍❤️‍💋‍👨🏼",
    description = "kiss: woman, man, medium-dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_medium_dark_skin_tone_medium_skin_tone",
    value = "👩🏾‍❤️‍💋‍👨🏽",
    description = "kiss: woman, man, medium-dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_medium_light_skin_tone",
    value = "👩🏼‍❤️‍💋‍👨🏼",
    description = "kiss: woman, man, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_medium_light_skin_tone_dark_skin_tone",
    value = "👩🏼‍❤️‍💋‍👨🏿",
    description = "kiss: woman, man, medium-light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_medium_light_skin_tone_light_skin_tone",
    value = "👩🏼‍❤️‍💋‍👨🏻",
    description = "kiss: woman, man, medium-light skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_medium_light_skin_tone_medium_dark_skin_tone",
    value = "👩🏼‍❤️‍💋‍👨🏾",
    description = "kiss: woman, man, medium-light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_medium_light_skin_tone_medium_skin_tone",
    value = "👩🏼‍❤️‍💋‍👨🏽",
    description = "kiss: woman, man, medium-light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_medium_skin_tone",
    value = "👩🏽‍❤️‍💋‍👨🏽",
    description = "kiss: woman, man, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_medium_skin_tone_dark_skin_tone",
    value = "👩🏽‍❤️‍💋‍👨🏿",
    description = "kiss: woman, man, medium skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_medium_skin_tone_light_skin_tone",
    value = "👩🏽‍❤️‍💋‍👨🏻",
    description = "kiss: woman, man, medium skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_medium_skin_tone_medium_dark_skin_tone",
    value = "👩🏽‍❤️‍💋‍👨🏾",
    description = "kiss: woman, man, medium skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_man_medium_skin_tone_medium_light_skin_tone",
    value = "👩🏽‍❤️‍💋‍👨🏼",
    description = "kiss: woman, man, medium skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman",
    value = "👩‍❤️‍💋‍👩",
    description = "kiss: woman, woman",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_dark_skin_tone",
    value = "👩🏿‍❤️‍💋‍👩🏿",
    description = "kiss: woman, woman, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_dark_skin_tone_light_skin_tone",
    value = "👩🏿‍❤️‍💋‍👩🏻",
    description = "kiss: woman, woman, dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_dark_skin_tone_medium_dark_skin_tone",
    value = "👩🏿‍❤️‍💋‍👩🏾",
    description = "kiss: woman, woman, dark skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_dark_skin_tone_medium_light_skin_tone",
    value = "👩🏿‍❤️‍💋‍👩🏼",
    description = "kiss: woman, woman, dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_dark_skin_tone_medium_skin_tone",
    value = "👩🏿‍❤️‍💋‍👩🏽",
    description = "kiss: woman, woman, dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_light_skin_tone",
    value = "👩🏻‍❤️‍💋‍👩🏻",
    description = "kiss: woman, woman, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_light_skin_tone_dark_skin_tone",
    value = "👩🏻‍❤️‍💋‍👩🏿",
    description = "kiss: woman, woman, light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_light_skin_tone_medium_dark_skin_tone",
    value = "👩🏻‍❤️‍💋‍👩🏾",
    description = "kiss: woman, woman, light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_light_skin_tone_medium_light_skin_tone",
    value = "👩🏻‍❤️‍💋‍👩🏼",
    description = "kiss: woman, woman, light skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_light_skin_tone_medium_skin_tone",
    value = "👩🏻‍❤️‍💋‍👩🏽",
    description = "kiss: woman, woman, light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_medium_dark_skin_tone",
    value = "👩🏾‍❤️‍💋‍👩🏾",
    description = "kiss: woman, woman, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_medium_dark_skin_tone_dark_skin_tone",
    value = "👩🏾‍❤️‍💋‍👩🏿",
    description = "kiss: woman, woman, medium-dark skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_medium_dark_skin_tone_light_skin_tone",
    value = "👩🏾‍❤️‍💋‍👩🏻",
    description = "kiss: woman, woman, medium-dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_medium_dark_skin_tone_medium_light_skin_tone",
    value = "👩🏾‍❤️‍💋‍👩🏼",
    description = "kiss: woman, woman, medium-dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_medium_dark_skin_tone_medium_skin_tone",
    value = "👩🏾‍❤️‍💋‍👩🏽",
    description = "kiss: woman, woman, medium-dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_medium_light_skin_tone",
    value = "👩🏼‍❤️‍💋‍👩🏼",
    description = "kiss: woman, woman, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_medium_light_skin_tone_dark_skin_tone",
    value = "👩🏼‍❤️‍💋‍👩🏿",
    description = "kiss: woman, woman, medium-light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_medium_light_skin_tone_light_skin_tone",
    value = "👩🏼‍❤️‍💋‍👩🏻",
    description = "kiss: woman, woman, medium-light skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_medium_light_skin_tone_medium_dark_skin_tone",
    value = "👩🏼‍❤️‍💋‍👩🏾",
    description = "kiss: woman, woman, medium-light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_medium_light_skin_tone_medium_skin_tone",
    value = "👩🏼‍❤️‍💋‍👩🏽",
    description = "kiss: woman, woman, medium-light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_medium_skin_tone",
    value = "👩🏽‍❤️‍💋‍👩🏽",
    description = "kiss: woman, woman, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_medium_skin_tone_dark_skin_tone",
    value = "👩🏽‍❤️‍💋‍👩🏿",
    description = "kiss: woman, woman, medium skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_medium_skin_tone_light_skin_tone",
    value = "👩🏽‍❤️‍💋‍👩🏻",
    description = "kiss: woman, woman, medium skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_medium_skin_tone_medium_dark_skin_tone",
    value = "👩🏽‍❤️‍💋‍👩🏾",
    description = "kiss: woman, woman, medium skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "kiss_woman_woman_medium_skin_tone_medium_light_skin_tone",
    value = "👩🏽‍❤️‍💋‍👩🏼",
    description = "kiss: woman, woman, medium skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands",
    value = "👬",
    description = "men holding hands",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_dark_skin_tone",
    value = "👬🏿",
    description = "men holding hands: dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_dark_skin_tone_light_skin_tone",
    value = "👨🏿‍🤝‍👨🏻",
    description = "men holding hands: dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_dark_skin_tone_medium_dark_skin_tone",
    value = "👨🏿‍🤝‍👨🏾",
    description = "men holding hands: dark skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_dark_skin_tone_medium_light_skin_tone",
    value = "👨🏿‍🤝‍👨🏼",
    description = "men holding hands: dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_dark_skin_tone_medium_skin_tone",
    value = "👨🏿‍🤝‍👨🏽",
    description = "men holding hands: dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_light_skin_tone",
    value = "👬🏻",
    description = "men holding hands: light skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_light_skin_tone_dark_skin_tone",
    value = "👨🏻‍🤝‍👨🏿",
    description = "men holding hands: light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_light_skin_tone_medium_dark_skin_tone",
    value = "👨🏻‍🤝‍👨🏾",
    description = "men holding hands: light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_light_skin_tone_medium_light_skin_tone",
    value = "👨🏻‍🤝‍👨🏼",
    description = "men holding hands: light skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_light_skin_tone_medium_skin_tone",
    value = "👨🏻‍🤝‍👨🏽",
    description = "men holding hands: light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_medium_dark_skin_tone",
    value = "👬🏾",
    description = "men holding hands: medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_medium_dark_skin_tone_dark_skin_tone",
    value = "👨🏾‍🤝‍👨🏿",
    description = "men holding hands: medium-dark skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_medium_dark_skin_tone_light_skin_tone",
    value = "👨🏾‍🤝‍👨🏻",
    description = "men holding hands: medium-dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_medium_dark_skin_tone_medium_light_skin_tone",
    value = "👨🏾‍🤝‍👨🏼",
    description = "men holding hands: medium-dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_medium_dark_skin_tone_medium_skin_tone",
    value = "👨🏾‍🤝‍👨🏽",
    description = "men holding hands: medium-dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_medium_light_skin_tone",
    value = "👬🏼",
    description = "men holding hands: medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_medium_light_skin_tone_dark_skin_tone",
    value = "👨🏼‍🤝‍👨🏿",
    description = "men holding hands: medium-light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_medium_light_skin_tone_light_skin_tone",
    value = "👨🏼‍🤝‍👨🏻",
    description = "men holding hands: medium-light skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_medium_light_skin_tone_medium_dark_skin_tone",
    value = "👨🏼‍🤝‍👨🏾",
    description = "men holding hands: medium-light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_medium_light_skin_tone_medium_skin_tone",
    value = "👨🏼‍🤝‍👨🏽",
    description = "men holding hands: medium-light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_medium_skin_tone",
    value = "👬🏽",
    description = "men holding hands: medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_medium_skin_tone_dark_skin_tone",
    value = "👨🏽‍🤝‍👨🏿",
    description = "men holding hands: medium skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_medium_skin_tone_light_skin_tone",
    value = "👨🏽‍🤝‍👨🏻",
    description = "men holding hands: medium skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_medium_skin_tone_medium_dark_skin_tone",
    value = "👨🏽‍🤝‍👨🏾",
    description = "men holding hands: medium skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "men_holding_hands_medium_skin_tone_medium_light_skin_tone",
    value = "👨🏽‍🤝‍👨🏼",
    description = "men holding hands: medium skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands",
    value = "🧑‍🤝‍🧑",
    description = "people holding hands",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_dark_skin_tone",
    value = "🧑🏿‍🤝‍🧑🏿",
    description = "people holding hands: dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_dark_skin_tone_light_skin_tone",
    value = "🧑🏿‍🤝‍🧑🏻",
    description = "people holding hands: dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_dark_skin_tone_medium_dark_skin_tone",
    value = "🧑🏿‍🤝‍🧑🏾",
    description = "people holding hands: dark skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_dark_skin_tone_medium_light_skin_tone",
    value = "🧑🏿‍🤝‍🧑🏼",
    description = "people holding hands: dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_dark_skin_tone_medium_skin_tone",
    value = "🧑🏿‍🤝‍🧑🏽",
    description = "people holding hands: dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_light_skin_tone",
    value = "🧑🏻‍🤝‍🧑🏻",
    description = "people holding hands: light skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_light_skin_tone_dark_skin_tone",
    value = "🧑🏻‍🤝‍🧑🏿",
    description = "people holding hands: light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_light_skin_tone_medium_dark_skin_tone",
    value = "🧑🏻‍🤝‍🧑🏾",
    description = "people holding hands: light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_light_skin_tone_medium_light_skin_tone",
    value = "🧑🏻‍🤝‍🧑🏼",
    description = "people holding hands: light skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_light_skin_tone_medium_skin_tone",
    value = "🧑🏻‍🤝‍🧑🏽",
    description = "people holding hands: light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_medium_dark_skin_tone",
    value = "🧑🏾‍🤝‍🧑🏾",
    description = "people holding hands: medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_medium_dark_skin_tone_dark_skin_tone",
    value = "🧑🏾‍🤝‍🧑🏿",
    description = "people holding hands: medium-dark skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_medium_dark_skin_tone_light_skin_tone",
    value = "🧑🏾‍🤝‍🧑🏻",
    description = "people holding hands: medium-dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_medium_dark_skin_tone_medium_light_skin_tone",
    value = "🧑🏾‍🤝‍🧑🏼",
    description = "people holding hands: medium-dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_medium_dark_skin_tone_medium_skin_tone",
    value = "🧑🏾‍🤝‍🧑🏽",
    description = "people holding hands: medium-dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_medium_light_skin_tone",
    value = "🧑🏼‍🤝‍🧑🏼",
    description = "people holding hands: medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_medium_light_skin_tone_dark_skin_tone",
    value = "🧑🏼‍🤝‍🧑🏿",
    description = "people holding hands: medium-light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_medium_light_skin_tone_light_skin_tone",
    value = "🧑🏼‍🤝‍🧑🏻",
    description = "people holding hands: medium-light skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_medium_light_skin_tone_medium_dark_skin_tone",
    value = "🧑🏼‍🤝‍🧑🏾",
    description = "people holding hands: medium-light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_medium_light_skin_tone_medium_skin_tone",
    value = "🧑🏼‍🤝‍🧑🏽",
    description = "people holding hands: medium-light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_medium_skin_tone",
    value = "🧑🏽‍🤝‍🧑🏽",
    description = "people holding hands: medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_medium_skin_tone_dark_skin_tone",
    value = "🧑🏽‍🤝‍🧑🏿",
    description = "people holding hands: medium skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_medium_skin_tone_light_skin_tone",
    value = "🧑🏽‍🤝‍🧑🏻",
    description = "people holding hands: medium skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_medium_skin_tone_medium_dark_skin_tone",
    value = "🧑🏽‍🤝‍🧑🏾",
    description = "people holding hands: medium skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "people_holding_hands_medium_skin_tone_medium_light_skin_tone",
    value = "🧑🏽‍🤝‍🧑🏼",
    description = "people holding hands: medium skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands",
    value = "👫",
    description = "woman and man holding hands",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_dark_skin_tone",
    value = "👫🏿",
    description = "woman and man holding hands: dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_dark_skin_tone_light_skin_tone",
    value = "👩🏿‍🤝‍👨🏻",
    description = "woman and man holding hands: dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_dark_skin_tone_medium_dark_skin_tone",
    value = "👩🏿‍🤝‍👨🏾",
    description = "woman and man holding hands: dark skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_dark_skin_tone_medium_light_skin_tone",
    value = "👩🏿‍🤝‍👨🏼",
    description = "woman and man holding hands: dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_dark_skin_tone_medium_skin_tone",
    value = "👩🏿‍🤝‍👨🏽",
    description = "woman and man holding hands: dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_light_skin_tone",
    value = "👫🏻",
    description = "woman and man holding hands: light skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_light_skin_tone_dark_skin_tone",
    value = "👩🏻‍🤝‍👨🏿",
    description = "woman and man holding hands: light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_light_skin_tone_medium_dark_skin_tone",
    value = "👩🏻‍🤝‍👨🏾",
    description = "woman and man holding hands: light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_light_skin_tone_medium_light_skin_tone",
    value = "👩🏻‍🤝‍👨🏼",
    description = "woman and man holding hands: light skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_light_skin_tone_medium_skin_tone",
    value = "👩🏻‍🤝‍👨🏽",
    description = "woman and man holding hands: light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_medium_dark_skin_tone",
    value = "👫🏾",
    description = "woman and man holding hands: medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_medium_dark_skin_tone_dark_skin_tone",
    value = "👩🏾‍🤝‍👨🏿",
    description = "woman and man holding hands: medium-dark skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_medium_dark_skin_tone_light_skin_tone",
    value = "👩🏾‍🤝‍👨🏻",
    description = "woman and man holding hands: medium-dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_medium_dark_skin_tone_medium_light_skin_tone",
    value = "👩🏾‍🤝‍👨🏼",
    description = "woman and man holding hands: medium-dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_medium_dark_skin_tone_medium_skin_tone",
    value = "👩🏾‍🤝‍👨🏽",
    description = "woman and man holding hands: medium-dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_medium_light_skin_tone",
    value = "👫🏼",
    description = "woman and man holding hands: medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_medium_light_skin_tone_dark_skin_tone",
    value = "👩🏼‍🤝‍👨🏿",
    description = "woman and man holding hands: medium-light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_medium_light_skin_tone_light_skin_tone",
    value = "👩🏼‍🤝‍👨🏻",
    description = "woman and man holding hands: medium-light skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_medium_light_skin_tone_medium_dark_skin_tone",
    value = "👩🏼‍🤝‍👨🏾",
    description = "woman and man holding hands: medium-light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_medium_light_skin_tone_medium_skin_tone",
    value = "👩🏼‍🤝‍👨🏽",
    description = "woman and man holding hands: medium-light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_medium_skin_tone",
    value = "👫🏽",
    description = "woman and man holding hands: medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_medium_skin_tone_dark_skin_tone",
    value = "👩🏽‍🤝‍👨🏿",
    description = "woman and man holding hands: medium skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_medium_skin_tone_light_skin_tone",
    value = "👩🏽‍🤝‍👨🏻",
    description = "woman and man holding hands: medium skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_medium_skin_tone_medium_dark_skin_tone",
    value = "👩🏽‍🤝‍👨🏾",
    description = "woman and man holding hands: medium skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "woman_and_man_holding_hands_medium_skin_tone_medium_light_skin_tone",
    value = "👩🏽‍🤝‍👨🏼",
    description = "woman and man holding hands: medium skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands",
    value = "👭",
    description = "women holding hands",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_dark_skin_tone",
    value = "👭🏿",
    description = "women holding hands: dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_dark_skin_tone_light_skin_tone",
    value = "👩🏿‍🤝‍👩🏻",
    description = "women holding hands: dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_dark_skin_tone_medium_dark_skin_tone",
    value = "👩🏿‍🤝‍👩🏾",
    description = "women holding hands: dark skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_dark_skin_tone_medium_light_skin_tone",
    value = "👩🏿‍🤝‍👩🏼",
    description = "women holding hands: dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_dark_skin_tone_medium_skin_tone",
    value = "👩🏿‍🤝‍👩🏽",
    description = "women holding hands: dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_light_skin_tone",
    value = "👭🏻",
    description = "women holding hands: light skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_light_skin_tone_dark_skin_tone",
    value = "👩🏻‍🤝‍👩🏿",
    description = "women holding hands: light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_light_skin_tone_medium_dark_skin_tone",
    value = "👩🏻‍🤝‍👩🏾",
    description = "women holding hands: light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_light_skin_tone_medium_light_skin_tone",
    value = "👩🏻‍🤝‍👩🏼",
    description = "women holding hands: light skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_light_skin_tone_medium_skin_tone",
    value = "👩🏻‍🤝‍👩🏽",
    description = "women holding hands: light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_medium_dark_skin_tone",
    value = "👭🏾",
    description = "women holding hands: medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_medium_dark_skin_tone_dark_skin_tone",
    value = "👩🏾‍🤝‍👩🏿",
    description = "women holding hands: medium-dark skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_medium_dark_skin_tone_light_skin_tone",
    value = "👩🏾‍🤝‍👩🏻",
    description = "women holding hands: medium-dark skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_medium_dark_skin_tone_medium_light_skin_tone",
    value = "👩🏾‍🤝‍👩🏼",
    description = "women holding hands: medium-dark skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_medium_dark_skin_tone_medium_skin_tone",
    value = "👩🏾‍🤝‍👩🏽",
    description = "women holding hands: medium-dark skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_medium_light_skin_tone",
    value = "👭🏼",
    description = "women holding hands: medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_medium_light_skin_tone_dark_skin_tone",
    value = "👩🏼‍🤝‍👩🏿",
    description = "women holding hands: medium-light skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_medium_light_skin_tone_light_skin_tone",
    value = "👩🏼‍🤝‍👩🏻",
    description = "women holding hands: medium-light skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_medium_light_skin_tone_medium_dark_skin_tone",
    value = "👩🏼‍🤝‍👩🏾",
    description = "women holding hands: medium-light skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_medium_light_skin_tone_medium_skin_tone",
    value = "👩🏼‍🤝‍👩🏽",
    description = "women holding hands: medium-light skin tone, medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_medium_skin_tone",
    value = "👭🏽",
    description = "women holding hands: medium skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_medium_skin_tone_dark_skin_tone",
    value = "👩🏽‍🤝‍👩🏿",
    description = "women holding hands: medium skin tone, dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_medium_skin_tone_light_skin_tone",
    value = "👩🏽‍🤝‍👩🏻",
    description = "women holding hands: medium skin tone, light skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_medium_skin_tone_medium_dark_skin_tone",
    value = "👩🏽‍🤝‍👩🏾",
    description = "women holding hands: medium skin tone, medium-dark skin tone",
    category = "People & Body / family"
  },
  {
    name = "women_holding_hands_medium_skin_tone_medium_light_skin_tone",
    value = "👩🏽‍🤝‍👩🏼",
    description = "women holding hands: medium skin tone, medium-light skin tone",
    category = "People & Body / family"
  },
  {
    name = "left_facing_fist",
    value = "🤛",
    description = "left-facing fist",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "left_facing_fist_dark_skin_tone",
    value = "🤛🏿",
    description = "left-facing fist: dark skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "left_facing_fist_light_skin_tone",
    value = "🤛🏻",
    description = "left-facing fist: light skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "left_facing_fist_medium_dark_skin_tone",
    value = "🤛🏾",
    description = "left-facing fist: medium-dark skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "left_facing_fist_medium_light_skin_tone",
    value = "🤛🏼",
    description = "left-facing fist: medium-light skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "left_facing_fist_medium_skin_tone",
    value = "🤛🏽",
    description = "left-facing fist: medium skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "oncoming_fist",
    value = "👊",
    description = "oncoming fist",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "oncoming_fist_dark_skin_tone",
    value = "👊🏿",
    description = "oncoming fist: dark skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "oncoming_fist_light_skin_tone",
    value = "👊🏻",
    description = "oncoming fist: light skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "oncoming_fist_medium_dark_skin_tone",
    value = "👊🏾",
    description = "oncoming fist: medium-dark skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "oncoming_fist_medium_light_skin_tone",
    value = "👊🏼",
    description = "oncoming fist: medium-light skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "oncoming_fist_medium_skin_tone",
    value = "👊🏽",
    description = "oncoming fist: medium skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "raised_fist",
    value = "✊",
    description = "raised fist",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "raised_fist_dark_skin_tone",
    value = "✊🏿",
    description = "raised fist: dark skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "raised_fist_light_skin_tone",
    value = "✊🏻",
    description = "raised fist: light skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "raised_fist_medium_dark_skin_tone",
    value = "✊🏾",
    description = "raised fist: medium-dark skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "raised_fist_medium_light_skin_tone",
    value = "✊🏼",
    description = "raised fist: medium-light skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "raised_fist_medium_skin_tone",
    value = "✊🏽",
    description = "raised fist: medium skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "right_facing_fist",
    value = "🤜",
    description = "right-facing fist",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "right_facing_fist_dark_skin_tone",
    value = "🤜🏿",
    description = "right-facing fist: dark skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "right_facing_fist_light_skin_tone",
    value = "🤜🏻",
    description = "right-facing fist: light skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "right_facing_fist_medium_dark_skin_tone",
    value = "🤜🏾",
    description = "right-facing fist: medium-dark skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "right_facing_fist_medium_light_skin_tone",
    value = "🤜🏼",
    description = "right-facing fist: medium-light skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "right_facing_fist_medium_skin_tone",
    value = "🤜🏽",
    description = "right-facing fist: medium skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "thumbs_down",
    value = "👎",
    description = "thumbs down",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "thumbs_down_dark_skin_tone",
    value = "👎🏿",
    description = "thumbs down: dark skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "thumbs_down_light_skin_tone",
    value = "👎🏻",
    description = "thumbs down: light skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "thumbs_down_medium_dark_skin_tone",
    value = "👎🏾",
    description = "thumbs down: medium-dark skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "thumbs_down_medium_light_skin_tone",
    value = "👎🏼",
    description = "thumbs down: medium-light skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "thumbs_down_medium_skin_tone",
    value = "👎🏽",
    description = "thumbs down: medium skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "thumbs_up",
    value = "👍",
    description = "thumbs up",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "thumbs_up_dark_skin_tone",
    value = "👍🏿",
    description = "thumbs up: dark skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "thumbs_up_light_skin_tone",
    value = "👍🏻",
    description = "thumbs up: light skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "thumbs_up_medium_dark_skin_tone",
    value = "👍🏾",
    description = "thumbs up: medium-dark skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "thumbs_up_medium_light_skin_tone",
    value = "👍🏼",
    description = "thumbs up: medium-light skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "thumbs_up_medium_skin_tone",
    value = "👍🏽",
    description = "thumbs up: medium skin tone",
    category = "People & Body / hand-fingers-closed"
  },
  {
    name = "hand_with_fingers_splayed",
    value = "🖐️",
    description = "hand with fingers splayed",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "hand_with_fingers_splayed_dark_skin_tone",
    value = "🖐🏿",
    description = "hand with fingers splayed: dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "hand_with_fingers_splayed_light_skin_tone",
    value = "🖐🏻",
    description = "hand with fingers splayed: light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "hand_with_fingers_splayed_medium_dark_skin_tone",
    value = "🖐🏾",
    description = "hand with fingers splayed: medium-dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "hand_with_fingers_splayed_medium_light_skin_tone",
    value = "🖐🏼",
    description = "hand with fingers splayed: medium-light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "hand_with_fingers_splayed_medium_skin_tone",
    value = "🖐🏽",
    description = "hand with fingers splayed: medium skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "leftwards_hand",
    value = "🫲",
    description = "leftwards hand",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "leftwards_hand_dark_skin_tone",
    value = "🫲🏿",
    description = "leftwards hand: dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "leftwards_hand_light_skin_tone",
    value = "🫲🏻",
    description = "leftwards hand: light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "leftwards_hand_medium_dark_skin_tone",
    value = "🫲🏾",
    description = "leftwards hand: medium-dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "leftwards_hand_medium_light_skin_tone",
    value = "🫲🏼",
    description = "leftwards hand: medium-light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "leftwards_hand_medium_skin_tone",
    value = "🫲🏽",
    description = "leftwards hand: medium skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "leftwards_pushing_hand",
    value = "🫷",
    description = "leftwards pushing hand",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "leftwards_pushing_hand_dark_skin_tone",
    value = "🫷🏿",
    description = "leftwards pushing hand: dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "leftwards_pushing_hand_light_skin_tone",
    value = "🫷🏻",
    description = "leftwards pushing hand: light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "leftwards_pushing_hand_medium_dark_skin_tone",
    value = "🫷🏾",
    description = "leftwards pushing hand: medium-dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "leftwards_pushing_hand_medium_light_skin_tone",
    value = "🫷🏼",
    description = "leftwards pushing hand: medium-light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "leftwards_pushing_hand_medium_skin_tone",
    value = "🫷🏽",
    description = "leftwards pushing hand: medium skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "palm_down_hand",
    value = "🫳",
    description = "palm down hand",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "palm_down_hand_dark_skin_tone",
    value = "🫳🏿",
    description = "palm down hand: dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "palm_down_hand_light_skin_tone",
    value = "🫳🏻",
    description = "palm down hand: light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "palm_down_hand_medium_dark_skin_tone",
    value = "🫳🏾",
    description = "palm down hand: medium-dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "palm_down_hand_medium_light_skin_tone",
    value = "🫳🏼",
    description = "palm down hand: medium-light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "palm_down_hand_medium_skin_tone",
    value = "🫳🏽",
    description = "palm down hand: medium skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "palm_up_hand",
    value = "🫴",
    description = "palm up hand",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "palm_up_hand_dark_skin_tone",
    value = "🫴🏿",
    description = "palm up hand: dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "palm_up_hand_light_skin_tone",
    value = "🫴🏻",
    description = "palm up hand: light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "palm_up_hand_medium_dark_skin_tone",
    value = "🫴🏾",
    description = "palm up hand: medium-dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "palm_up_hand_medium_light_skin_tone",
    value = "🫴🏼",
    description = "palm up hand: medium-light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "palm_up_hand_medium_skin_tone",
    value = "🫴🏽",
    description = "palm up hand: medium skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "raised_back_of_hand",
    value = "🤚",
    description = "raised back of hand",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "raised_back_of_hand_dark_skin_tone",
    value = "🤚🏿",
    description = "raised back of hand: dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "raised_back_of_hand_light_skin_tone",
    value = "🤚🏻",
    description = "raised back of hand: light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "raised_back_of_hand_medium_dark_skin_tone",
    value = "🤚🏾",
    description = "raised back of hand: medium-dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "raised_back_of_hand_medium_light_skin_tone",
    value = "🤚🏼",
    description = "raised back of hand: medium-light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "raised_back_of_hand_medium_skin_tone",
    value = "🤚🏽",
    description = "raised back of hand: medium skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "raised_hand",
    value = "✋",
    description = "raised hand",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "raised_hand_dark_skin_tone",
    value = "✋🏿",
    description = "raised hand: dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "raised_hand_light_skin_tone",
    value = "✋🏻",
    description = "raised hand: light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "raised_hand_medium_dark_skin_tone",
    value = "✋🏾",
    description = "raised hand: medium-dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "raised_hand_medium_light_skin_tone",
    value = "✋🏼",
    description = "raised hand: medium-light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "raised_hand_medium_skin_tone",
    value = "✋🏽",
    description = "raised hand: medium skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "rightwards_hand",
    value = "🫱",
    description = "rightwards hand",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "rightwards_hand_dark_skin_tone",
    value = "🫱🏿",
    description = "rightwards hand: dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "rightwards_hand_light_skin_tone",
    value = "🫱🏻",
    description = "rightwards hand: light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "rightwards_hand_medium_dark_skin_tone",
    value = "🫱🏾",
    description = "rightwards hand: medium-dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "rightwards_hand_medium_light_skin_tone",
    value = "🫱🏼",
    description = "rightwards hand: medium-light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "rightwards_hand_medium_skin_tone",
    value = "🫱🏽",
    description = "rightwards hand: medium skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "rightwards_pushing_hand",
    value = "🫸",
    description = "rightwards pushing hand",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "rightwards_pushing_hand_dark_skin_tone",
    value = "🫸🏿",
    description = "rightwards pushing hand: dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "rightwards_pushing_hand_light_skin_tone",
    value = "🫸🏻",
    description = "rightwards pushing hand: light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "rightwards_pushing_hand_medium_dark_skin_tone",
    value = "🫸🏾",
    description = "rightwards pushing hand: medium-dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "rightwards_pushing_hand_medium_light_skin_tone",
    value = "🫸🏼",
    description = "rightwards pushing hand: medium-light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "rightwards_pushing_hand_medium_skin_tone",
    value = "🫸🏽",
    description = "rightwards pushing hand: medium skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "vulcan_salute",
    value = "🖖",
    description = "vulcan salute",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "vulcan_salute_dark_skin_tone",
    value = "🖖🏿",
    description = "vulcan salute: dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "vulcan_salute_light_skin_tone",
    value = "🖖🏻",
    description = "vulcan salute: light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "vulcan_salute_medium_dark_skin_tone",
    value = "🖖🏾",
    description = "vulcan salute: medium-dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "vulcan_salute_medium_light_skin_tone",
    value = "🖖🏼",
    description = "vulcan salute: medium-light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "vulcan_salute_medium_skin_tone",
    value = "🖖🏽",
    description = "vulcan salute: medium skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "waving_hand",
    value = "👋",
    description = "waving hand",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "waving_hand_dark_skin_tone",
    value = "👋🏿",
    description = "waving hand: dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "waving_hand_light_skin_tone",
    value = "👋🏻",
    description = "waving hand: light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "waving_hand_medium_dark_skin_tone",
    value = "👋🏾",
    description = "waving hand: medium-dark skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "waving_hand_medium_light_skin_tone",
    value = "👋🏼",
    description = "waving hand: medium-light skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "waving_hand_medium_skin_tone",
    value = "👋🏽",
    description = "waving hand: medium skin tone",
    category = "People & Body / hand-fingers-open"
  },
  {
    name = "call_me_hand",
    value = "🤙",
    description = "call me hand",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "call_me_hand_dark_skin_tone",
    value = "🤙🏿",
    description = "call me hand: dark skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "call_me_hand_light_skin_tone",
    value = "🤙🏻",
    description = "call me hand: light skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "call_me_hand_medium_dark_skin_tone",
    value = "🤙🏾",
    description = "call me hand: medium-dark skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "call_me_hand_medium_light_skin_tone",
    value = "🤙🏼",
    description = "call me hand: medium-light skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "call_me_hand_medium_skin_tone",
    value = "🤙🏽",
    description = "call me hand: medium skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "crossed_fingers",
    value = "🤞",
    description = "crossed fingers",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "crossed_fingers_dark_skin_tone",
    value = "🤞🏿",
    description = "crossed fingers: dark skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "crossed_fingers_light_skin_tone",
    value = "🤞🏻",
    description = "crossed fingers: light skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "crossed_fingers_medium_dark_skin_tone",
    value = "🤞🏾",
    description = "crossed fingers: medium-dark skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "crossed_fingers_medium_light_skin_tone",
    value = "🤞🏼",
    description = "crossed fingers: medium-light skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "crossed_fingers_medium_skin_tone",
    value = "🤞🏽",
    description = "crossed fingers: medium skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "hand_with_index_finger_and_thumb_crossed",
    value = "🫰",
    description = "hand with index finger and thumb crossed",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "hand_with_index_finger_and_thumb_crossed_dark_skin_tone",
    value = "🫰🏿",
    description = "hand with index finger and thumb crossed: dark skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "hand_with_index_finger_and_thumb_crossed_light_skin_tone",
    value = "🫰🏻",
    description = "hand with index finger and thumb crossed: light skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "hand_with_index_finger_and_thumb_crossed_medium_dark_skin_tone",
    value = "🫰🏾",
    description = "hand with index finger and thumb crossed: medium-dark skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "hand_with_index_finger_and_thumb_crossed_medium_light_skin_tone",
    value = "🫰🏼",
    description = "hand with index finger and thumb crossed: medium-light skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "hand_with_index_finger_and_thumb_crossed_medium_skin_tone",
    value = "🫰🏽",
    description = "hand with index finger and thumb crossed: medium skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "love_you_gesture",
    value = "🤟",
    description = "love-you gesture",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "love_you_gesture_dark_skin_tone",
    value = "🤟🏿",
    description = "love-you gesture: dark skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "love_you_gesture_light_skin_tone",
    value = "🤟🏻",
    description = "love-you gesture: light skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "love_you_gesture_medium_dark_skin_tone",
    value = "🤟🏾",
    description = "love-you gesture: medium-dark skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "love_you_gesture_medium_light_skin_tone",
    value = "🤟🏼",
    description = "love-you gesture: medium-light skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "love_you_gesture_medium_skin_tone",
    value = "🤟🏽",
    description = "love-you gesture: medium skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "ok_hand",
    value = "👌",
    description = "OK hand",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "ok_hand_dark_skin_tone",
    value = "👌🏿",
    description = "OK hand: dark skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "ok_hand_light_skin_tone",
    value = "👌🏻",
    description = "OK hand: light skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "ok_hand_medium_dark_skin_tone",
    value = "👌🏾",
    description = "OK hand: medium-dark skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "ok_hand_medium_light_skin_tone",
    value = "👌🏼",
    description = "OK hand: medium-light skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "ok_hand_medium_skin_tone",
    value = "👌🏽",
    description = "OK hand: medium skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "pinched_fingers",
    value = "🤌",
    description = "pinched fingers",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "pinched_fingers_dark_skin_tone",
    value = "🤌🏿",
    description = "pinched fingers: dark skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "pinched_fingers_light_skin_tone",
    value = "🤌🏻",
    description = "pinched fingers: light skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "pinched_fingers_medium_dark_skin_tone",
    value = "🤌🏾",
    description = "pinched fingers: medium-dark skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "pinched_fingers_medium_light_skin_tone",
    value = "🤌🏼",
    description = "pinched fingers: medium-light skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "pinched_fingers_medium_skin_tone",
    value = "🤌🏽",
    description = "pinched fingers: medium skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "pinching_hand",
    value = "🤏",
    description = "pinching hand",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "pinching_hand_dark_skin_tone",
    value = "🤏🏿",
    description = "pinching hand: dark skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "pinching_hand_light_skin_tone",
    value = "🤏🏻",
    description = "pinching hand: light skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "pinching_hand_medium_dark_skin_tone",
    value = "🤏🏾",
    description = "pinching hand: medium-dark skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "pinching_hand_medium_light_skin_tone",
    value = "🤏🏼",
    description = "pinching hand: medium-light skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "pinching_hand_medium_skin_tone",
    value = "🤏🏽",
    description = "pinching hand: medium skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "sign_of_the_horns",
    value = "🤘",
    description = "sign of the horns",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "sign_of_the_horns_dark_skin_tone",
    value = "🤘🏿",
    description = "sign of the horns: dark skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "sign_of_the_horns_light_skin_tone",
    value = "🤘🏻",
    description = "sign of the horns: light skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "sign_of_the_horns_medium_dark_skin_tone",
    value = "🤘🏾",
    description = "sign of the horns: medium-dark skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "sign_of_the_horns_medium_light_skin_tone",
    value = "🤘🏼",
    description = "sign of the horns: medium-light skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "sign_of_the_horns_medium_skin_tone",
    value = "🤘🏽",
    description = "sign of the horns: medium skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "victory_hand",
    value = "✌️",
    description = "victory hand",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "victory_hand_dark_skin_tone",
    value = "✌🏿",
    description = "victory hand: dark skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "victory_hand_light_skin_tone",
    value = "✌🏻",
    description = "victory hand: light skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "victory_hand_medium_dark_skin_tone",
    value = "✌🏾",
    description = "victory hand: medium-dark skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "victory_hand_medium_light_skin_tone",
    value = "✌🏼",
    description = "victory hand: medium-light skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "victory_hand_medium_skin_tone",
    value = "✌🏽",
    description = "victory hand: medium skin tone",
    category = "People & Body / hand-fingers-partial"
  },
  {
    name = "nail_polish",
    value = "💅",
    description = "nail polish",
    category = "People & Body / hand-prop"
  },
  {
    name = "nail_polish_dark_skin_tone",
    value = "💅🏿",
    description = "nail polish: dark skin tone",
    category = "People & Body / hand-prop"
  },
  {
    name = "nail_polish_light_skin_tone",
    value = "💅🏻",
    description = "nail polish: light skin tone",
    category = "People & Body / hand-prop"
  },
  {
    name = "nail_polish_medium_dark_skin_tone",
    value = "💅🏾",
    description = "nail polish: medium-dark skin tone",
    category = "People & Body / hand-prop"
  },
  {
    name = "nail_polish_medium_light_skin_tone",
    value = "💅🏼",
    description = "nail polish: medium-light skin tone",
    category = "People & Body / hand-prop"
  },
  {
    name = "nail_polish_medium_skin_tone",
    value = "💅🏽",
    description = "nail polish: medium skin tone",
    category = "People & Body / hand-prop"
  },
  {
    name = "selfie",
    value = "🤳",
    description = "selfie",
    category = "People & Body / hand-prop"
  },
  {
    name = "selfie_dark_skin_tone",
    value = "🤳🏿",
    description = "selfie: dark skin tone",
    category = "People & Body / hand-prop"
  },
  {
    name = "selfie_light_skin_tone",
    value = "🤳🏻",
    description = "selfie: light skin tone",
    category = "People & Body / hand-prop"
  },
  {
    name = "selfie_medium_dark_skin_tone",
    value = "🤳🏾",
    description = "selfie: medium-dark skin tone",
    category = "People & Body / hand-prop"
  },
  {
    name = "selfie_medium_light_skin_tone",
    value = "🤳🏼",
    description = "selfie: medium-light skin tone",
    category = "People & Body / hand-prop"
  },
  {
    name = "selfie_medium_skin_tone",
    value = "🤳🏽",
    description = "selfie: medium skin tone",
    category = "People & Body / hand-prop"
  },
  {
    name = "writing_hand",
    value = "✍️",
    description = "writing hand",
    category = "People & Body / hand-prop"
  },
  {
    name = "writing_hand_dark_skin_tone",
    value = "✍🏿",
    description = "writing hand: dark skin tone",
    category = "People & Body / hand-prop"
  },
  {
    name = "writing_hand_light_skin_tone",
    value = "✍🏻",
    description = "writing hand: light skin tone",
    category = "People & Body / hand-prop"
  },
  {
    name = "writing_hand_medium_dark_skin_tone",
    value = "✍🏾",
    description = "writing hand: medium-dark skin tone",
    category = "People & Body / hand-prop"
  },
  {
    name = "writing_hand_medium_light_skin_tone",
    value = "✍🏼",
    description = "writing hand: medium-light skin tone",
    category = "People & Body / hand-prop"
  },
  {
    name = "writing_hand_medium_skin_tone",
    value = "✍🏽",
    description = "writing hand: medium skin tone",
    category = "People & Body / hand-prop"
  },
  {
    name = "backhand_index_pointing_down",
    value = "👇",
    description = "backhand index pointing down",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_down_dark_skin_tone",
    value = "👇🏿",
    description = "backhand index pointing down: dark skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_down_light_skin_tone",
    value = "👇🏻",
    description = "backhand index pointing down: light skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_down_medium_dark_skin_tone",
    value = "👇🏾",
    description = "backhand index pointing down: medium-dark skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_down_medium_light_skin_tone",
    value = "👇🏼",
    description = "backhand index pointing down: medium-light skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_down_medium_skin_tone",
    value = "👇🏽",
    description = "backhand index pointing down: medium skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_left",
    value = "👈",
    description = "backhand index pointing left",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_left_dark_skin_tone",
    value = "👈🏿",
    description = "backhand index pointing left: dark skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_left_light_skin_tone",
    value = "👈🏻",
    description = "backhand index pointing left: light skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_left_medium_dark_skin_tone",
    value = "👈🏾",
    description = "backhand index pointing left: medium-dark skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_left_medium_light_skin_tone",
    value = "👈🏼",
    description = "backhand index pointing left: medium-light skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_left_medium_skin_tone",
    value = "👈🏽",
    description = "backhand index pointing left: medium skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_right",
    value = "👉",
    description = "backhand index pointing right",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_right_dark_skin_tone",
    value = "👉🏿",
    description = "backhand index pointing right: dark skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_right_light_skin_tone",
    value = "👉🏻",
    description = "backhand index pointing right: light skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_right_medium_dark_skin_tone",
    value = "👉🏾",
    description = "backhand index pointing right: medium-dark skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_right_medium_light_skin_tone",
    value = "👉🏼",
    description = "backhand index pointing right: medium-light skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_right_medium_skin_tone",
    value = "👉🏽",
    description = "backhand index pointing right: medium skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_up",
    value = "👆",
    description = "backhand index pointing up",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_up_dark_skin_tone",
    value = "👆🏿",
    description = "backhand index pointing up: dark skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_up_light_skin_tone",
    value = "👆🏻",
    description = "backhand index pointing up: light skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_up_medium_dark_skin_tone",
    value = "👆🏾",
    description = "backhand index pointing up: medium-dark skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_up_medium_light_skin_tone",
    value = "👆🏼",
    description = "backhand index pointing up: medium-light skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "backhand_index_pointing_up_medium_skin_tone",
    value = "👆🏽",
    description = "backhand index pointing up: medium skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "index_pointing_at_the_viewer",
    value = "🫵",
    description = "index pointing at the viewer",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "index_pointing_at_the_viewer_dark_skin_tone",
    value = "🫵🏿",
    description = "index pointing at the viewer: dark skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "index_pointing_at_the_viewer_light_skin_tone",
    value = "🫵🏻",
    description = "index pointing at the viewer: light skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "index_pointing_at_the_viewer_medium_dark_skin_tone",
    value = "🫵🏾",
    description = "index pointing at the viewer: medium-dark skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "index_pointing_at_the_viewer_medium_light_skin_tone",
    value = "🫵🏼",
    description = "index pointing at the viewer: medium-light skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "index_pointing_at_the_viewer_medium_skin_tone",
    value = "🫵🏽",
    description = "index pointing at the viewer: medium skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "index_pointing_up",
    value = "☝️",
    description = "index pointing up",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "index_pointing_up_dark_skin_tone",
    value = "☝🏿",
    description = "index pointing up: dark skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "index_pointing_up_light_skin_tone",
    value = "☝🏻",
    description = "index pointing up: light skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "index_pointing_up_medium_dark_skin_tone",
    value = "☝🏾",
    description = "index pointing up: medium-dark skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "index_pointing_up_medium_light_skin_tone",
    value = "☝🏼",
    description = "index pointing up: medium-light skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "index_pointing_up_medium_skin_tone",
    value = "☝🏽",
    description = "index pointing up: medium skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "middle_finger",
    value = "🖕",
    description = "middle finger",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "middle_finger_dark_skin_tone",
    value = "🖕🏿",
    description = "middle finger: dark skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "middle_finger_light_skin_tone",
    value = "🖕🏻",
    description = "middle finger: light skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "middle_finger_medium_dark_skin_tone",
    value = "🖕🏾",
    description = "middle finger: medium-dark skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "middle_finger_medium_light_skin_tone",
    value = "🖕🏼",
    description = "middle finger: medium-light skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "middle_finger_medium_skin_tone",
    value = "🖕🏽",
    description = "middle finger: medium skin tone",
    category = "People & Body / hand-single-finger"
  },
  {
    name = "clapping_hands",
    value = "👏",
    description = "clapping hands",
    category = "People & Body / hands"
  },
  {
    name = "clapping_hands_dark_skin_tone",
    value = "👏🏿",
    description = "clapping hands: dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "clapping_hands_light_skin_tone",
    value = "👏🏻",
    description = "clapping hands: light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "clapping_hands_medium_dark_skin_tone",
    value = "👏🏾",
    description = "clapping hands: medium-dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "clapping_hands_medium_light_skin_tone",
    value = "👏🏼",
    description = "clapping hands: medium-light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "clapping_hands_medium_skin_tone",
    value = "👏🏽",
    description = "clapping hands: medium skin tone",
    category = "People & Body / hands"
  },
  {
    name = "folded_hands",
    value = "🙏",
    description = "folded hands",
    category = "People & Body / hands"
  },
  {
    name = "folded_hands_dark_skin_tone",
    value = "🙏🏿",
    description = "folded hands: dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "folded_hands_light_skin_tone",
    value = "🙏🏻",
    description = "folded hands: light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "folded_hands_medium_dark_skin_tone",
    value = "🙏🏾",
    description = "folded hands: medium-dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "folded_hands_medium_light_skin_tone",
    value = "🙏🏼",
    description = "folded hands: medium-light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "folded_hands_medium_skin_tone",
    value = "🙏🏽",
    description = "folded hands: medium skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake",
    value = "🤝",
    description = "handshake",
    category = "People & Body / hands"
  },
  {
    name = "handshake_dark_skin_tone",
    value = "🤝🏿",
    description = "handshake: dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_dark_skin_tone_light_skin_tone",
    value = "🫱🏿‍🫲🏻",
    description = "handshake: dark skin tone, light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_dark_skin_tone_medium_dark_skin_tone",
    value = "🫱🏿‍🫲🏾",
    description = "handshake: dark skin tone, medium-dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_dark_skin_tone_medium_light_skin_tone",
    value = "🫱🏿‍🫲🏼",
    description = "handshake: dark skin tone, medium-light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_dark_skin_tone_medium_skin_tone",
    value = "🫱🏿‍🫲🏽",
    description = "handshake: dark skin tone, medium skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_light_skin_tone",
    value = "🤝🏻",
    description = "handshake: light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_light_skin_tone_dark_skin_tone",
    value = "🫱🏻‍🫲🏿",
    description = "handshake: light skin tone, dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_light_skin_tone_medium_dark_skin_tone",
    value = "🫱🏻‍🫲🏾",
    description = "handshake: light skin tone, medium-dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_light_skin_tone_medium_light_skin_tone",
    value = "🫱🏻‍🫲🏼",
    description = "handshake: light skin tone, medium-light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_light_skin_tone_medium_skin_tone",
    value = "🫱🏻‍🫲🏽",
    description = "handshake: light skin tone, medium skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_medium_dark_skin_tone",
    value = "🤝🏾",
    description = "handshake: medium-dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_medium_dark_skin_tone_dark_skin_tone",
    value = "🫱🏾‍🫲🏿",
    description = "handshake: medium-dark skin tone, dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_medium_dark_skin_tone_light_skin_tone",
    value = "🫱🏾‍🫲🏻",
    description = "handshake: medium-dark skin tone, light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_medium_dark_skin_tone_medium_light_skin_tone",
    value = "🫱🏾‍🫲🏼",
    description = "handshake: medium-dark skin tone, medium-light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_medium_dark_skin_tone_medium_skin_tone",
    value = "🫱🏾‍🫲🏽",
    description = "handshake: medium-dark skin tone, medium skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_medium_light_skin_tone",
    value = "🤝🏼",
    description = "handshake: medium-light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_medium_light_skin_tone_dark_skin_tone",
    value = "🫱🏼‍🫲🏿",
    description = "handshake: medium-light skin tone, dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_medium_light_skin_tone_light_skin_tone",
    value = "🫱🏼‍🫲🏻",
    description = "handshake: medium-light skin tone, light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_medium_light_skin_tone_medium_dark_skin_tone",
    value = "🫱🏼‍🫲🏾",
    description = "handshake: medium-light skin tone, medium-dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_medium_light_skin_tone_medium_skin_tone",
    value = "🫱🏼‍🫲🏽",
    description = "handshake: medium-light skin tone, medium skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_medium_skin_tone",
    value = "🤝🏽",
    description = "handshake: medium skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_medium_skin_tone_dark_skin_tone",
    value = "🫱🏽‍🫲🏿",
    description = "handshake: medium skin tone, dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_medium_skin_tone_light_skin_tone",
    value = "🫱🏽‍🫲🏻",
    description = "handshake: medium skin tone, light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_medium_skin_tone_medium_dark_skin_tone",
    value = "🫱🏽‍🫲🏾",
    description = "handshake: medium skin tone, medium-dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "handshake_medium_skin_tone_medium_light_skin_tone",
    value = "🫱🏽‍🫲🏼",
    description = "handshake: medium skin tone, medium-light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "heart_hands",
    value = "🫶",
    description = "heart hands",
    category = "People & Body / hands"
  },
  {
    name = "heart_hands_dark_skin_tone",
    value = "🫶🏿",
    description = "heart hands: dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "heart_hands_light_skin_tone",
    value = "🫶🏻",
    description = "heart hands: light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "heart_hands_medium_dark_skin_tone",
    value = "🫶🏾",
    description = "heart hands: medium-dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "heart_hands_medium_light_skin_tone",
    value = "🫶🏼",
    description = "heart hands: medium-light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "heart_hands_medium_skin_tone",
    value = "🫶🏽",
    description = "heart hands: medium skin tone",
    category = "People & Body / hands"
  },
  {
    name = "open_hands",
    value = "👐",
    description = "open hands",
    category = "People & Body / hands"
  },
  {
    name = "open_hands_dark_skin_tone",
    value = "👐🏿",
    description = "open hands: dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "open_hands_light_skin_tone",
    value = "👐🏻",
    description = "open hands: light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "open_hands_medium_dark_skin_tone",
    value = "👐🏾",
    description = "open hands: medium-dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "open_hands_medium_light_skin_tone",
    value = "👐🏼",
    description = "open hands: medium-light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "open_hands_medium_skin_tone",
    value = "👐🏽",
    description = "open hands: medium skin tone",
    category = "People & Body / hands"
  },
  {
    name = "palms_up_together",
    value = "🤲",
    description = "palms up together",
    category = "People & Body / hands"
  },
  {
    name = "palms_up_together_dark_skin_tone",
    value = "🤲🏿",
    description = "palms up together: dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "palms_up_together_light_skin_tone",
    value = "🤲🏻",
    description = "palms up together: light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "palms_up_together_medium_dark_skin_tone",
    value = "🤲🏾",
    description = "palms up together: medium-dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "palms_up_together_medium_light_skin_tone",
    value = "🤲🏼",
    description = "palms up together: medium-light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "palms_up_together_medium_skin_tone",
    value = "🤲🏽",
    description = "palms up together: medium skin tone",
    category = "People & Body / hands"
  },
  {
    name = "raising_hands",
    value = "🙌",
    description = "raising hands",
    category = "People & Body / hands"
  },
  {
    name = "raising_hands_dark_skin_tone",
    value = "🙌🏿",
    description = "raising hands: dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "raising_hands_light_skin_tone",
    value = "🙌🏻",
    description = "raising hands: light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "raising_hands_medium_dark_skin_tone",
    value = "🙌🏾",
    description = "raising hands: medium-dark skin tone",
    category = "People & Body / hands"
  },
  {
    name = "raising_hands_medium_light_skin_tone",
    value = "🙌🏼",
    description = "raising hands: medium-light skin tone",
    category = "People & Body / hands"
  },
  {
    name = "raising_hands_medium_skin_tone",
    value = "🙌🏽",
    description = "raising hands: medium skin tone",
    category = "People & Body / hands"
  },
  {
    name = "baby",
    value = "👶",
    description = "baby",
    category = "People & Body / person"
  },
  {
    name = "baby_dark_skin_tone",
    value = "👶🏿",
    description = "baby: dark skin tone",
    category = "People & Body / person"
  },
  {
    name = "baby_light_skin_tone",
    value = "👶🏻",
    description = "baby: light skin tone",
    category = "People & Body / person"
  },
  {
    name = "baby_medium_dark_skin_tone",
    value = "👶🏾",
    description = "baby: medium-dark skin tone",
    category = "People & Body / person"
  },
  {
    name = "baby_medium_light_skin_tone",
    value = "👶🏼",
    description = "baby: medium-light skin tone",
    category = "People & Body / person"
  },
  {
    name = "baby_medium_skin_tone",
    value = "👶🏽",
    description = "baby: medium skin tone",
    category = "People & Body / person"
  },
  {
    name = "boy",
    value = "👦",
    description = "boy",
    category = "People & Body / person"
  },
  {
    name = "boy_dark_skin_tone",
    value = "👦🏿",
    description = "boy: dark skin tone",
    category = "People & Body / person"
  },
  {
    name = "boy_light_skin_tone",
    value = "👦🏻",
    description = "boy: light skin tone",
    category = "People & Body / person"
  },
  {
    name = "boy_medium_dark_skin_tone",
    value = "👦🏾",
    description = "boy: medium-dark skin tone",
    category = "People & Body / person"
  },
  {
    name = "boy_medium_light_skin_tone",
    value = "👦🏼",
    description = "boy: medium-light skin tone",
    category = "People & Body / person"
  },
  {
    name = "boy_medium_skin_tone",
    value = "👦🏽",
    description = "boy: medium skin tone",
    category = "People & Body / person"
  },
  {
    name = "child",
    value = "🧒",
    description = "child",
    category = "People & Body / person"
  },
  {
    name = "child_dark_skin_tone",
    value = "🧒🏿",
    description = "child: dark skin tone",
    category = "People & Body / person"
  },
  {
    name = "child_light_skin_tone",
    value = "🧒🏻",
    description = "child: light skin tone",
    category = "People & Body / person"
  },
  {
    name = "child_medium_dark_skin_tone",
    value = "🧒🏾",
    description = "child: medium-dark skin tone",
    category = "People & Body / person"
  },
  {
    name = "child_medium_light_skin_tone",
    value = "🧒🏼",
    description = "child: medium-light skin tone",
    category = "People & Body / person"
  },
  {
    name = "child_medium_skin_tone",
    value = "🧒🏽",
    description = "child: medium skin tone",
    category = "People & Body / person"
  },
  {
    name = "girl",
    value = "👧",
    description = "girl",
    category = "People & Body / person"
  },
  {
    name = "girl_dark_skin_tone",
    value = "👧🏿",
    description = "girl: dark skin tone",
    category = "People & Body / person"
  },
  {
    name = "girl_light_skin_tone",
    value = "👧🏻",
    description = "girl: light skin tone",
    category = "People & Body / person"
  },
  {
    name = "girl_medium_dark_skin_tone",
    value = "👧🏾",
    description = "girl: medium-dark skin tone",
    category = "People & Body / person"
  },
  {
    name = "girl_medium_light_skin_tone",
    value = "👧🏼",
    description = "girl: medium-light skin tone",
    category = "People & Body / person"
  },
  {
    name = "girl_medium_skin_tone",
    value = "👧🏽",
    description = "girl: medium skin tone",
    category = "People & Body / person"
  },
  {
    name = "man",
    value = "👨",
    description = "man",
    category = "People & Body / person"
  },
  {
    name = "man_bald",
    value = "👨‍🦲",
    description = "man: bald",
    category = "People & Body / person"
  },
  {
    name = "man_beard",
    value = "🧔‍♂️",
    description = "man: beard",
    category = "People & Body / person"
  },
  {
    name = "man_blond_hair",
    value = "👱‍♂️",
    description = "man: blond hair",
    category = "People & Body / person"
  },
  {
    name = "man_curly_hair",
    value = "👨‍🦱",
    description = "man: curly hair",
    category = "People & Body / person"
  },
  {
    name = "man_dark_skin_tone",
    value = "👨🏿",
    description = "man: dark skin tone",
    category = "People & Body / person"
  },
  {
    name = "man_dark_skin_tone_bald",
    value = "👨🏿‍🦲",
    description = "man: dark skin tone, bald",
    category = "People & Body / person"
  },
  {
    name = "man_dark_skin_tone_beard",
    value = "🧔🏿‍♂️",
    description = "man: dark skin tone, beard",
    category = "People & Body / person"
  },
  {
    name = "man_dark_skin_tone_blond_hair",
    value = "👱🏿‍♂️",
    description = "man: dark skin tone, blond hair",
    category = "People & Body / person"
  },
  {
    name = "man_dark_skin_tone_curly_hair",
    value = "👨🏿‍🦱",
    description = "man: dark skin tone, curly hair",
    category = "People & Body / person"
  },
  {
    name = "man_dark_skin_tone_red_hair",
    value = "👨🏿‍🦰",
    description = "man: dark skin tone, red hair",
    category = "People & Body / person"
  },
  {
    name = "man_dark_skin_tone_white_hair",
    value = "👨🏿‍🦳",
    description = "man: dark skin tone, white hair",
    category = "People & Body / person"
  },
  {
    name = "man_light_skin_tone",
    value = "👨🏻",
    description = "man: light skin tone",
    category = "People & Body / person"
  },
  {
    name = "man_light_skin_tone_bald",
    value = "👨🏻‍🦲",
    description = "man: light skin tone, bald",
    category = "People & Body / person"
  },
  {
    name = "man_light_skin_tone_beard",
    value = "🧔🏻‍♂️",
    description = "man: light skin tone, beard",
    category = "People & Body / person"
  },
  {
    name = "man_light_skin_tone_blond_hair",
    value = "👱🏻‍♂️",
    description = "man: light skin tone, blond hair",
    category = "People & Body / person"
  },
  {
    name = "man_light_skin_tone_curly_hair",
    value = "👨🏻‍🦱",
    description = "man: light skin tone, curly hair",
    category = "People & Body / person"
  },
  {
    name = "man_light_skin_tone_red_hair",
    value = "👨🏻‍🦰",
    description = "man: light skin tone, red hair",
    category = "People & Body / person"
  },
  {
    name = "man_light_skin_tone_white_hair",
    value = "👨🏻‍🦳",
    description = "man: light skin tone, white hair",
    category = "People & Body / person"
  },
  {
    name = "man_medium_dark_skin_tone",
    value = "👨🏾",
    description = "man: medium-dark skin tone",
    category = "People & Body / person"
  },
  {
    name = "man_medium_dark_skin_tone_bald",
    value = "👨🏾‍🦲",
    description = "man: medium-dark skin tone, bald",
    category = "People & Body / person"
  },
  {
    name = "man_medium_dark_skin_tone_beard",
    value = "🧔🏾‍♂️",
    description = "man: medium-dark skin tone, beard",
    category = "People & Body / person"
  },
  {
    name = "man_medium_dark_skin_tone_blond_hair",
    value = "👱🏾‍♂️",
    description = "man: medium-dark skin tone, blond hair",
    category = "People & Body / person"
  },
  {
    name = "man_medium_dark_skin_tone_curly_hair",
    value = "👨🏾‍🦱",
    description = "man: medium-dark skin tone, curly hair",
    category = "People & Body / person"
  },
  {
    name = "man_medium_dark_skin_tone_red_hair",
    value = "👨🏾‍🦰",
    description = "man: medium-dark skin tone, red hair",
    category = "People & Body / person"
  },
  {
    name = "man_medium_dark_skin_tone_white_hair",
    value = "👨🏾‍🦳",
    description = "man: medium-dark skin tone, white hair",
    category = "People & Body / person"
  },
  {
    name = "man_medium_light_skin_tone",
    value = "👨🏼",
    description = "man: medium-light skin tone",
    category = "People & Body / person"
  },
  {
    name = "man_medium_light_skin_tone_bald",
    value = "👨🏼‍🦲",
    description = "man: medium-light skin tone, bald",
    category = "People & Body / person"
  },
  {
    name = "man_medium_light_skin_tone_beard",
    value = "🧔🏼‍♂️",
    description = "man: medium-light skin tone, beard",
    category = "People & Body / person"
  },
  {
    name = "man_medium_light_skin_tone_blond_hair",
    value = "👱🏼‍♂️",
    description = "man: medium-light skin tone, blond hair",
    category = "People & Body / person"
  },
  {
    name = "man_medium_light_skin_tone_curly_hair",
    value = "👨🏼‍🦱",
    description = "man: medium-light skin tone, curly hair",
    category = "People & Body / person"
  },
  {
    name = "man_medium_light_skin_tone_red_hair",
    value = "👨🏼‍🦰",
    description = "man: medium-light skin tone, red hair",
    category = "People & Body / person"
  },
  {
    name = "man_medium_light_skin_tone_white_hair",
    value = "👨🏼‍🦳",
    description = "man: medium-light skin tone, white hair",
    category = "People & Body / person"
  },
  {
    name = "man_medium_skin_tone",
    value = "👨🏽",
    description = "man: medium skin tone",
    category = "People & Body / person"
  },
  {
    name = "man_medium_skin_tone_bald",
    value = "👨🏽‍🦲",
    description = "man: medium skin tone, bald",
    category = "People & Body / person"
  },
  {
    name = "man_medium_skin_tone_beard",
    value = "🧔🏽‍♂️",
    description = "man: medium skin tone, beard",
    category = "People & Body / person"
  },
  {
    name = "man_medium_skin_tone_blond_hair",
    value = "👱🏽‍♂️",
    description = "man: medium skin tone, blond hair",
    category = "People & Body / person"
  },
  {
    name = "man_medium_skin_tone_curly_hair",
    value = "👨🏽‍🦱",
    description = "man: medium skin tone, curly hair",
    category = "People & Body / person"
  },
  {
    name = "man_medium_skin_tone_red_hair",
    value = "👨🏽‍🦰",
    description = "man: medium skin tone, red hair",
    category = "People & Body / person"
  },
  {
    name = "man_medium_skin_tone_white_hair",
    value = "👨🏽‍🦳",
    description = "man: medium skin tone, white hair",
    category = "People & Body / person"
  },
  {
    name = "man_red_hair",
    value = "👨‍🦰",
    description = "man: red hair",
    category = "People & Body / person"
  },
  {
    name = "man_white_hair",
    value = "👨‍🦳",
    description = "man: white hair",
    category = "People & Body / person"
  },
  {
    name = "old_man",
    value = "👴",
    description = "old man",
    category = "People & Body / person"
  },
  {
    name = "old_man_dark_skin_tone",
    value = "👴🏿",
    description = "old man: dark skin tone",
    category = "People & Body / person"
  },
  {
    name = "old_man_light_skin_tone",
    value = "👴🏻",
    description = "old man: light skin tone",
    category = "People & Body / person"
  },
  {
    name = "old_man_medium_dark_skin_tone",
    value = "👴🏾",
    description = "old man: medium-dark skin tone",
    category = "People & Body / person"
  },
  {
    name = "old_man_medium_light_skin_tone",
    value = "👴🏼",
    description = "old man: medium-light skin tone",
    category = "People & Body / person"
  },
  {
    name = "old_man_medium_skin_tone",
    value = "👴🏽",
    description = "old man: medium skin tone",
    category = "People & Body / person"
  },
  {
    name = "old_woman",
    value = "👵",
    description = "old woman",
    category = "People & Body / person"
  },
  {
    name = "old_woman_dark_skin_tone",
    value = "👵🏿",
    description = "old woman: dark skin tone",
    category = "People & Body / person"
  },
  {
    name = "old_woman_light_skin_tone",
    value = "👵🏻",
    description = "old woman: light skin tone",
    category = "People & Body / person"
  },
  {
    name = "old_woman_medium_dark_skin_tone",
    value = "👵🏾",
    description = "old woman: medium-dark skin tone",
    category = "People & Body / person"
  },
  {
    name = "old_woman_medium_light_skin_tone",
    value = "👵🏼",
    description = "old woman: medium-light skin tone",
    category = "People & Body / person"
  },
  {
    name = "old_woman_medium_skin_tone",
    value = "👵🏽",
    description = "old woman: medium skin tone",
    category = "People & Body / person"
  },
  {
    name = "older_person",
    value = "🧓",
    description = "older person",
    category = "People & Body / person"
  },
  {
    name = "older_person_dark_skin_tone",
    value = "🧓🏿",
    description = "older person: dark skin tone",
    category = "People & Body / person"
  },
  {
    name = "older_person_light_skin_tone",
    value = "🧓🏻",
    description = "older person: light skin tone",
    category = "People & Body / person"
  },
  {
    name = "older_person_medium_dark_skin_tone",
    value = "🧓🏾",
    description = "older person: medium-dark skin tone",
    category = "People & Body / person"
  },
  {
    name = "older_person_medium_light_skin_tone",
    value = "🧓🏼",
    description = "older person: medium-light skin tone",
    category = "People & Body / person"
  },
  {
    name = "older_person_medium_skin_tone",
    value = "🧓🏽",
    description = "older person: medium skin tone",
    category = "People & Body / person"
  },
  {
    name = "person",
    value = "🧑",
    description = "person",
    category = "People & Body / person"
  },
  {
    name = "person_bald",
    value = "🧑‍🦲",
    description = "person: bald",
    category = "People & Body / person"
  },
  {
    name = "person_beard",
    value = "🧔",
    description = "person: beard",
    category = "People & Body / person"
  },
  {
    name = "person_blond_hair",
    value = "👱",
    description = "person: blond hair",
    category = "People & Body / person"
  },
  {
    name = "person_curly_hair",
    value = "🧑‍🦱",
    description = "person: curly hair",
    category = "People & Body / person"
  },
  {
    name = "person_dark_skin_tone",
    value = "🧑🏿",
    description = "person: dark skin tone",
    category = "People & Body / person"
  },
  {
    name = "person_dark_skin_tone_bald",
    value = "🧑🏿‍🦲",
    description = "person: dark skin tone, bald",
    category = "People & Body / person"
  },
  {
    name = "person_dark_skin_tone_beard",
    value = "🧔🏿",
    description = "person: dark skin tone, beard",
    category = "People & Body / person"
  },
  {
    name = "person_dark_skin_tone_blond_hair",
    value = "👱🏿",
    description = "person: dark skin tone, blond hair",
    category = "People & Body / person"
  },
  {
    name = "person_dark_skin_tone_curly_hair",
    value = "🧑🏿‍🦱",
    description = "person: dark skin tone, curly hair",
    category = "People & Body / person"
  },
  {
    name = "person_dark_skin_tone_red_hair",
    value = "🧑🏿‍🦰",
    description = "person: dark skin tone, red hair",
    category = "People & Body / person"
  },
  {
    name = "person_dark_skin_tone_white_hair",
    value = "🧑🏿‍🦳",
    description = "person: dark skin tone, white hair",
    category = "People & Body / person"
  },
  {
    name = "person_light_skin_tone",
    value = "🧑🏻",
    description = "person: light skin tone",
    category = "People & Body / person"
  },
  {
    name = "person_light_skin_tone_bald",
    value = "🧑🏻‍🦲",
    description = "person: light skin tone, bald",
    category = "People & Body / person"
  },
  {
    name = "person_light_skin_tone_beard",
    value = "🧔🏻",
    description = "person: light skin tone, beard",
    category = "People & Body / person"
  },
  {
    name = "person_light_skin_tone_blond_hair",
    value = "👱🏻",
    description = "person: light skin tone, blond hair",
    category = "People & Body / person"
  },
  {
    name = "person_light_skin_tone_curly_hair",
    value = "🧑🏻‍🦱",
    description = "person: light skin tone, curly hair",
    category = "People & Body / person"
  },
  {
    name = "person_light_skin_tone_red_hair",
    value = "🧑🏻‍🦰",
    description = "person: light skin tone, red hair",
    category = "People & Body / person"
  },
  {
    name = "person_light_skin_tone_white_hair",
    value = "🧑🏻‍🦳",
    description = "person: light skin tone, white hair",
    category = "People & Body / person"
  },
  {
    name = "person_medium_dark_skin_tone",
    value = "🧑🏾",
    description = "person: medium-dark skin tone",
    category = "People & Body / person"
  },
  {
    name = "person_medium_dark_skin_tone_bald",
    value = "🧑🏾‍🦲",
    description = "person: medium-dark skin tone, bald",
    category = "People & Body / person"
  },
  {
    name = "person_medium_dark_skin_tone_beard",
    value = "🧔🏾",
    description = "person: medium-dark skin tone, beard",
    category = "People & Body / person"
  },
  {
    name = "person_medium_dark_skin_tone_blond_hair",
    value = "👱🏾",
    description = "person: medium-dark skin tone, blond hair",
    category = "People & Body / person"
  },
  {
    name = "person_medium_dark_skin_tone_curly_hair",
    value = "🧑🏾‍🦱",
    description = "person: medium-dark skin tone, curly hair",
    category = "People & Body / person"
  },
  {
    name = "person_medium_dark_skin_tone_red_hair",
    value = "🧑🏾‍🦰",
    description = "person: medium-dark skin tone, red hair",
    category = "People & Body / person"
  },
  {
    name = "person_medium_dark_skin_tone_white_hair",
    value = "🧑🏾‍🦳",
    description = "person: medium-dark skin tone, white hair",
    category = "People & Body / person"
  },
  {
    name = "person_medium_light_skin_tone",
    value = "🧑🏼",
    description = "person: medium-light skin tone",
    category = "People & Body / person"
  },
  {
    name = "person_medium_light_skin_tone_bald",
    value = "🧑🏼‍🦲",
    description = "person: medium-light skin tone, bald",
    category = "People & Body / person"
  },
  {
    name = "person_medium_light_skin_tone_beard",
    value = "🧔🏼",
    description = "person: medium-light skin tone, beard",
    category = "People & Body / person"
  },
  {
    name = "person_medium_light_skin_tone_blond_hair",
    value = "👱🏼",
    description = "person: medium-light skin tone, blond hair",
    category = "People & Body / person"
  },
  {
    name = "person_medium_light_skin_tone_curly_hair",
    value = "🧑🏼‍🦱",
    description = "person: medium-light skin tone, curly hair",
    category = "People & Body / person"
  },
  {
    name = "person_medium_light_skin_tone_red_hair",
    value = "🧑🏼‍🦰",
    description = "person: medium-light skin tone, red hair",
    category = "People & Body / person"
  },
  {
    name = "person_medium_light_skin_tone_white_hair",
    value = "🧑🏼‍🦳",
    description = "person: medium-light skin tone, white hair",
    category = "People & Body / person"
  },
  {
    name = "person_medium_skin_tone",
    value = "🧑🏽",
    description = "person: medium skin tone",
    category = "People & Body / person"
  },
  {
    name = "person_medium_skin_tone_bald",
    value = "🧑🏽‍🦲",
    description = "person: medium skin tone, bald",
    category = "People & Body / person"
  },
  {
    name = "person_medium_skin_tone_beard",
    value = "🧔🏽",
    description = "person: medium skin tone, beard",
    category = "People & Body / person"
  },
  {
    name = "person_medium_skin_tone_blond_hair",
    value = "👱🏽",
    description = "person: medium skin tone, blond hair",
    category = "People & Body / person"
  },
  {
    name = "person_medium_skin_tone_curly_hair",
    value = "🧑🏽‍🦱",
    description = "person: medium skin tone, curly hair",
    category = "People & Body / person"
  },
  {
    name = "person_medium_skin_tone_red_hair",
    value = "🧑🏽‍🦰",
    description = "person: medium skin tone, red hair",
    category = "People & Body / person"
  },
  {
    name = "person_medium_skin_tone_white_hair",
    value = "🧑🏽‍🦳",
    description = "person: medium skin tone, white hair",
    category = "People & Body / person"
  },
  {
    name = "person_red_hair",
    value = "🧑‍🦰",
    description = "person: red hair",
    category = "People & Body / person"
  },
  {
    name = "person_white_hair",
    value = "🧑‍🦳",
    description = "person: white hair",
    category = "People & Body / person"
  },
  {
    name = "woman",
    value = "👩",
    description = "woman",
    category = "People & Body / person"
  },
  {
    name = "woman_bald",
    value = "👩‍🦲",
    description = "woman: bald",
    category = "People & Body / person"
  },
  {
    name = "woman_beard",
    value = "🧔‍♀️",
    description = "woman: beard",
    category = "People & Body / person"
  },
  {
    name = "woman_blond_hair",
    value = "👱‍♀️",
    description = "woman: blond hair",
    category = "People & Body / person"
  },
  {
    name = "woman_curly_hair",
    value = "👩‍🦱",
    description = "woman: curly hair",
    category = "People & Body / person"
  },
  {
    name = "woman_dark_skin_tone",
    value = "👩🏿",
    description = "woman: dark skin tone",
    category = "People & Body / person"
  },
  {
    name = "woman_dark_skin_tone_bald",
    value = "👩🏿‍🦲",
    description = "woman: dark skin tone, bald",
    category = "People & Body / person"
  },
  {
    name = "woman_dark_skin_tone_beard",
    value = "🧔🏿‍♀️",
    description = "woman: dark skin tone, beard",
    category = "People & Body / person"
  },
  {
    name = "woman_dark_skin_tone_blond_hair",
    value = "👱🏿‍♀️",
    description = "woman: dark skin tone, blond hair",
    category = "People & Body / person"
  },
  {
    name = "woman_dark_skin_tone_curly_hair",
    value = "👩🏿‍🦱",
    description = "woman: dark skin tone, curly hair",
    category = "People & Body / person"
  },
  {
    name = "woman_dark_skin_tone_red_hair",
    value = "👩🏿‍🦰",
    description = "woman: dark skin tone, red hair",
    category = "People & Body / person"
  },
  {
    name = "woman_dark_skin_tone_white_hair",
    value = "👩🏿‍🦳",
    description = "woman: dark skin tone, white hair",
    category = "People & Body / person"
  },
  {
    name = "woman_light_skin_tone",
    value = "👩🏻",
    description = "woman: light skin tone",
    category = "People & Body / person"
  },
  {
    name = "woman_light_skin_tone_bald",
    value = "👩🏻‍🦲",
    description = "woman: light skin tone, bald",
    category = "People & Body / person"
  },
  {
    name = "woman_light_skin_tone_beard",
    value = "🧔🏻‍♀️",
    description = "woman: light skin tone, beard",
    category = "People & Body / person"
  },
  {
    name = "woman_light_skin_tone_blond_hair",
    value = "👱🏻‍♀️",
    description = "woman: light skin tone, blond hair",
    category = "People & Body / person"
  },
  {
    name = "woman_light_skin_tone_curly_hair",
    value = "👩🏻‍🦱",
    description = "woman: light skin tone, curly hair",
    category = "People & Body / person"
  },
  {
    name = "woman_light_skin_tone_red_hair",
    value = "👩🏻‍🦰",
    description = "woman: light skin tone, red hair",
    category = "People & Body / person"
  },
  {
    name = "woman_light_skin_tone_white_hair",
    value = "👩🏻‍🦳",
    description = "woman: light skin tone, white hair",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_dark_skin_tone",
    value = "👩🏾",
    description = "woman: medium-dark skin tone",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_dark_skin_tone_bald",
    value = "👩🏾‍🦲",
    description = "woman: medium-dark skin tone, bald",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_dark_skin_tone_beard",
    value = "🧔🏾‍♀️",
    description = "woman: medium-dark skin tone, beard",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_dark_skin_tone_blond_hair",
    value = "👱🏾‍♀️",
    description = "woman: medium-dark skin tone, blond hair",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_dark_skin_tone_curly_hair",
    value = "👩🏾‍🦱",
    description = "woman: medium-dark skin tone, curly hair",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_dark_skin_tone_red_hair",
    value = "👩🏾‍🦰",
    description = "woman: medium-dark skin tone, red hair",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_dark_skin_tone_white_hair",
    value = "👩🏾‍🦳",
    description = "woman: medium-dark skin tone, white hair",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_light_skin_tone",
    value = "👩🏼",
    description = "woman: medium-light skin tone",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_light_skin_tone_bald",
    value = "👩🏼‍🦲",
    description = "woman: medium-light skin tone, bald",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_light_skin_tone_beard",
    value = "🧔🏼‍♀️",
    description = "woman: medium-light skin tone, beard",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_light_skin_tone_blond_hair",
    value = "👱🏼‍♀️",
    description = "woman: medium-light skin tone, blond hair",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_light_skin_tone_curly_hair",
    value = "👩🏼‍🦱",
    description = "woman: medium-light skin tone, curly hair",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_light_skin_tone_red_hair",
    value = "👩🏼‍🦰",
    description = "woman: medium-light skin tone, red hair",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_light_skin_tone_white_hair",
    value = "👩🏼‍🦳",
    description = "woman: medium-light skin tone, white hair",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_skin_tone",
    value = "👩🏽",
    description = "woman: medium skin tone",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_skin_tone_bald",
    value = "👩🏽‍🦲",
    description = "woman: medium skin tone, bald",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_skin_tone_beard",
    value = "🧔🏽‍♀️",
    description = "woman: medium skin tone, beard",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_skin_tone_blond_hair",
    value = "👱🏽‍♀️",
    description = "woman: medium skin tone, blond hair",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_skin_tone_curly_hair",
    value = "👩🏽‍🦱",
    description = "woman: medium skin tone, curly hair",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_skin_tone_red_hair",
    value = "👩🏽‍🦰",
    description = "woman: medium skin tone, red hair",
    category = "People & Body / person"
  },
  {
    name = "woman_medium_skin_tone_white_hair",
    value = "👩🏽‍🦳",
    description = "woman: medium skin tone, white hair",
    category = "People & Body / person"
  },
  {
    name = "woman_red_hair",
    value = "👩‍🦰",
    description = "woman: red hair",
    category = "People & Body / person"
  },
  {
    name = "woman_white_hair",
    value = "👩‍🦳",
    description = "woman: white hair",
    category = "People & Body / person"
  },
  {
    name = "man_climbing",
    value = "🧗‍♂️",
    description = "man climbing",
    category = "People & Body / person-activity"
  },
  {
    name = "man_climbing_dark_skin_tone",
    value = "🧗🏿‍♂️",
    description = "man climbing: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_climbing_light_skin_tone",
    value = "🧗🏻‍♂️",
    description = "man climbing: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_climbing_medium_dark_skin_tone",
    value = "🧗🏾‍♂️",
    description = "man climbing: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_climbing_medium_light_skin_tone",
    value = "🧗🏼‍♂️",
    description = "man climbing: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_climbing_medium_skin_tone",
    value = "🧗🏽‍♂️",
    description = "man climbing: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_dancing",
    value = "🕺",
    description = "man dancing",
    category = "People & Body / person-activity"
  },
  {
    name = "man_dancing_dark_skin_tone",
    value = "🕺🏿",
    description = "man dancing: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_dancing_light_skin_tone",
    value = "🕺🏻",
    description = "man dancing: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_dancing_medium_dark_skin_tone",
    value = "🕺🏾",
    description = "man dancing: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_dancing_medium_light_skin_tone",
    value = "🕺🏼",
    description = "man dancing: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_dancing_medium_skin_tone",
    value = "🕺🏽",
    description = "man dancing: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_getting_haircut",
    value = "💇‍♂️",
    description = "man getting haircut",
    category = "People & Body / person-activity"
  },
  {
    name = "man_getting_haircut_dark_skin_tone",
    value = "💇🏿‍♂️",
    description = "man getting haircut: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_getting_haircut_light_skin_tone",
    value = "💇🏻‍♂️",
    description = "man getting haircut: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_getting_haircut_medium_dark_skin_tone",
    value = "💇🏾‍♂️",
    description = "man getting haircut: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_getting_haircut_medium_light_skin_tone",
    value = "💇🏼‍♂️",
    description = "man getting haircut: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_getting_haircut_medium_skin_tone",
    value = "💇🏽‍♂️",
    description = "man getting haircut: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_getting_massage",
    value = "💆‍♂️",
    description = "man getting massage",
    category = "People & Body / person-activity"
  },
  {
    name = "man_getting_massage_dark_skin_tone",
    value = "💆🏿‍♂️",
    description = "man getting massage: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_getting_massage_light_skin_tone",
    value = "💆🏻‍♂️",
    description = "man getting massage: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_getting_massage_medium_dark_skin_tone",
    value = "💆🏾‍♂️",
    description = "man getting massage: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_getting_massage_medium_light_skin_tone",
    value = "💆🏼‍♂️",
    description = "man getting massage: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_getting_massage_medium_skin_tone",
    value = "💆🏽‍♂️",
    description = "man getting massage: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_manual_wheelchair",
    value = "👨‍🦽",
    description = "man in manual wheelchair",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_manual_wheelchair_dark_skin_tone",
    value = "👨🏿‍🦽",
    description = "man in manual wheelchair: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_manual_wheelchair_facing_right",
    value = "👨‍🦽‍➡️",
    description = "man in manual wheelchair facing right",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_manual_wheelchair_facing_right_dark_skin_tone",
    value = "👨🏿‍🦽‍➡️",
    description = "man in manual wheelchair facing right: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_manual_wheelchair_facing_right_light_skin_tone",
    value = "👨🏻‍🦽‍➡️",
    description = "man in manual wheelchair facing right: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_manual_wheelchair_facing_right_medium_dark_skin_tone",
    value = "👨🏾‍🦽‍➡️",
    description = "man in manual wheelchair facing right: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_manual_wheelchair_facing_right_medium_light_skin_tone",
    value = "👨🏼‍🦽‍➡️",
    description = "man in manual wheelchair facing right: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_manual_wheelchair_facing_right_medium_skin_tone",
    value = "👨🏽‍🦽‍➡️",
    description = "man in manual wheelchair facing right: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_manual_wheelchair_light_skin_tone",
    value = "👨🏻‍🦽",
    description = "man in manual wheelchair: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_manual_wheelchair_medium_dark_skin_tone",
    value = "👨🏾‍🦽",
    description = "man in manual wheelchair: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_manual_wheelchair_medium_light_skin_tone",
    value = "👨🏼‍🦽",
    description = "man in manual wheelchair: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_manual_wheelchair_medium_skin_tone",
    value = "👨🏽‍🦽",
    description = "man in manual wheelchair: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_motorized_wheelchair",
    value = "👨‍🦼",
    description = "man in motorized wheelchair",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_motorized_wheelchair_dark_skin_tone",
    value = "👨🏿‍🦼",
    description = "man in motorized wheelchair: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_motorized_wheelchair_facing_right",
    value = "👨‍🦼‍➡️",
    description = "man in motorized wheelchair facing right",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_motorized_wheelchair_facing_right_dark_skin_tone",
    value = "👨🏿‍🦼‍➡️",
    description = "man in motorized wheelchair facing right: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_motorized_wheelchair_facing_right_light_skin_tone",
    value = "👨🏻‍🦼‍➡️",
    description = "man in motorized wheelchair facing right: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_motorized_wheelchair_facing_right_medium_dark_skin_tone",
    value = "👨🏾‍🦼‍➡️",
    description = "man in motorized wheelchair facing right: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_motorized_wheelchair_facing_right_medium_light_skin_tone",
    value = "👨🏼‍🦼‍➡️",
    description = "man in motorized wheelchair facing right: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_motorized_wheelchair_facing_right_medium_skin_tone",
    value = "👨🏽‍🦼‍➡️",
    description = "man in motorized wheelchair facing right: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_motorized_wheelchair_light_skin_tone",
    value = "👨🏻‍🦼",
    description = "man in motorized wheelchair: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_motorized_wheelchair_medium_dark_skin_tone",
    value = "👨🏾‍🦼",
    description = "man in motorized wheelchair: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_motorized_wheelchair_medium_light_skin_tone",
    value = "👨🏼‍🦼",
    description = "man in motorized wheelchair: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_motorized_wheelchair_medium_skin_tone",
    value = "👨🏽‍🦼",
    description = "man in motorized wheelchair: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_steamy_room",
    value = "🧖‍♂️",
    description = "man in steamy room",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_steamy_room_dark_skin_tone",
    value = "🧖🏿‍♂️",
    description = "man in steamy room: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_steamy_room_light_skin_tone",
    value = "🧖🏻‍♂️",
    description = "man in steamy room: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_steamy_room_medium_dark_skin_tone",
    value = "🧖🏾‍♂️",
    description = "man in steamy room: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_steamy_room_medium_light_skin_tone",
    value = "🧖🏼‍♂️",
    description = "man in steamy room: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_in_steamy_room_medium_skin_tone",
    value = "🧖🏽‍♂️",
    description = "man in steamy room: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_kneeling",
    value = "🧎‍♂️",
    description = "man kneeling",
    category = "People & Body / person-activity"
  },
  {
    name = "man_kneeling_dark_skin_tone",
    value = "🧎🏿‍♂️",
    description = "man kneeling: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_kneeling_facing_right",
    value = "🧎‍♂️‍➡️",
    description = "man kneeling facing right",
    category = "People & Body / person-activity"
  },
  {
    name = "man_kneeling_facing_right_dark_skin_tone",
    value = "🧎🏿‍♂️‍➡️",
    description = "man kneeling facing right: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_kneeling_facing_right_light_skin_tone",
    value = "🧎🏻‍♂️‍➡️",
    description = "man kneeling facing right: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_kneeling_facing_right_medium_dark_skin_tone",
    value = "🧎🏾‍♂️‍➡️",
    description = "man kneeling facing right: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_kneeling_facing_right_medium_light_skin_tone",
    value = "🧎🏼‍♂️‍➡️",
    description = "man kneeling facing right: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_kneeling_facing_right_medium_skin_tone",
    value = "🧎🏽‍♂️‍➡️",
    description = "man kneeling facing right: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_kneeling_light_skin_tone",
    value = "🧎🏻‍♂️",
    description = "man kneeling: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_kneeling_medium_dark_skin_tone",
    value = "🧎🏾‍♂️",
    description = "man kneeling: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_kneeling_medium_light_skin_tone",
    value = "🧎🏼‍♂️",
    description = "man kneeling: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_kneeling_medium_skin_tone",
    value = "🧎🏽‍♂️",
    description = "man kneeling: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_running",
    value = "🏃‍♂️",
    description = "man running",
    category = "People & Body / person-activity"
  },
  {
    name = "man_running_dark_skin_tone",
    value = "🏃🏿‍♂️",
    description = "man running: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_running_facing_right",
    value = "🏃‍♂️‍➡️",
    description = "man running facing right",
    category = "People & Body / person-activity"
  },
  {
    name = "man_running_facing_right_dark_skin_tone",
    value = "🏃🏿‍♂️‍➡️",
    description = "man running facing right: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_running_facing_right_light_skin_tone",
    value = "🏃🏻‍♂️‍➡️",
    description = "man running facing right: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_running_facing_right_medium_dark_skin_tone",
    value = "🏃🏾‍♂️‍➡️",
    description = "man running facing right: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_running_facing_right_medium_light_skin_tone",
    value = "🏃🏼‍♂️‍➡️",
    description = "man running facing right: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_running_facing_right_medium_skin_tone",
    value = "🏃🏽‍♂️‍➡️",
    description = "man running facing right: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_running_light_skin_tone",
    value = "🏃🏻‍♂️",
    description = "man running: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_running_medium_dark_skin_tone",
    value = "🏃🏾‍♂️",
    description = "man running: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_running_medium_light_skin_tone",
    value = "🏃🏼‍♂️",
    description = "man running: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_running_medium_skin_tone",
    value = "🏃🏽‍♂️",
    description = "man running: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_standing",
    value = "🧍‍♂️",
    description = "man standing",
    category = "People & Body / person-activity"
  },
  {
    name = "man_standing_dark_skin_tone",
    value = "🧍🏿‍♂️",
    description = "man standing: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_standing_light_skin_tone",
    value = "🧍🏻‍♂️",
    description = "man standing: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_standing_medium_dark_skin_tone",
    value = "🧍🏾‍♂️",
    description = "man standing: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_standing_medium_light_skin_tone",
    value = "🧍🏼‍♂️",
    description = "man standing: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_standing_medium_skin_tone",
    value = "🧍🏽‍♂️",
    description = "man standing: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_walking",
    value = "🚶‍♂️",
    description = "man walking",
    category = "People & Body / person-activity"
  },
  {
    name = "man_walking_dark_skin_tone",
    value = "🚶🏿‍♂️",
    description = "man walking: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_walking_facing_right",
    value = "🚶‍♂️‍➡️",
    description = "man walking facing right",
    category = "People & Body / person-activity"
  },
  {
    name = "man_walking_facing_right_dark_skin_tone",
    value = "🚶🏿‍♂️‍➡️",
    description = "man walking facing right: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_walking_facing_right_light_skin_tone",
    value = "🚶🏻‍♂️‍➡️",
    description = "man walking facing right: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_walking_facing_right_medium_dark_skin_tone",
    value = "🚶🏾‍♂️‍➡️",
    description = "man walking facing right: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_walking_facing_right_medium_light_skin_tone",
    value = "🚶🏼‍♂️‍➡️",
    description = "man walking facing right: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_walking_facing_right_medium_skin_tone",
    value = "🚶🏽‍♂️‍➡️",
    description = "man walking facing right: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_walking_light_skin_tone",
    value = "🚶🏻‍♂️",
    description = "man walking: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_walking_medium_dark_skin_tone",
    value = "🚶🏾‍♂️",
    description = "man walking: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_walking_medium_light_skin_tone",
    value = "🚶🏼‍♂️",
    description = "man walking: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_walking_medium_skin_tone",
    value = "🚶🏽‍♂️",
    description = "man walking: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_with_white_cane",
    value = "👨‍🦯",
    description = "man with white cane",
    category = "People & Body / person-activity"
  },
  {
    name = "man_with_white_cane_dark_skin_tone",
    value = "👨🏿‍🦯",
    description = "man with white cane: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_with_white_cane_facing_right",
    value = "👨‍🦯‍➡️",
    description = "man with white cane facing right",
    category = "People & Body / person-activity"
  },
  {
    name = "man_with_white_cane_facing_right_dark_skin_tone",
    value = "👨🏿‍🦯‍➡️",
    description = "man with white cane facing right: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_with_white_cane_facing_right_light_skin_tone",
    value = "👨🏻‍🦯‍➡️",
    description = "man with white cane facing right: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_with_white_cane_facing_right_medium_dark_skin_tone",
    value = "👨🏾‍🦯‍➡️",
    description = "man with white cane facing right: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_with_white_cane_facing_right_medium_light_skin_tone",
    value = "👨🏼‍🦯‍➡️",
    description = "man with white cane facing right: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_with_white_cane_facing_right_medium_skin_tone",
    value = "👨🏽‍🦯‍➡️",
    description = "man with white cane facing right: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_with_white_cane_light_skin_tone",
    value = "👨🏻‍🦯",
    description = "man with white cane: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_with_white_cane_medium_dark_skin_tone",
    value = "👨🏾‍🦯",
    description = "man with white cane: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_with_white_cane_medium_light_skin_tone",
    value = "👨🏼‍🦯",
    description = "man with white cane: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "man_with_white_cane_medium_skin_tone",
    value = "👨🏽‍🦯",
    description = "man with white cane: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "men_with_bunny_ears",
    value = "👯‍♂️",
    description = "men with bunny ears",
    category = "People & Body / person-activity"
  },
  {
    name = "people_with_bunny_ears",
    value = "👯",
    description = "people with bunny ears",
    category = "People & Body / person-activity"
  },
  {
    name = "person_climbing",
    value = "🧗",
    description = "person climbing",
    category = "People & Body / person-activity"
  },
  {
    name = "person_climbing_dark_skin_tone",
    value = "🧗🏿",
    description = "person climbing: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_climbing_light_skin_tone",
    value = "🧗🏻",
    description = "person climbing: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_climbing_medium_dark_skin_tone",
    value = "🧗🏾",
    description = "person climbing: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_climbing_medium_light_skin_tone",
    value = "🧗🏼",
    description = "person climbing: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_climbing_medium_skin_tone",
    value = "🧗🏽",
    description = "person climbing: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_getting_haircut",
    value = "💇",
    description = "person getting haircut",
    category = "People & Body / person-activity"
  },
  {
    name = "person_getting_haircut_dark_skin_tone",
    value = "💇🏿",
    description = "person getting haircut: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_getting_haircut_light_skin_tone",
    value = "💇🏻",
    description = "person getting haircut: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_getting_haircut_medium_dark_skin_tone",
    value = "💇🏾",
    description = "person getting haircut: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_getting_haircut_medium_light_skin_tone",
    value = "💇🏼",
    description = "person getting haircut: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_getting_haircut_medium_skin_tone",
    value = "💇🏽",
    description = "person getting haircut: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_getting_massage",
    value = "💆",
    description = "person getting massage",
    category = "People & Body / person-activity"
  },
  {
    name = "person_getting_massage_dark_skin_tone",
    value = "💆🏿",
    description = "person getting massage: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_getting_massage_light_skin_tone",
    value = "💆🏻",
    description = "person getting massage: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_getting_massage_medium_dark_skin_tone",
    value = "💆🏾",
    description = "person getting massage: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_getting_massage_medium_light_skin_tone",
    value = "💆🏼",
    description = "person getting massage: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_getting_massage_medium_skin_tone",
    value = "💆🏽",
    description = "person getting massage: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_manual_wheelchair",
    value = "🧑‍🦽",
    description = "person in manual wheelchair",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_manual_wheelchair_dark_skin_tone",
    value = "🧑🏿‍🦽",
    description = "person in manual wheelchair: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_manual_wheelchair_facing_right",
    value = "🧑‍🦽‍➡️",
    description = "person in manual wheelchair facing right",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_manual_wheelchair_facing_right_dark_skin_tone",
    value = "🧑🏿‍🦽‍➡️",
    description = "person in manual wheelchair facing right: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_manual_wheelchair_facing_right_light_skin_tone",
    value = "🧑🏻‍🦽‍➡️",
    description = "person in manual wheelchair facing right: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_manual_wheelchair_facing_right_medium_dark_skin_tone",
    value = "🧑🏾‍🦽‍➡️",
    description = "person in manual wheelchair facing right: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_manual_wheelchair_facing_right_medium_light_skin_tone",
    value = "🧑🏼‍🦽‍➡️",
    description = "person in manual wheelchair facing right: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_manual_wheelchair_facing_right_medium_skin_tone",
    value = "🧑🏽‍🦽‍➡️",
    description = "person in manual wheelchair facing right: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_manual_wheelchair_light_skin_tone",
    value = "🧑🏻‍🦽",
    description = "person in manual wheelchair: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_manual_wheelchair_medium_dark_skin_tone",
    value = "🧑🏾‍🦽",
    description = "person in manual wheelchair: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_manual_wheelchair_medium_light_skin_tone",
    value = "🧑🏼‍🦽",
    description = "person in manual wheelchair: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_manual_wheelchair_medium_skin_tone",
    value = "🧑🏽‍🦽",
    description = "person in manual wheelchair: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_motorized_wheelchair",
    value = "🧑‍🦼",
    description = "person in motorized wheelchair",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_motorized_wheelchair_dark_skin_tone",
    value = "🧑🏿‍🦼",
    description = "person in motorized wheelchair: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_motorized_wheelchair_facing_right",
    value = "🧑‍🦼‍➡️",
    description = "person in motorized wheelchair facing right",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_motorized_wheelchair_facing_right_dark_skin_tone",
    value = "🧑🏿‍🦼‍➡️",
    description = "person in motorized wheelchair facing right: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_motorized_wheelchair_facing_right_light_skin_tone",
    value = "🧑🏻‍🦼‍➡️",
    description = "person in motorized wheelchair facing right: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_motorized_wheelchair_facing_right_medium_dark_skin_tone",
    value = "🧑🏾‍🦼‍➡️",
    description = "person in motorized wheelchair facing right: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_motorized_wheelchair_facing_right_medium_light_skin_tone",
    value = "🧑🏼‍🦼‍➡️",
    description = "person in motorized wheelchair facing right: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_motorized_wheelchair_facing_right_medium_skin_tone",
    value = "🧑🏽‍🦼‍➡️",
    description = "person in motorized wheelchair facing right: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_motorized_wheelchair_light_skin_tone",
    value = "🧑🏻‍🦼",
    description = "person in motorized wheelchair: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_motorized_wheelchair_medium_dark_skin_tone",
    value = "🧑🏾‍🦼",
    description = "person in motorized wheelchair: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_motorized_wheelchair_medium_light_skin_tone",
    value = "🧑🏼‍🦼",
    description = "person in motorized wheelchair: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_motorized_wheelchair_medium_skin_tone",
    value = "🧑🏽‍🦼",
    description = "person in motorized wheelchair: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_steamy_room",
    value = "🧖",
    description = "person in steamy room",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_steamy_room_dark_skin_tone",
    value = "🧖🏿",
    description = "person in steamy room: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_steamy_room_light_skin_tone",
    value = "🧖🏻",
    description = "person in steamy room: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_steamy_room_medium_dark_skin_tone",
    value = "🧖🏾",
    description = "person in steamy room: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_steamy_room_medium_light_skin_tone",
    value = "🧖🏼",
    description = "person in steamy room: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_steamy_room_medium_skin_tone",
    value = "🧖🏽",
    description = "person in steamy room: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_suit_levitating",
    value = "🕴️",
    description = "person in suit levitating",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_suit_levitating_dark_skin_tone",
    value = "🕴🏿",
    description = "person in suit levitating: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_suit_levitating_light_skin_tone",
    value = "🕴🏻",
    description = "person in suit levitating: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_suit_levitating_medium_dark_skin_tone",
    value = "🕴🏾",
    description = "person in suit levitating: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_suit_levitating_medium_light_skin_tone",
    value = "🕴🏼",
    description = "person in suit levitating: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_in_suit_levitating_medium_skin_tone",
    value = "🕴🏽",
    description = "person in suit levitating: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_kneeling",
    value = "🧎",
    description = "person kneeling",
    category = "People & Body / person-activity"
  },
  {
    name = "person_kneeling_dark_skin_tone",
    value = "🧎🏿",
    description = "person kneeling: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_kneeling_facing_right",
    value = "🧎‍➡️",
    description = "person kneeling facing right",
    category = "People & Body / person-activity"
  },
  {
    name = "person_kneeling_facing_right_dark_skin_tone",
    value = "🧎🏿‍➡️",
    description = "person kneeling facing right: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_kneeling_facing_right_light_skin_tone",
    value = "🧎🏻‍➡️",
    description = "person kneeling facing right: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_kneeling_facing_right_medium_dark_skin_tone",
    value = "🧎🏾‍➡️",
    description = "person kneeling facing right: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_kneeling_facing_right_medium_light_skin_tone",
    value = "🧎🏼‍➡️",
    description = "person kneeling facing right: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_kneeling_facing_right_medium_skin_tone",
    value = "🧎🏽‍➡️",
    description = "person kneeling facing right: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_kneeling_light_skin_tone",
    value = "🧎🏻",
    description = "person kneeling: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_kneeling_medium_dark_skin_tone",
    value = "🧎🏾",
    description = "person kneeling: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_kneeling_medium_light_skin_tone",
    value = "🧎🏼",
    description = "person kneeling: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_kneeling_medium_skin_tone",
    value = "🧎🏽",
    description = "person kneeling: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_running",
    value = "🏃",
    description = "person running",
    category = "People & Body / person-activity"
  },
  {
    name = "person_running_dark_skin_tone",
    value = "🏃🏿",
    description = "person running: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_running_facing_right",
    value = "🏃‍➡️",
    description = "person running facing right",
    category = "People & Body / person-activity"
  },
  {
    name = "person_running_facing_right_dark_skin_tone",
    value = "🏃🏿‍➡️",
    description = "person running facing right: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_running_facing_right_light_skin_tone",
    value = "🏃🏻‍➡️",
    description = "person running facing right: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_running_facing_right_medium_dark_skin_tone",
    value = "🏃🏾‍➡️",
    description = "person running facing right: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_running_facing_right_medium_light_skin_tone",
    value = "🏃🏼‍➡️",
    description = "person running facing right: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_running_facing_right_medium_skin_tone",
    value = "🏃🏽‍➡️",
    description = "person running facing right: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_running_light_skin_tone",
    value = "🏃🏻",
    description = "person running: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_running_medium_dark_skin_tone",
    value = "🏃🏾",
    description = "person running: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_running_medium_light_skin_tone",
    value = "🏃🏼",
    description = "person running: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_running_medium_skin_tone",
    value = "🏃🏽",
    description = "person running: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_standing",
    value = "🧍",
    description = "person standing",
    category = "People & Body / person-activity"
  },
  {
    name = "person_standing_dark_skin_tone",
    value = "🧍🏿",
    description = "person standing: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_standing_light_skin_tone",
    value = "🧍🏻",
    description = "person standing: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_standing_medium_dark_skin_tone",
    value = "🧍🏾",
    description = "person standing: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_standing_medium_light_skin_tone",
    value = "🧍🏼",
    description = "person standing: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_standing_medium_skin_tone",
    value = "🧍🏽",
    description = "person standing: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_walking",
    value = "🚶",
    description = "person walking",
    category = "People & Body / person-activity"
  },
  {
    name = "person_walking_dark_skin_tone",
    value = "🚶🏿",
    description = "person walking: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_walking_facing_right",
    value = "🚶‍➡️",
    description = "person walking facing right",
    category = "People & Body / person-activity"
  },
  {
    name = "person_walking_facing_right_dark_skin_tone",
    value = "🚶🏿‍➡️",
    description = "person walking facing right: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_walking_facing_right_light_skin_tone",
    value = "🚶🏻‍➡️",
    description = "person walking facing right: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_walking_facing_right_medium_dark_skin_tone",
    value = "🚶🏾‍➡️",
    description = "person walking facing right: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_walking_facing_right_medium_light_skin_tone",
    value = "🚶🏼‍➡️",
    description = "person walking facing right: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_walking_facing_right_medium_skin_tone",
    value = "🚶🏽‍➡️",
    description = "person walking facing right: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_walking_light_skin_tone",
    value = "🚶🏻",
    description = "person walking: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_walking_medium_dark_skin_tone",
    value = "🚶🏾",
    description = "person walking: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_walking_medium_light_skin_tone",
    value = "🚶🏼",
    description = "person walking: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_walking_medium_skin_tone",
    value = "🚶🏽",
    description = "person walking: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_with_white_cane",
    value = "🧑‍🦯",
    description = "person with white cane",
    category = "People & Body / person-activity"
  },
  {
    name = "person_with_white_cane_dark_skin_tone",
    value = "🧑🏿‍🦯",
    description = "person with white cane: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_with_white_cane_facing_right",
    value = "🧑‍🦯‍➡️",
    description = "person with white cane facing right",
    category = "People & Body / person-activity"
  },
  {
    name = "person_with_white_cane_facing_right_dark_skin_tone",
    value = "🧑🏿‍🦯‍➡️",
    description = "person with white cane facing right: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_with_white_cane_facing_right_light_skin_tone",
    value = "🧑🏻‍🦯‍➡️",
    description = "person with white cane facing right: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_with_white_cane_facing_right_medium_dark_skin_tone",
    value = "🧑🏾‍🦯‍➡️",
    description = "person with white cane facing right: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_with_white_cane_facing_right_medium_light_skin_tone",
    value = "🧑🏼‍🦯‍➡️",
    description = "person with white cane facing right: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_with_white_cane_facing_right_medium_skin_tone",
    value = "🧑🏽‍🦯‍➡️",
    description = "person with white cane facing right: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_with_white_cane_light_skin_tone",
    value = "🧑🏻‍🦯",
    description = "person with white cane: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_with_white_cane_medium_dark_skin_tone",
    value = "🧑🏾‍🦯",
    description = "person with white cane: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_with_white_cane_medium_light_skin_tone",
    value = "🧑🏼‍🦯",
    description = "person with white cane: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "person_with_white_cane_medium_skin_tone",
    value = "🧑🏽‍🦯",
    description = "person with white cane: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_climbing",
    value = "🧗‍♀️",
    description = "woman climbing",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_climbing_dark_skin_tone",
    value = "🧗🏿‍♀️",
    description = "woman climbing: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_climbing_light_skin_tone",
    value = "🧗🏻‍♀️",
    description = "woman climbing: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_climbing_medium_dark_skin_tone",
    value = "🧗🏾‍♀️",
    description = "woman climbing: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_climbing_medium_light_skin_tone",
    value = "🧗🏼‍♀️",
    description = "woman climbing: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_climbing_medium_skin_tone",
    value = "🧗🏽‍♀️",
    description = "woman climbing: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_dancing",
    value = "💃",
    description = "woman dancing",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_dancing_dark_skin_tone",
    value = "💃🏿",
    description = "woman dancing: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_dancing_light_skin_tone",
    value = "💃🏻",
    description = "woman dancing: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_dancing_medium_dark_skin_tone",
    value = "💃🏾",
    description = "woman dancing: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_dancing_medium_light_skin_tone",
    value = "💃🏼",
    description = "woman dancing: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_dancing_medium_skin_tone",
    value = "💃🏽",
    description = "woman dancing: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_getting_haircut",
    value = "💇‍♀️",
    description = "woman getting haircut",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_getting_haircut_dark_skin_tone",
    value = "💇🏿‍♀️",
    description = "woman getting haircut: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_getting_haircut_light_skin_tone",
    value = "💇🏻‍♀️",
    description = "woman getting haircut: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_getting_haircut_medium_dark_skin_tone",
    value = "💇🏾‍♀️",
    description = "woman getting haircut: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_getting_haircut_medium_light_skin_tone",
    value = "💇🏼‍♀️",
    description = "woman getting haircut: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_getting_haircut_medium_skin_tone",
    value = "💇🏽‍♀️",
    description = "woman getting haircut: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_getting_massage",
    value = "💆‍♀️",
    description = "woman getting massage",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_getting_massage_dark_skin_tone",
    value = "💆🏿‍♀️",
    description = "woman getting massage: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_getting_massage_light_skin_tone",
    value = "💆🏻‍♀️",
    description = "woman getting massage: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_getting_massage_medium_dark_skin_tone",
    value = "💆🏾‍♀️",
    description = "woman getting massage: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_getting_massage_medium_light_skin_tone",
    value = "💆🏼‍♀️",
    description = "woman getting massage: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_getting_massage_medium_skin_tone",
    value = "💆🏽‍♀️",
    description = "woman getting massage: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_manual_wheelchair",
    value = "👩‍🦽",
    description = "woman in manual wheelchair",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_manual_wheelchair_dark_skin_tone",
    value = "👩🏿‍🦽",
    description = "woman in manual wheelchair: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_manual_wheelchair_facing_right",
    value = "👩‍🦽‍➡️",
    description = "woman in manual wheelchair facing right",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_manual_wheelchair_facing_right_dark_skin_tone",
    value = "👩🏿‍🦽‍➡️",
    description = "woman in manual wheelchair facing right: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_manual_wheelchair_facing_right_light_skin_tone",
    value = "👩🏻‍🦽‍➡️",
    description = "woman in manual wheelchair facing right: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_manual_wheelchair_facing_right_medium_dark_skin_tone",
    value = "👩🏾‍🦽‍➡️",
    description = "woman in manual wheelchair facing right: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_manual_wheelchair_facing_right_medium_light_skin_tone",
    value = "👩🏼‍🦽‍➡️",
    description = "woman in manual wheelchair facing right: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_manual_wheelchair_facing_right_medium_skin_tone",
    value = "👩🏽‍🦽‍➡️",
    description = "woman in manual wheelchair facing right: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_manual_wheelchair_light_skin_tone",
    value = "👩🏻‍🦽",
    description = "woman in manual wheelchair: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_manual_wheelchair_medium_dark_skin_tone",
    value = "👩🏾‍🦽",
    description = "woman in manual wheelchair: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_manual_wheelchair_medium_light_skin_tone",
    value = "👩🏼‍🦽",
    description = "woman in manual wheelchair: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_manual_wheelchair_medium_skin_tone",
    value = "👩🏽‍🦽",
    description = "woman in manual wheelchair: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_motorized_wheelchair",
    value = "👩‍🦼",
    description = "woman in motorized wheelchair",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_motorized_wheelchair_dark_skin_tone",
    value = "👩🏿‍🦼",
    description = "woman in motorized wheelchair: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_motorized_wheelchair_facing_right",
    value = "👩‍🦼‍➡️",
    description = "woman in motorized wheelchair facing right",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_motorized_wheelchair_facing_right_dark_skin_tone",
    value = "👩🏿‍🦼‍➡️",
    description = "woman in motorized wheelchair facing right: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_motorized_wheelchair_facing_right_light_skin_tone",
    value = "👩🏻‍🦼‍➡️",
    description = "woman in motorized wheelchair facing right: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_motorized_wheelchair_facing_right_medium_dark_skin_tone",
    value = "👩🏾‍🦼‍➡️",
    description = "woman in motorized wheelchair facing right: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_motorized_wheelchair_facing_right_medium_light_skin_tone",
    value = "👩🏼‍🦼‍➡️",
    description = "woman in motorized wheelchair facing right: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_motorized_wheelchair_facing_right_medium_skin_tone",
    value = "👩🏽‍🦼‍➡️",
    description = "woman in motorized wheelchair facing right: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_motorized_wheelchair_light_skin_tone",
    value = "👩🏻‍🦼",
    description = "woman in motorized wheelchair: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_motorized_wheelchair_medium_dark_skin_tone",
    value = "👩🏾‍🦼",
    description = "woman in motorized wheelchair: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_motorized_wheelchair_medium_light_skin_tone",
    value = "👩🏼‍🦼",
    description = "woman in motorized wheelchair: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_motorized_wheelchair_medium_skin_tone",
    value = "👩🏽‍🦼",
    description = "woman in motorized wheelchair: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_steamy_room",
    value = "🧖‍♀️",
    description = "woman in steamy room",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_steamy_room_dark_skin_tone",
    value = "🧖🏿‍♀️",
    description = "woman in steamy room: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_steamy_room_light_skin_tone",
    value = "🧖🏻‍♀️",
    description = "woman in steamy room: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_steamy_room_medium_dark_skin_tone",
    value = "🧖🏾‍♀️",
    description = "woman in steamy room: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_steamy_room_medium_light_skin_tone",
    value = "🧖🏼‍♀️",
    description = "woman in steamy room: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_in_steamy_room_medium_skin_tone",
    value = "🧖🏽‍♀️",
    description = "woman in steamy room: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_kneeling",
    value = "🧎‍♀️",
    description = "woman kneeling",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_kneeling_dark_skin_tone",
    value = "🧎🏿‍♀️",
    description = "woman kneeling: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_kneeling_facing_right",
    value = "🧎‍♀️‍➡️",
    description = "woman kneeling facing right",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_kneeling_facing_right_dark_skin_tone",
    value = "🧎🏿‍♀️‍➡️",
    description = "woman kneeling facing right: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_kneeling_facing_right_light_skin_tone",
    value = "🧎🏻‍♀️‍➡️",
    description = "woman kneeling facing right: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_kneeling_facing_right_medium_dark_skin_tone",
    value = "🧎🏾‍♀️‍➡️",
    description = "woman kneeling facing right: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_kneeling_facing_right_medium_light_skin_tone",
    value = "🧎🏼‍♀️‍➡️",
    description = "woman kneeling facing right: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_kneeling_facing_right_medium_skin_tone",
    value = "🧎🏽‍♀️‍➡️",
    description = "woman kneeling facing right: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_kneeling_light_skin_tone",
    value = "🧎🏻‍♀️",
    description = "woman kneeling: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_kneeling_medium_dark_skin_tone",
    value = "🧎🏾‍♀️",
    description = "woman kneeling: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_kneeling_medium_light_skin_tone",
    value = "🧎🏼‍♀️",
    description = "woman kneeling: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_kneeling_medium_skin_tone",
    value = "🧎🏽‍♀️",
    description = "woman kneeling: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_running",
    value = "🏃‍♀️",
    description = "woman running",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_running_dark_skin_tone",
    value = "🏃🏿‍♀️",
    description = "woman running: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_running_facing_right",
    value = "🏃‍♀️‍➡️",
    description = "woman running facing right",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_running_facing_right_dark_skin_tone",
    value = "🏃🏿‍♀️‍➡️",
    description = "woman running facing right: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_running_facing_right_light_skin_tone",
    value = "🏃🏻‍♀️‍➡️",
    description = "woman running facing right: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_running_facing_right_medium_dark_skin_tone",
    value = "🏃🏾‍♀️‍➡️",
    description = "woman running facing right: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_running_facing_right_medium_light_skin_tone",
    value = "🏃🏼‍♀️‍➡️",
    description = "woman running facing right: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_running_facing_right_medium_skin_tone",
    value = "🏃🏽‍♀️‍➡️",
    description = "woman running facing right: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_running_light_skin_tone",
    value = "🏃🏻‍♀️",
    description = "woman running: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_running_medium_dark_skin_tone",
    value = "🏃🏾‍♀️",
    description = "woman running: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_running_medium_light_skin_tone",
    value = "🏃🏼‍♀️",
    description = "woman running: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_running_medium_skin_tone",
    value = "🏃🏽‍♀️",
    description = "woman running: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_standing",
    value = "🧍‍♀️",
    description = "woman standing",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_standing_dark_skin_tone",
    value = "🧍🏿‍♀️",
    description = "woman standing: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_standing_light_skin_tone",
    value = "🧍🏻‍♀️",
    description = "woman standing: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_standing_medium_dark_skin_tone",
    value = "🧍🏾‍♀️",
    description = "woman standing: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_standing_medium_light_skin_tone",
    value = "🧍🏼‍♀️",
    description = "woman standing: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_standing_medium_skin_tone",
    value = "🧍🏽‍♀️",
    description = "woman standing: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_walking",
    value = "🚶‍♀️",
    description = "woman walking",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_walking_dark_skin_tone",
    value = "🚶🏿‍♀️",
    description = "woman walking: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_walking_facing_right",
    value = "🚶‍♀️‍➡️",
    description = "woman walking facing right",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_walking_facing_right_dark_skin_tone",
    value = "🚶🏿‍♀️‍➡️",
    description = "woman walking facing right: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_walking_facing_right_light_skin_tone",
    value = "🚶🏻‍♀️‍➡️",
    description = "woman walking facing right: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_walking_facing_right_medium_dark_skin_tone",
    value = "🚶🏾‍♀️‍➡️",
    description = "woman walking facing right: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_walking_facing_right_medium_light_skin_tone",
    value = "🚶🏼‍♀️‍➡️",
    description = "woman walking facing right: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_walking_facing_right_medium_skin_tone",
    value = "🚶🏽‍♀️‍➡️",
    description = "woman walking facing right: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_walking_light_skin_tone",
    value = "🚶🏻‍♀️",
    description = "woman walking: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_walking_medium_dark_skin_tone",
    value = "🚶🏾‍♀️",
    description = "woman walking: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_walking_medium_light_skin_tone",
    value = "🚶🏼‍♀️",
    description = "woman walking: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_walking_medium_skin_tone",
    value = "🚶🏽‍♀️",
    description = "woman walking: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_with_white_cane",
    value = "👩‍🦯",
    description = "woman with white cane",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_with_white_cane_dark_skin_tone",
    value = "👩🏿‍🦯",
    description = "woman with white cane: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_with_white_cane_facing_right",
    value = "👩‍🦯‍➡️",
    description = "woman with white cane facing right",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_with_white_cane_facing_right_dark_skin_tone",
    value = "👩🏿‍🦯‍➡️",
    description = "woman with white cane facing right: dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_with_white_cane_facing_right_light_skin_tone",
    value = "👩🏻‍🦯‍➡️",
    description = "woman with white cane facing right: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_with_white_cane_facing_right_medium_dark_skin_tone",
    value = "👩🏾‍🦯‍➡️",
    description = "woman with white cane facing right: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_with_white_cane_facing_right_medium_light_skin_tone",
    value = "👩🏼‍🦯‍➡️",
    description = "woman with white cane facing right: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_with_white_cane_facing_right_medium_skin_tone",
    value = "👩🏽‍🦯‍➡️",
    description = "woman with white cane facing right: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_with_white_cane_light_skin_tone",
    value = "👩🏻‍🦯",
    description = "woman with white cane: light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_with_white_cane_medium_dark_skin_tone",
    value = "👩🏾‍🦯",
    description = "woman with white cane: medium-dark skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_with_white_cane_medium_light_skin_tone",
    value = "👩🏼‍🦯",
    description = "woman with white cane: medium-light skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "woman_with_white_cane_medium_skin_tone",
    value = "👩🏽‍🦯",
    description = "woman with white cane: medium skin tone",
    category = "People & Body / person-activity"
  },
  {
    name = "women_with_bunny_ears",
    value = "👯‍♀️",
    description = "women with bunny ears",
    category = "People & Body / person-activity"
  },
  {
    name = "baby_angel",
    value = "👼",
    description = "baby angel",
    category = "People & Body / person-fantasy"
  },
  {
    name = "baby_angel_dark_skin_tone",
    value = "👼🏿",
    description = "baby angel: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "baby_angel_light_skin_tone",
    value = "👼🏻",
    description = "baby angel: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "baby_angel_medium_dark_skin_tone",
    value = "👼🏾",
    description = "baby angel: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "baby_angel_medium_light_skin_tone",
    value = "👼🏼",
    description = "baby angel: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "baby_angel_medium_skin_tone",
    value = "👼🏽",
    description = "baby angel: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "elf",
    value = "🧝",
    description = "elf",
    category = "People & Body / person-fantasy"
  },
  {
    name = "elf_dark_skin_tone",
    value = "🧝🏿",
    description = "elf: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "elf_light_skin_tone",
    value = "🧝🏻",
    description = "elf: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "elf_medium_dark_skin_tone",
    value = "🧝🏾",
    description = "elf: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "elf_medium_light_skin_tone",
    value = "🧝🏼",
    description = "elf: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "elf_medium_skin_tone",
    value = "🧝🏽",
    description = "elf: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "fairy",
    value = "🧚",
    description = "fairy",
    category = "People & Body / person-fantasy"
  },
  {
    name = "fairy_dark_skin_tone",
    value = "🧚🏿",
    description = "fairy: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "fairy_light_skin_tone",
    value = "🧚🏻",
    description = "fairy: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "fairy_medium_dark_skin_tone",
    value = "🧚🏾",
    description = "fairy: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "fairy_medium_light_skin_tone",
    value = "🧚🏼",
    description = "fairy: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "fairy_medium_skin_tone",
    value = "🧚🏽",
    description = "fairy: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "genie",
    value = "🧞",
    description = "genie",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mage",
    value = "🧙",
    description = "mage",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mage_dark_skin_tone",
    value = "🧙🏿",
    description = "mage: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mage_light_skin_tone",
    value = "🧙🏻",
    description = "mage: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mage_medium_dark_skin_tone",
    value = "🧙🏾",
    description = "mage: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mage_medium_light_skin_tone",
    value = "🧙🏼",
    description = "mage: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mage_medium_skin_tone",
    value = "🧙🏽",
    description = "mage: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_elf",
    value = "🧝‍♂️",
    description = "man elf",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_elf_dark_skin_tone",
    value = "🧝🏿‍♂️",
    description = "man elf: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_elf_light_skin_tone",
    value = "🧝🏻‍♂️",
    description = "man elf: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_elf_medium_dark_skin_tone",
    value = "🧝🏾‍♂️",
    description = "man elf: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_elf_medium_light_skin_tone",
    value = "🧝🏼‍♂️",
    description = "man elf: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_elf_medium_skin_tone",
    value = "🧝🏽‍♂️",
    description = "man elf: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_fairy",
    value = "🧚‍♂️",
    description = "man fairy",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_fairy_dark_skin_tone",
    value = "🧚🏿‍♂️",
    description = "man fairy: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_fairy_light_skin_tone",
    value = "🧚🏻‍♂️",
    description = "man fairy: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_fairy_medium_dark_skin_tone",
    value = "🧚🏾‍♂️",
    description = "man fairy: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_fairy_medium_light_skin_tone",
    value = "🧚🏼‍♂️",
    description = "man fairy: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_fairy_medium_skin_tone",
    value = "🧚🏽‍♂️",
    description = "man fairy: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_genie",
    value = "🧞‍♂️",
    description = "man genie",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_mage",
    value = "🧙‍♂️",
    description = "man mage",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_mage_dark_skin_tone",
    value = "🧙🏿‍♂️",
    description = "man mage: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_mage_light_skin_tone",
    value = "🧙🏻‍♂️",
    description = "man mage: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_mage_medium_dark_skin_tone",
    value = "🧙🏾‍♂️",
    description = "man mage: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_mage_medium_light_skin_tone",
    value = "🧙🏼‍♂️",
    description = "man mage: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_mage_medium_skin_tone",
    value = "🧙🏽‍♂️",
    description = "man mage: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_superhero",
    value = "🦸‍♂️",
    description = "man superhero",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_superhero_dark_skin_tone",
    value = "🦸🏿‍♂️",
    description = "man superhero: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_superhero_light_skin_tone",
    value = "🦸🏻‍♂️",
    description = "man superhero: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_superhero_medium_dark_skin_tone",
    value = "🦸🏾‍♂️",
    description = "man superhero: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_superhero_medium_light_skin_tone",
    value = "🦸🏼‍♂️",
    description = "man superhero: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_superhero_medium_skin_tone",
    value = "🦸🏽‍♂️",
    description = "man superhero: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_supervillain",
    value = "🦹‍♂️",
    description = "man supervillain",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_supervillain_dark_skin_tone",
    value = "🦹🏿‍♂️",
    description = "man supervillain: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_supervillain_light_skin_tone",
    value = "🦹🏻‍♂️",
    description = "man supervillain: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_supervillain_medium_dark_skin_tone",
    value = "🦹🏾‍♂️",
    description = "man supervillain: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_supervillain_medium_light_skin_tone",
    value = "🦹🏼‍♂️",
    description = "man supervillain: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_supervillain_medium_skin_tone",
    value = "🦹🏽‍♂️",
    description = "man supervillain: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_vampire",
    value = "🧛‍♂️",
    description = "man vampire",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_vampire_dark_skin_tone",
    value = "🧛🏿‍♂️",
    description = "man vampire: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_vampire_light_skin_tone",
    value = "🧛🏻‍♂️",
    description = "man vampire: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_vampire_medium_dark_skin_tone",
    value = "🧛🏾‍♂️",
    description = "man vampire: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_vampire_medium_light_skin_tone",
    value = "🧛🏼‍♂️",
    description = "man vampire: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_vampire_medium_skin_tone",
    value = "🧛🏽‍♂️",
    description = "man vampire: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "man_zombie",
    value = "🧟‍♂️",
    description = "man zombie",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mermaid",
    value = "🧜‍♀️",
    description = "mermaid",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mermaid_dark_skin_tone",
    value = "🧜🏿‍♀️",
    description = "mermaid: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mermaid_light_skin_tone",
    value = "🧜🏻‍♀️",
    description = "mermaid: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mermaid_medium_dark_skin_tone",
    value = "🧜🏾‍♀️",
    description = "mermaid: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mermaid_medium_light_skin_tone",
    value = "🧜🏼‍♀️",
    description = "mermaid: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mermaid_medium_skin_tone",
    value = "🧜🏽‍♀️",
    description = "mermaid: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "merman",
    value = "🧜‍♂️",
    description = "merman",
    category = "People & Body / person-fantasy"
  },
  {
    name = "merman_dark_skin_tone",
    value = "🧜🏿‍♂️",
    description = "merman: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "merman_light_skin_tone",
    value = "🧜🏻‍♂️",
    description = "merman: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "merman_medium_dark_skin_tone",
    value = "🧜🏾‍♂️",
    description = "merman: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "merman_medium_light_skin_tone",
    value = "🧜🏼‍♂️",
    description = "merman: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "merman_medium_skin_tone",
    value = "🧜🏽‍♂️",
    description = "merman: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "merperson",
    value = "🧜",
    description = "merperson",
    category = "People & Body / person-fantasy"
  },
  {
    name = "merperson_dark_skin_tone",
    value = "🧜🏿",
    description = "merperson: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "merperson_light_skin_tone",
    value = "🧜🏻",
    description = "merperson: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "merperson_medium_dark_skin_tone",
    value = "🧜🏾",
    description = "merperson: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "merperson_medium_light_skin_tone",
    value = "🧜🏼",
    description = "merperson: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "merperson_medium_skin_tone",
    value = "🧜🏽",
    description = "merperson: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mrs_claus",
    value = "🤶",
    description = "Mrs. Claus",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mrs_claus_dark_skin_tone",
    value = "🤶🏿",
    description = "Mrs. Claus: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mrs_claus_light_skin_tone",
    value = "🤶🏻",
    description = "Mrs. Claus: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mrs_claus_medium_dark_skin_tone",
    value = "🤶🏾",
    description = "Mrs. Claus: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mrs_claus_medium_light_skin_tone",
    value = "🤶🏼",
    description = "Mrs. Claus: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mrs_claus_medium_skin_tone",
    value = "🤶🏽",
    description = "Mrs. Claus: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mx_claus",
    value = "🧑‍🎄",
    description = "mx claus",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mx_claus_dark_skin_tone",
    value = "🧑🏿‍🎄",
    description = "mx claus: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mx_claus_light_skin_tone",
    value = "🧑🏻‍🎄",
    description = "mx claus: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mx_claus_medium_dark_skin_tone",
    value = "🧑🏾‍🎄",
    description = "mx claus: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mx_claus_medium_light_skin_tone",
    value = "🧑🏼‍🎄",
    description = "mx claus: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "mx_claus_medium_skin_tone",
    value = "🧑🏽‍🎄",
    description = "mx claus: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "santa_claus",
    value = "🎅",
    description = "Santa Claus",
    category = "People & Body / person-fantasy"
  },
  {
    name = "santa_claus_dark_skin_tone",
    value = "🎅🏿",
    description = "Santa Claus: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "santa_claus_light_skin_tone",
    value = "🎅🏻",
    description = "Santa Claus: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "santa_claus_medium_dark_skin_tone",
    value = "🎅🏾",
    description = "Santa Claus: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "santa_claus_medium_light_skin_tone",
    value = "🎅🏼",
    description = "Santa Claus: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "santa_claus_medium_skin_tone",
    value = "🎅🏽",
    description = "Santa Claus: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "superhero",
    value = "🦸",
    description = "superhero",
    category = "People & Body / person-fantasy"
  },
  {
    name = "superhero_dark_skin_tone",
    value = "🦸🏿",
    description = "superhero: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "superhero_light_skin_tone",
    value = "🦸🏻",
    description = "superhero: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "superhero_medium_dark_skin_tone",
    value = "🦸🏾",
    description = "superhero: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "superhero_medium_light_skin_tone",
    value = "🦸🏼",
    description = "superhero: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "superhero_medium_skin_tone",
    value = "🦸🏽",
    description = "superhero: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "supervillain",
    value = "🦹",
    description = "supervillain",
    category = "People & Body / person-fantasy"
  },
  {
    name = "supervillain_dark_skin_tone",
    value = "🦹🏿",
    description = "supervillain: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "supervillain_light_skin_tone",
    value = "🦹🏻",
    description = "supervillain: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "supervillain_medium_dark_skin_tone",
    value = "🦹🏾",
    description = "supervillain: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "supervillain_medium_light_skin_tone",
    value = "🦹🏼",
    description = "supervillain: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "supervillain_medium_skin_tone",
    value = "🦹🏽",
    description = "supervillain: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "troll",
    value = "🧌",
    description = "troll",
    category = "People & Body / person-fantasy"
  },
  {
    name = "vampire",
    value = "🧛",
    description = "vampire",
    category = "People & Body / person-fantasy"
  },
  {
    name = "vampire_dark_skin_tone",
    value = "🧛🏿",
    description = "vampire: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "vampire_light_skin_tone",
    value = "🧛🏻",
    description = "vampire: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "vampire_medium_dark_skin_tone",
    value = "🧛🏾",
    description = "vampire: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "vampire_medium_light_skin_tone",
    value = "🧛🏼",
    description = "vampire: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "vampire_medium_skin_tone",
    value = "🧛🏽",
    description = "vampire: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_elf",
    value = "🧝‍♀️",
    description = "woman elf",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_elf_dark_skin_tone",
    value = "🧝🏿‍♀️",
    description = "woman elf: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_elf_light_skin_tone",
    value = "🧝🏻‍♀️",
    description = "woman elf: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_elf_medium_dark_skin_tone",
    value = "🧝🏾‍♀️",
    description = "woman elf: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_elf_medium_light_skin_tone",
    value = "🧝🏼‍♀️",
    description = "woman elf: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_elf_medium_skin_tone",
    value = "🧝🏽‍♀️",
    description = "woman elf: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_fairy",
    value = "🧚‍♀️",
    description = "woman fairy",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_fairy_dark_skin_tone",
    value = "🧚🏿‍♀️",
    description = "woman fairy: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_fairy_light_skin_tone",
    value = "🧚🏻‍♀️",
    description = "woman fairy: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_fairy_medium_dark_skin_tone",
    value = "🧚🏾‍♀️",
    description = "woman fairy: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_fairy_medium_light_skin_tone",
    value = "🧚🏼‍♀️",
    description = "woman fairy: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_fairy_medium_skin_tone",
    value = "🧚🏽‍♀️",
    description = "woman fairy: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_genie",
    value = "🧞‍♀️",
    description = "woman genie",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_mage",
    value = "🧙‍♀️",
    description = "woman mage",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_mage_dark_skin_tone",
    value = "🧙🏿‍♀️",
    description = "woman mage: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_mage_light_skin_tone",
    value = "🧙🏻‍♀️",
    description = "woman mage: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_mage_medium_dark_skin_tone",
    value = "🧙🏾‍♀️",
    description = "woman mage: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_mage_medium_light_skin_tone",
    value = "🧙🏼‍♀️",
    description = "woman mage: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_mage_medium_skin_tone",
    value = "🧙🏽‍♀️",
    description = "woman mage: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_superhero",
    value = "🦸‍♀️",
    description = "woman superhero",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_superhero_dark_skin_tone",
    value = "🦸🏿‍♀️",
    description = "woman superhero: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_superhero_light_skin_tone",
    value = "🦸🏻‍♀️",
    description = "woman superhero: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_superhero_medium_dark_skin_tone",
    value = "🦸🏾‍♀️",
    description = "woman superhero: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_superhero_medium_light_skin_tone",
    value = "🦸🏼‍♀️",
    description = "woman superhero: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_superhero_medium_skin_tone",
    value = "🦸🏽‍♀️",
    description = "woman superhero: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_supervillain",
    value = "🦹‍♀️",
    description = "woman supervillain",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_supervillain_dark_skin_tone",
    value = "🦹🏿‍♀️",
    description = "woman supervillain: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_supervillain_light_skin_tone",
    value = "🦹🏻‍♀️",
    description = "woman supervillain: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_supervillain_medium_dark_skin_tone",
    value = "🦹🏾‍♀️",
    description = "woman supervillain: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_supervillain_medium_light_skin_tone",
    value = "🦹🏼‍♀️",
    description = "woman supervillain: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_supervillain_medium_skin_tone",
    value = "🦹🏽‍♀️",
    description = "woman supervillain: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_vampire",
    value = "🧛‍♀️",
    description = "woman vampire",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_vampire_dark_skin_tone",
    value = "🧛🏿‍♀️",
    description = "woman vampire: dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_vampire_light_skin_tone",
    value = "🧛🏻‍♀️",
    description = "woman vampire: light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_vampire_medium_dark_skin_tone",
    value = "🧛🏾‍♀️",
    description = "woman vampire: medium-dark skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_vampire_medium_light_skin_tone",
    value = "🧛🏼‍♀️",
    description = "woman vampire: medium-light skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_vampire_medium_skin_tone",
    value = "🧛🏽‍♀️",
    description = "woman vampire: medium skin tone",
    category = "People & Body / person-fantasy"
  },
  {
    name = "woman_zombie",
    value = "🧟‍♀️",
    description = "woman zombie",
    category = "People & Body / person-fantasy"
  },
  {
    name = "zombie",
    value = "🧟",
    description = "zombie",
    category = "People & Body / person-fantasy"
  },
  {
    name = "deaf_man",
    value = "🧏‍♂️",
    description = "deaf man",
    category = "People & Body / person-gesture"
  },
  {
    name = "deaf_man_dark_skin_tone",
    value = "🧏🏿‍♂️",
    description = "deaf man: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "deaf_man_light_skin_tone",
    value = "🧏🏻‍♂️",
    description = "deaf man: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "deaf_man_medium_dark_skin_tone",
    value = "🧏🏾‍♂️",
    description = "deaf man: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "deaf_man_medium_light_skin_tone",
    value = "🧏🏼‍♂️",
    description = "deaf man: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "deaf_man_medium_skin_tone",
    value = "🧏🏽‍♂️",
    description = "deaf man: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "deaf_person",
    value = "🧏",
    description = "deaf person",
    category = "People & Body / person-gesture"
  },
  {
    name = "deaf_person_dark_skin_tone",
    value = "🧏🏿",
    description = "deaf person: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "deaf_person_light_skin_tone",
    value = "🧏🏻",
    description = "deaf person: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "deaf_person_medium_dark_skin_tone",
    value = "🧏🏾",
    description = "deaf person: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "deaf_person_medium_light_skin_tone",
    value = "🧏🏼",
    description = "deaf person: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "deaf_person_medium_skin_tone",
    value = "🧏🏽",
    description = "deaf person: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "deaf_woman",
    value = "🧏‍♀️",
    description = "deaf woman",
    category = "People & Body / person-gesture"
  },
  {
    name = "deaf_woman_dark_skin_tone",
    value = "🧏🏿‍♀️",
    description = "deaf woman: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "deaf_woman_light_skin_tone",
    value = "🧏🏻‍♀️",
    description = "deaf woman: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "deaf_woman_medium_dark_skin_tone",
    value = "🧏🏾‍♀️",
    description = "deaf woman: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "deaf_woman_medium_light_skin_tone",
    value = "🧏🏼‍♀️",
    description = "deaf woman: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "deaf_woman_medium_skin_tone",
    value = "🧏🏽‍♀️",
    description = "deaf woman: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_bowing",
    value = "🙇‍♂️",
    description = "man bowing",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_bowing_dark_skin_tone",
    value = "🙇🏿‍♂️",
    description = "man bowing: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_bowing_light_skin_tone",
    value = "🙇🏻‍♂️",
    description = "man bowing: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_bowing_medium_dark_skin_tone",
    value = "🙇🏾‍♂️",
    description = "man bowing: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_bowing_medium_light_skin_tone",
    value = "🙇🏼‍♂️",
    description = "man bowing: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_bowing_medium_skin_tone",
    value = "🙇🏽‍♂️",
    description = "man bowing: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_facepalming",
    value = "🤦‍♂️",
    description = "man facepalming",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_facepalming_dark_skin_tone",
    value = "🤦🏿‍♂️",
    description = "man facepalming: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_facepalming_light_skin_tone",
    value = "🤦🏻‍♂️",
    description = "man facepalming: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_facepalming_medium_dark_skin_tone",
    value = "🤦🏾‍♂️",
    description = "man facepalming: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_facepalming_medium_light_skin_tone",
    value = "🤦🏼‍♂️",
    description = "man facepalming: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_facepalming_medium_skin_tone",
    value = "🤦🏽‍♂️",
    description = "man facepalming: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_frowning",
    value = "🙍‍♂️",
    description = "man frowning",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_frowning_dark_skin_tone",
    value = "🙍🏿‍♂️",
    description = "man frowning: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_frowning_light_skin_tone",
    value = "🙍🏻‍♂️",
    description = "man frowning: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_frowning_medium_dark_skin_tone",
    value = "🙍🏾‍♂️",
    description = "man frowning: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_frowning_medium_light_skin_tone",
    value = "🙍🏼‍♂️",
    description = "man frowning: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_frowning_medium_skin_tone",
    value = "🙍🏽‍♂️",
    description = "man frowning: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_gesturing_no",
    value = "🙅‍♂️",
    description = "man gesturing NO",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_gesturing_no_dark_skin_tone",
    value = "🙅🏿‍♂️",
    description = "man gesturing NO: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_gesturing_no_light_skin_tone",
    value = "🙅🏻‍♂️",
    description = "man gesturing NO: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_gesturing_no_medium_dark_skin_tone",
    value = "🙅🏾‍♂️",
    description = "man gesturing NO: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_gesturing_no_medium_light_skin_tone",
    value = "🙅🏼‍♂️",
    description = "man gesturing NO: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_gesturing_no_medium_skin_tone",
    value = "🙅🏽‍♂️",
    description = "man gesturing NO: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_gesturing_ok",
    value = "🙆‍♂️",
    description = "man gesturing OK",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_gesturing_ok_dark_skin_tone",
    value = "🙆🏿‍♂️",
    description = "man gesturing OK: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_gesturing_ok_light_skin_tone",
    value = "🙆🏻‍♂️",
    description = "man gesturing OK: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_gesturing_ok_medium_dark_skin_tone",
    value = "🙆🏾‍♂️",
    description = "man gesturing OK: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_gesturing_ok_medium_light_skin_tone",
    value = "🙆🏼‍♂️",
    description = "man gesturing OK: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_gesturing_ok_medium_skin_tone",
    value = "🙆🏽‍♂️",
    description = "man gesturing OK: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_pouting",
    value = "🙎‍♂️",
    description = "man pouting",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_pouting_dark_skin_tone",
    value = "🙎🏿‍♂️",
    description = "man pouting: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_pouting_light_skin_tone",
    value = "🙎🏻‍♂️",
    description = "man pouting: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_pouting_medium_dark_skin_tone",
    value = "🙎🏾‍♂️",
    description = "man pouting: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_pouting_medium_light_skin_tone",
    value = "🙎🏼‍♂️",
    description = "man pouting: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_pouting_medium_skin_tone",
    value = "🙎🏽‍♂️",
    description = "man pouting: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_raising_hand",
    value = "🙋‍♂️",
    description = "man raising hand",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_raising_hand_dark_skin_tone",
    value = "🙋🏿‍♂️",
    description = "man raising hand: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_raising_hand_light_skin_tone",
    value = "🙋🏻‍♂️",
    description = "man raising hand: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_raising_hand_medium_dark_skin_tone",
    value = "🙋🏾‍♂️",
    description = "man raising hand: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_raising_hand_medium_light_skin_tone",
    value = "🙋🏼‍♂️",
    description = "man raising hand: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_raising_hand_medium_skin_tone",
    value = "🙋🏽‍♂️",
    description = "man raising hand: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_shrugging",
    value = "🤷‍♂️",
    description = "man shrugging",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_shrugging_dark_skin_tone",
    value = "🤷🏿‍♂️",
    description = "man shrugging: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_shrugging_light_skin_tone",
    value = "🤷🏻‍♂️",
    description = "man shrugging: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_shrugging_medium_dark_skin_tone",
    value = "🤷🏾‍♂️",
    description = "man shrugging: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_shrugging_medium_light_skin_tone",
    value = "🤷🏼‍♂️",
    description = "man shrugging: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_shrugging_medium_skin_tone",
    value = "🤷🏽‍♂️",
    description = "man shrugging: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_tipping_hand",
    value = "💁‍♂️",
    description = "man tipping hand",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_tipping_hand_dark_skin_tone",
    value = "💁🏿‍♂️",
    description = "man tipping hand: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_tipping_hand_light_skin_tone",
    value = "💁🏻‍♂️",
    description = "man tipping hand: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_tipping_hand_medium_dark_skin_tone",
    value = "💁🏾‍♂️",
    description = "man tipping hand: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_tipping_hand_medium_light_skin_tone",
    value = "💁🏼‍♂️",
    description = "man tipping hand: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_tipping_hand_medium_skin_tone",
    value = "💁🏽‍♂️",
    description = "man tipping hand: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_bowing",
    value = "🙇",
    description = "person bowing",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_bowing_dark_skin_tone",
    value = "🙇🏿",
    description = "person bowing: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_bowing_light_skin_tone",
    value = "🙇🏻",
    description = "person bowing: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_bowing_medium_dark_skin_tone",
    value = "🙇🏾",
    description = "person bowing: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_bowing_medium_light_skin_tone",
    value = "🙇🏼",
    description = "person bowing: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_bowing_medium_skin_tone",
    value = "🙇🏽",
    description = "person bowing: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_facepalming",
    value = "🤦",
    description = "person facepalming",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_facepalming_dark_skin_tone",
    value = "🤦🏿",
    description = "person facepalming: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_facepalming_light_skin_tone",
    value = "🤦🏻",
    description = "person facepalming: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_facepalming_medium_dark_skin_tone",
    value = "🤦🏾",
    description = "person facepalming: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_facepalming_medium_light_skin_tone",
    value = "🤦🏼",
    description = "person facepalming: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_facepalming_medium_skin_tone",
    value = "🤦🏽",
    description = "person facepalming: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_frowning",
    value = "🙍",
    description = "person frowning",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_frowning_dark_skin_tone",
    value = "🙍🏿",
    description = "person frowning: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_frowning_light_skin_tone",
    value = "🙍🏻",
    description = "person frowning: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_frowning_medium_dark_skin_tone",
    value = "🙍🏾",
    description = "person frowning: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_frowning_medium_light_skin_tone",
    value = "🙍🏼",
    description = "person frowning: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_frowning_medium_skin_tone",
    value = "🙍🏽",
    description = "person frowning: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_gesturing_no",
    value = "🙅",
    description = "person gesturing NO",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_gesturing_no_dark_skin_tone",
    value = "🙅🏿",
    description = "person gesturing NO: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_gesturing_no_light_skin_tone",
    value = "🙅🏻",
    description = "person gesturing NO: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_gesturing_no_medium_dark_skin_tone",
    value = "🙅🏾",
    description = "person gesturing NO: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_gesturing_no_medium_light_skin_tone",
    value = "🙅🏼",
    description = "person gesturing NO: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_gesturing_no_medium_skin_tone",
    value = "🙅🏽",
    description = "person gesturing NO: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_gesturing_ok",
    value = "🙆",
    description = "person gesturing OK",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_gesturing_ok_dark_skin_tone",
    value = "🙆🏿",
    description = "person gesturing OK: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_gesturing_ok_light_skin_tone",
    value = "🙆🏻",
    description = "person gesturing OK: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_gesturing_ok_medium_dark_skin_tone",
    value = "🙆🏾",
    description = "person gesturing OK: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_gesturing_ok_medium_light_skin_tone",
    value = "🙆🏼",
    description = "person gesturing OK: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_gesturing_ok_medium_skin_tone",
    value = "🙆🏽",
    description = "person gesturing OK: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_pouting",
    value = "🙎",
    description = "person pouting",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_pouting_dark_skin_tone",
    value = "🙎🏿",
    description = "person pouting: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_pouting_light_skin_tone",
    value = "🙎🏻",
    description = "person pouting: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_pouting_medium_dark_skin_tone",
    value = "🙎🏾",
    description = "person pouting: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_pouting_medium_light_skin_tone",
    value = "🙎🏼",
    description = "person pouting: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_pouting_medium_skin_tone",
    value = "🙎🏽",
    description = "person pouting: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_raising_hand",
    value = "🙋",
    description = "person raising hand",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_raising_hand_dark_skin_tone",
    value = "🙋🏿",
    description = "person raising hand: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_raising_hand_light_skin_tone",
    value = "🙋🏻",
    description = "person raising hand: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_raising_hand_medium_dark_skin_tone",
    value = "🙋🏾",
    description = "person raising hand: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_raising_hand_medium_light_skin_tone",
    value = "🙋🏼",
    description = "person raising hand: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_raising_hand_medium_skin_tone",
    value = "🙋🏽",
    description = "person raising hand: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_shrugging",
    value = "🤷",
    description = "person shrugging",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_shrugging_dark_skin_tone",
    value = "🤷🏿",
    description = "person shrugging: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_shrugging_light_skin_tone",
    value = "🤷🏻",
    description = "person shrugging: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_shrugging_medium_dark_skin_tone",
    value = "🤷🏾",
    description = "person shrugging: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_shrugging_medium_light_skin_tone",
    value = "🤷🏼",
    description = "person shrugging: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_shrugging_medium_skin_tone",
    value = "🤷🏽",
    description = "person shrugging: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_tipping_hand",
    value = "💁",
    description = "person tipping hand",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_tipping_hand_dark_skin_tone",
    value = "💁🏿",
    description = "person tipping hand: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_tipping_hand_light_skin_tone",
    value = "💁🏻",
    description = "person tipping hand: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_tipping_hand_medium_dark_skin_tone",
    value = "💁🏾",
    description = "person tipping hand: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_tipping_hand_medium_light_skin_tone",
    value = "💁🏼",
    description = "person tipping hand: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "person_tipping_hand_medium_skin_tone",
    value = "💁🏽",
    description = "person tipping hand: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_bowing",
    value = "🙇‍♀️",
    description = "woman bowing",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_bowing_dark_skin_tone",
    value = "🙇🏿‍♀️",
    description = "woman bowing: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_bowing_light_skin_tone",
    value = "🙇🏻‍♀️",
    description = "woman bowing: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_bowing_medium_dark_skin_tone",
    value = "🙇🏾‍♀️",
    description = "woman bowing: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_bowing_medium_light_skin_tone",
    value = "🙇🏼‍♀️",
    description = "woman bowing: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_bowing_medium_skin_tone",
    value = "🙇🏽‍♀️",
    description = "woman bowing: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_facepalming",
    value = "🤦‍♀️",
    description = "woman facepalming",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_facepalming_dark_skin_tone",
    value = "🤦🏿‍♀️",
    description = "woman facepalming: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_facepalming_light_skin_tone",
    value = "🤦🏻‍♀️",
    description = "woman facepalming: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_facepalming_medium_dark_skin_tone",
    value = "🤦🏾‍♀️",
    description = "woman facepalming: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_facepalming_medium_light_skin_tone",
    value = "🤦🏼‍♀️",
    description = "woman facepalming: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_facepalming_medium_skin_tone",
    value = "🤦🏽‍♀️",
    description = "woman facepalming: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_frowning",
    value = "🙍‍♀️",
    description = "woman frowning",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_frowning_dark_skin_tone",
    value = "🙍🏿‍♀️",
    description = "woman frowning: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_frowning_light_skin_tone",
    value = "🙍🏻‍♀️",
    description = "woman frowning: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_frowning_medium_dark_skin_tone",
    value = "🙍🏾‍♀️",
    description = "woman frowning: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_frowning_medium_light_skin_tone",
    value = "🙍🏼‍♀️",
    description = "woman frowning: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_frowning_medium_skin_tone",
    value = "🙍🏽‍♀️",
    description = "woman frowning: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_gesturing_no",
    value = "🙅‍♀️",
    description = "woman gesturing NO",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_gesturing_no_dark_skin_tone",
    value = "🙅🏿‍♀️",
    description = "woman gesturing NO: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_gesturing_no_light_skin_tone",
    value = "🙅🏻‍♀️",
    description = "woman gesturing NO: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_gesturing_no_medium_dark_skin_tone",
    value = "🙅🏾‍♀️",
    description = "woman gesturing NO: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_gesturing_no_medium_light_skin_tone",
    value = "🙅🏼‍♀️",
    description = "woman gesturing NO: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_gesturing_no_medium_skin_tone",
    value = "🙅🏽‍♀️",
    description = "woman gesturing NO: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_gesturing_ok",
    value = "🙆‍♀️",
    description = "woman gesturing OK",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_gesturing_ok_dark_skin_tone",
    value = "🙆🏿‍♀️",
    description = "woman gesturing OK: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_gesturing_ok_light_skin_tone",
    value = "🙆🏻‍♀️",
    description = "woman gesturing OK: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_gesturing_ok_medium_dark_skin_tone",
    value = "🙆🏾‍♀️",
    description = "woman gesturing OK: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_gesturing_ok_medium_light_skin_tone",
    value = "🙆🏼‍♀️",
    description = "woman gesturing OK: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_gesturing_ok_medium_skin_tone",
    value = "🙆🏽‍♀️",
    description = "woman gesturing OK: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_pouting",
    value = "🙎‍♀️",
    description = "woman pouting",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_pouting_dark_skin_tone",
    value = "🙎🏿‍♀️",
    description = "woman pouting: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_pouting_light_skin_tone",
    value = "🙎🏻‍♀️",
    description = "woman pouting: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_pouting_medium_dark_skin_tone",
    value = "🙎🏾‍♀️",
    description = "woman pouting: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_pouting_medium_light_skin_tone",
    value = "🙎🏼‍♀️",
    description = "woman pouting: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_pouting_medium_skin_tone",
    value = "🙎🏽‍♀️",
    description = "woman pouting: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_raising_hand",
    value = "🙋‍♀️",
    description = "woman raising hand",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_raising_hand_dark_skin_tone",
    value = "🙋🏿‍♀️",
    description = "woman raising hand: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_raising_hand_light_skin_tone",
    value = "🙋🏻‍♀️",
    description = "woman raising hand: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_raising_hand_medium_dark_skin_tone",
    value = "🙋🏾‍♀️",
    description = "woman raising hand: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_raising_hand_medium_light_skin_tone",
    value = "🙋🏼‍♀️",
    description = "woman raising hand: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_raising_hand_medium_skin_tone",
    value = "🙋🏽‍♀️",
    description = "woman raising hand: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_shrugging",
    value = "🤷‍♀️",
    description = "woman shrugging",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_shrugging_dark_skin_tone",
    value = "🤷🏿‍♀️",
    description = "woman shrugging: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_shrugging_light_skin_tone",
    value = "🤷🏻‍♀️",
    description = "woman shrugging: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_shrugging_medium_dark_skin_tone",
    value = "🤷🏾‍♀️",
    description = "woman shrugging: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_shrugging_medium_light_skin_tone",
    value = "🤷🏼‍♀️",
    description = "woman shrugging: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_shrugging_medium_skin_tone",
    value = "🤷🏽‍♀️",
    description = "woman shrugging: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_tipping_hand",
    value = "💁‍♀️",
    description = "woman tipping hand",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_tipping_hand_dark_skin_tone",
    value = "💁🏿‍♀️",
    description = "woman tipping hand: dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_tipping_hand_light_skin_tone",
    value = "💁🏻‍♀️",
    description = "woman tipping hand: light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_tipping_hand_medium_dark_skin_tone",
    value = "💁🏾‍♀️",
    description = "woman tipping hand: medium-dark skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_tipping_hand_medium_light_skin_tone",
    value = "💁🏼‍♀️",
    description = "woman tipping hand: medium-light skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "woman_tipping_hand_medium_skin_tone",
    value = "💁🏽‍♀️",
    description = "woman tipping hand: medium skin tone",
    category = "People & Body / person-gesture"
  },
  {
    name = "man_in_lotus_position",
    value = "🧘‍♂️",
    description = "man in lotus position",
    category = "People & Body / person-resting"
  },
  {
    name = "man_in_lotus_position_dark_skin_tone",
    value = "🧘🏿‍♂️",
    description = "man in lotus position: dark skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "man_in_lotus_position_light_skin_tone",
    value = "🧘🏻‍♂️",
    description = "man in lotus position: light skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "man_in_lotus_position_medium_dark_skin_tone",
    value = "🧘🏾‍♂️",
    description = "man in lotus position: medium-dark skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "man_in_lotus_position_medium_light_skin_tone",
    value = "🧘🏼‍♂️",
    description = "man in lotus position: medium-light skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "man_in_lotus_position_medium_skin_tone",
    value = "🧘🏽‍♂️",
    description = "man in lotus position: medium skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "person_in_bed",
    value = "🛌",
    description = "person in bed",
    category = "People & Body / person-resting"
  },
  {
    name = "person_in_bed_dark_skin_tone",
    value = "🛌🏿",
    description = "person in bed: dark skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "person_in_bed_light_skin_tone",
    value = "🛌🏻",
    description = "person in bed: light skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "person_in_bed_medium_dark_skin_tone",
    value = "🛌🏾",
    description = "person in bed: medium-dark skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "person_in_bed_medium_light_skin_tone",
    value = "🛌🏼",
    description = "person in bed: medium-light skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "person_in_bed_medium_skin_tone",
    value = "🛌🏽",
    description = "person in bed: medium skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "person_in_lotus_position",
    value = "🧘",
    description = "person in lotus position",
    category = "People & Body / person-resting"
  },
  {
    name = "person_in_lotus_position_dark_skin_tone",
    value = "🧘🏿",
    description = "person in lotus position: dark skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "person_in_lotus_position_light_skin_tone",
    value = "🧘🏻",
    description = "person in lotus position: light skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "person_in_lotus_position_medium_dark_skin_tone",
    value = "🧘🏾",
    description = "person in lotus position: medium-dark skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "person_in_lotus_position_medium_light_skin_tone",
    value = "🧘🏼",
    description = "person in lotus position: medium-light skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "person_in_lotus_position_medium_skin_tone",
    value = "🧘🏽",
    description = "person in lotus position: medium skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "person_taking_bath",
    value = "🛀",
    description = "person taking bath",
    category = "People & Body / person-resting"
  },
  {
    name = "person_taking_bath_dark_skin_tone",
    value = "🛀🏿",
    description = "person taking bath: dark skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "person_taking_bath_light_skin_tone",
    value = "🛀🏻",
    description = "person taking bath: light skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "person_taking_bath_medium_dark_skin_tone",
    value = "🛀🏾",
    description = "person taking bath: medium-dark skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "person_taking_bath_medium_light_skin_tone",
    value = "🛀🏼",
    description = "person taking bath: medium-light skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "person_taking_bath_medium_skin_tone",
    value = "🛀🏽",
    description = "person taking bath: medium skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "woman_in_lotus_position",
    value = "🧘‍♀️",
    description = "woman in lotus position",
    category = "People & Body / person-resting"
  },
  {
    name = "woman_in_lotus_position_dark_skin_tone",
    value = "🧘🏿‍♀️",
    description = "woman in lotus position: dark skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "woman_in_lotus_position_light_skin_tone",
    value = "🧘🏻‍♀️",
    description = "woman in lotus position: light skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "woman_in_lotus_position_medium_dark_skin_tone",
    value = "🧘🏾‍♀️",
    description = "woman in lotus position: medium-dark skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "woman_in_lotus_position_medium_light_skin_tone",
    value = "🧘🏼‍♀️",
    description = "woman in lotus position: medium-light skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "woman_in_lotus_position_medium_skin_tone",
    value = "🧘🏽‍♀️",
    description = "woman in lotus position: medium skin tone",
    category = "People & Body / person-resting"
  },
  {
    name = "artist",
    value = "🧑‍🎨",
    description = "artist",
    category = "People & Body / person-role"
  },
  {
    name = "artist_dark_skin_tone",
    value = "🧑🏿‍🎨",
    description = "artist: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "artist_light_skin_tone",
    value = "🧑🏻‍🎨",
    description = "artist: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "artist_medium_dark_skin_tone",
    value = "🧑🏾‍🎨",
    description = "artist: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "artist_medium_light_skin_tone",
    value = "🧑🏼‍🎨",
    description = "artist: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "artist_medium_skin_tone",
    value = "🧑🏽‍🎨",
    description = "artist: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "astronaut",
    value = "🧑‍🚀",
    description = "astronaut",
    category = "People & Body / person-role"
  },
  {
    name = "astronaut_dark_skin_tone",
    value = "🧑🏿‍🚀",
    description = "astronaut: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "astronaut_light_skin_tone",
    value = "🧑🏻‍🚀",
    description = "astronaut: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "astronaut_medium_dark_skin_tone",
    value = "🧑🏾‍🚀",
    description = "astronaut: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "astronaut_medium_light_skin_tone",
    value = "🧑🏼‍🚀",
    description = "astronaut: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "astronaut_medium_skin_tone",
    value = "🧑🏽‍🚀",
    description = "astronaut: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "breast_feeding",
    value = "🤱",
    description = "breast-feeding",
    category = "People & Body / person-role"
  },
  {
    name = "breast_feeding_dark_skin_tone",
    value = "🤱🏿",
    description = "breast-feeding: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "breast_feeding_light_skin_tone",
    value = "🤱🏻",
    description = "breast-feeding: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "breast_feeding_medium_dark_skin_tone",
    value = "🤱🏾",
    description = "breast-feeding: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "breast_feeding_medium_light_skin_tone",
    value = "🤱🏼",
    description = "breast-feeding: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "breast_feeding_medium_skin_tone",
    value = "🤱🏽",
    description = "breast-feeding: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "construction_worker",
    value = "👷",
    description = "construction worker",
    category = "People & Body / person-role"
  },
  {
    name = "construction_worker_dark_skin_tone",
    value = "👷🏿",
    description = "construction worker: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "construction_worker_light_skin_tone",
    value = "👷🏻",
    description = "construction worker: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "construction_worker_medium_dark_skin_tone",
    value = "👷🏾",
    description = "construction worker: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "construction_worker_medium_light_skin_tone",
    value = "👷🏼",
    description = "construction worker: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "construction_worker_medium_skin_tone",
    value = "👷🏽",
    description = "construction worker: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "cook",
    value = "🧑‍🍳",
    description = "cook",
    category = "People & Body / person-role"
  },
  {
    name = "cook_dark_skin_tone",
    value = "🧑🏿‍🍳",
    description = "cook: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "cook_light_skin_tone",
    value = "🧑🏻‍🍳",
    description = "cook: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "cook_medium_dark_skin_tone",
    value = "🧑🏾‍🍳",
    description = "cook: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "cook_medium_light_skin_tone",
    value = "🧑🏼‍🍳",
    description = "cook: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "cook_medium_skin_tone",
    value = "🧑🏽‍🍳",
    description = "cook: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "detective",
    value = "🕵️",
    description = "detective",
    category = "People & Body / person-role"
  },
  {
    name = "detective_dark_skin_tone",
    value = "🕵🏿",
    description = "detective: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "detective_light_skin_tone",
    value = "🕵🏻",
    description = "detective: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "detective_medium_dark_skin_tone",
    value = "🕵🏾",
    description = "detective: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "detective_medium_light_skin_tone",
    value = "🕵🏼",
    description = "detective: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "detective_medium_skin_tone",
    value = "🕵🏽",
    description = "detective: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "factory_worker",
    value = "🧑‍🏭",
    description = "factory worker",
    category = "People & Body / person-role"
  },
  {
    name = "factory_worker_dark_skin_tone",
    value = "🧑🏿‍🏭",
    description = "factory worker: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "factory_worker_light_skin_tone",
    value = "🧑🏻‍🏭",
    description = "factory worker: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "factory_worker_medium_dark_skin_tone",
    value = "🧑🏾‍🏭",
    description = "factory worker: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "factory_worker_medium_light_skin_tone",
    value = "🧑🏼‍🏭",
    description = "factory worker: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "factory_worker_medium_skin_tone",
    value = "🧑🏽‍🏭",
    description = "factory worker: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "farmer",
    value = "🧑‍🌾",
    description = "farmer",
    category = "People & Body / person-role"
  },
  {
    name = "farmer_dark_skin_tone",
    value = "🧑🏿‍🌾",
    description = "farmer: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "farmer_light_skin_tone",
    value = "🧑🏻‍🌾",
    description = "farmer: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "farmer_medium_dark_skin_tone",
    value = "🧑🏾‍🌾",
    description = "farmer: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "farmer_medium_light_skin_tone",
    value = "🧑🏼‍🌾",
    description = "farmer: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "farmer_medium_skin_tone",
    value = "🧑🏽‍🌾",
    description = "farmer: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "firefighter",
    value = "🧑‍🚒",
    description = "firefighter",
    category = "People & Body / person-role"
  },
  {
    name = "firefighter_dark_skin_tone",
    value = "🧑🏿‍🚒",
    description = "firefighter: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "firefighter_light_skin_tone",
    value = "🧑🏻‍🚒",
    description = "firefighter: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "firefighter_medium_dark_skin_tone",
    value = "🧑🏾‍🚒",
    description = "firefighter: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "firefighter_medium_light_skin_tone",
    value = "🧑🏼‍🚒",
    description = "firefighter: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "firefighter_medium_skin_tone",
    value = "🧑🏽‍🚒",
    description = "firefighter: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "guard",
    value = "💂",
    description = "guard",
    category = "People & Body / person-role"
  },
  {
    name = "guard_dark_skin_tone",
    value = "💂🏿",
    description = "guard: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "guard_light_skin_tone",
    value = "💂🏻",
    description = "guard: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "guard_medium_dark_skin_tone",
    value = "💂🏾",
    description = "guard: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "guard_medium_light_skin_tone",
    value = "💂🏼",
    description = "guard: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "guard_medium_skin_tone",
    value = "💂🏽",
    description = "guard: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "health_worker",
    value = "🧑‍⚕️",
    description = "health worker",
    category = "People & Body / person-role"
  },
  {
    name = "health_worker_dark_skin_tone",
    value = "🧑🏿‍⚕️",
    description = "health worker: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "health_worker_light_skin_tone",
    value = "🧑🏻‍⚕️",
    description = "health worker: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "health_worker_medium_dark_skin_tone",
    value = "🧑🏾‍⚕️",
    description = "health worker: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "health_worker_medium_light_skin_tone",
    value = "🧑🏼‍⚕️",
    description = "health worker: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "health_worker_medium_skin_tone",
    value = "🧑🏽‍⚕️",
    description = "health worker: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "judge",
    value = "🧑‍⚖️",
    description = "judge",
    category = "People & Body / person-role"
  },
  {
    name = "judge_dark_skin_tone",
    value = "🧑🏿‍⚖️",
    description = "judge: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "judge_light_skin_tone",
    value = "🧑🏻‍⚖️",
    description = "judge: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "judge_medium_dark_skin_tone",
    value = "🧑🏾‍⚖️",
    description = "judge: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "judge_medium_light_skin_tone",
    value = "🧑🏼‍⚖️",
    description = "judge: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "judge_medium_skin_tone",
    value = "🧑🏽‍⚖️",
    description = "judge: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_artist",
    value = "👨‍🎨",
    description = "man artist",
    category = "People & Body / person-role"
  },
  {
    name = "man_artist_dark_skin_tone",
    value = "👨🏿‍🎨",
    description = "man artist: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_artist_light_skin_tone",
    value = "👨🏻‍🎨",
    description = "man artist: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_artist_medium_dark_skin_tone",
    value = "👨🏾‍🎨",
    description = "man artist: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_artist_medium_light_skin_tone",
    value = "👨🏼‍🎨",
    description = "man artist: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_artist_medium_skin_tone",
    value = "👨🏽‍🎨",
    description = "man artist: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_astronaut",
    value = "👨‍🚀",
    description = "man astronaut",
    category = "People & Body / person-role"
  },
  {
    name = "man_astronaut_dark_skin_tone",
    value = "👨🏿‍🚀",
    description = "man astronaut: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_astronaut_light_skin_tone",
    value = "👨🏻‍🚀",
    description = "man astronaut: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_astronaut_medium_dark_skin_tone",
    value = "👨🏾‍🚀",
    description = "man astronaut: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_astronaut_medium_light_skin_tone",
    value = "👨🏼‍🚀",
    description = "man astronaut: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_astronaut_medium_skin_tone",
    value = "👨🏽‍🚀",
    description = "man astronaut: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_construction_worker",
    value = "👷‍♂️",
    description = "man construction worker",
    category = "People & Body / person-role"
  },
  {
    name = "man_construction_worker_dark_skin_tone",
    value = "👷🏿‍♂️",
    description = "man construction worker: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_construction_worker_light_skin_tone",
    value = "👷🏻‍♂️",
    description = "man construction worker: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_construction_worker_medium_dark_skin_tone",
    value = "👷🏾‍♂️",
    description = "man construction worker: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_construction_worker_medium_light_skin_tone",
    value = "👷🏼‍♂️",
    description = "man construction worker: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_construction_worker_medium_skin_tone",
    value = "👷🏽‍♂️",
    description = "man construction worker: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_cook",
    value = "👨‍🍳",
    description = "man cook",
    category = "People & Body / person-role"
  },
  {
    name = "man_cook_dark_skin_tone",
    value = "👨🏿‍🍳",
    description = "man cook: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_cook_light_skin_tone",
    value = "👨🏻‍🍳",
    description = "man cook: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_cook_medium_dark_skin_tone",
    value = "👨🏾‍🍳",
    description = "man cook: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_cook_medium_light_skin_tone",
    value = "👨🏼‍🍳",
    description = "man cook: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_cook_medium_skin_tone",
    value = "👨🏽‍🍳",
    description = "man cook: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_detective",
    value = "🕵️‍♂️",
    description = "man detective",
    category = "People & Body / person-role"
  },
  {
    name = "man_detective_dark_skin_tone",
    value = "🕵🏿‍♂️",
    description = "man detective: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_detective_light_skin_tone",
    value = "🕵🏻‍♂️",
    description = "man detective: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_detective_medium_dark_skin_tone",
    value = "🕵🏾‍♂️",
    description = "man detective: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_detective_medium_light_skin_tone",
    value = "🕵🏼‍♂️",
    description = "man detective: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_detective_medium_skin_tone",
    value = "🕵🏽‍♂️",
    description = "man detective: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_factory_worker",
    value = "👨‍🏭",
    description = "man factory worker",
    category = "People & Body / person-role"
  },
  {
    name = "man_factory_worker_dark_skin_tone",
    value = "👨🏿‍🏭",
    description = "man factory worker: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_factory_worker_light_skin_tone",
    value = "👨🏻‍🏭",
    description = "man factory worker: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_factory_worker_medium_dark_skin_tone",
    value = "👨🏾‍🏭",
    description = "man factory worker: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_factory_worker_medium_light_skin_tone",
    value = "👨🏼‍🏭",
    description = "man factory worker: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_factory_worker_medium_skin_tone",
    value = "👨🏽‍🏭",
    description = "man factory worker: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_farmer",
    value = "👨‍🌾",
    description = "man farmer",
    category = "People & Body / person-role"
  },
  {
    name = "man_farmer_dark_skin_tone",
    value = "👨🏿‍🌾",
    description = "man farmer: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_farmer_light_skin_tone",
    value = "👨🏻‍🌾",
    description = "man farmer: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_farmer_medium_dark_skin_tone",
    value = "👨🏾‍🌾",
    description = "man farmer: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_farmer_medium_light_skin_tone",
    value = "👨🏼‍🌾",
    description = "man farmer: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_farmer_medium_skin_tone",
    value = "👨🏽‍🌾",
    description = "man farmer: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_feeding_baby",
    value = "👨‍🍼",
    description = "man feeding baby",
    category = "People & Body / person-role"
  },
  {
    name = "man_feeding_baby_dark_skin_tone",
    value = "👨🏿‍🍼",
    description = "man feeding baby: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_feeding_baby_light_skin_tone",
    value = "👨🏻‍🍼",
    description = "man feeding baby: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_feeding_baby_medium_dark_skin_tone",
    value = "👨🏾‍🍼",
    description = "man feeding baby: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_feeding_baby_medium_light_skin_tone",
    value = "👨🏼‍🍼",
    description = "man feeding baby: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_feeding_baby_medium_skin_tone",
    value = "👨🏽‍🍼",
    description = "man feeding baby: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_firefighter",
    value = "👨‍🚒",
    description = "man firefighter",
    category = "People & Body / person-role"
  },
  {
    name = "man_firefighter_dark_skin_tone",
    value = "👨🏿‍🚒",
    description = "man firefighter: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_firefighter_light_skin_tone",
    value = "👨🏻‍🚒",
    description = "man firefighter: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_firefighter_medium_dark_skin_tone",
    value = "👨🏾‍🚒",
    description = "man firefighter: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_firefighter_medium_light_skin_tone",
    value = "👨🏼‍🚒",
    description = "man firefighter: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_firefighter_medium_skin_tone",
    value = "👨🏽‍🚒",
    description = "man firefighter: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_guard",
    value = "💂‍♂️",
    description = "man guard",
    category = "People & Body / person-role"
  },
  {
    name = "man_guard_dark_skin_tone",
    value = "💂🏿‍♂️",
    description = "man guard: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_guard_light_skin_tone",
    value = "💂🏻‍♂️",
    description = "man guard: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_guard_medium_dark_skin_tone",
    value = "💂🏾‍♂️",
    description = "man guard: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_guard_medium_light_skin_tone",
    value = "💂🏼‍♂️",
    description = "man guard: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_guard_medium_skin_tone",
    value = "💂🏽‍♂️",
    description = "man guard: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_health_worker",
    value = "👨‍⚕️",
    description = "man health worker",
    category = "People & Body / person-role"
  },
  {
    name = "man_health_worker_dark_skin_tone",
    value = "👨🏿‍⚕️",
    description = "man health worker: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_health_worker_light_skin_tone",
    value = "👨🏻‍⚕️",
    description = "man health worker: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_health_worker_medium_dark_skin_tone",
    value = "👨🏾‍⚕️",
    description = "man health worker: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_health_worker_medium_light_skin_tone",
    value = "👨🏼‍⚕️",
    description = "man health worker: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_health_worker_medium_skin_tone",
    value = "👨🏽‍⚕️",
    description = "man health worker: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_in_tuxedo",
    value = "🤵‍♂️",
    description = "man in tuxedo",
    category = "People & Body / person-role"
  },
  {
    name = "man_in_tuxedo_dark_skin_tone",
    value = "🤵🏿‍♂️",
    description = "man in tuxedo: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_in_tuxedo_light_skin_tone",
    value = "🤵🏻‍♂️",
    description = "man in tuxedo: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_in_tuxedo_medium_dark_skin_tone",
    value = "🤵🏾‍♂️",
    description = "man in tuxedo: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_in_tuxedo_medium_light_skin_tone",
    value = "🤵🏼‍♂️",
    description = "man in tuxedo: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_in_tuxedo_medium_skin_tone",
    value = "🤵🏽‍♂️",
    description = "man in tuxedo: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_judge",
    value = "👨‍⚖️",
    description = "man judge",
    category = "People & Body / person-role"
  },
  {
    name = "man_judge_dark_skin_tone",
    value = "👨🏿‍⚖️",
    description = "man judge: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_judge_light_skin_tone",
    value = "👨🏻‍⚖️",
    description = "man judge: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_judge_medium_dark_skin_tone",
    value = "👨🏾‍⚖️",
    description = "man judge: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_judge_medium_light_skin_tone",
    value = "👨🏼‍⚖️",
    description = "man judge: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_judge_medium_skin_tone",
    value = "👨🏽‍⚖️",
    description = "man judge: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_mechanic",
    value = "👨‍🔧",
    description = "man mechanic",
    category = "People & Body / person-role"
  },
  {
    name = "man_mechanic_dark_skin_tone",
    value = "👨🏿‍🔧",
    description = "man mechanic: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_mechanic_light_skin_tone",
    value = "👨🏻‍🔧",
    description = "man mechanic: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_mechanic_medium_dark_skin_tone",
    value = "👨🏾‍🔧",
    description = "man mechanic: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_mechanic_medium_light_skin_tone",
    value = "👨🏼‍🔧",
    description = "man mechanic: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_mechanic_medium_skin_tone",
    value = "👨🏽‍🔧",
    description = "man mechanic: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_office_worker",
    value = "👨‍💼",
    description = "man office worker",
    category = "People & Body / person-role"
  },
  {
    name = "man_office_worker_dark_skin_tone",
    value = "👨🏿‍💼",
    description = "man office worker: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_office_worker_light_skin_tone",
    value = "👨🏻‍💼",
    description = "man office worker: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_office_worker_medium_dark_skin_tone",
    value = "👨🏾‍💼",
    description = "man office worker: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_office_worker_medium_light_skin_tone",
    value = "👨🏼‍💼",
    description = "man office worker: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_office_worker_medium_skin_tone",
    value = "👨🏽‍💼",
    description = "man office worker: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_pilot",
    value = "👨‍✈️",
    description = "man pilot",
    category = "People & Body / person-role"
  },
  {
    name = "man_pilot_dark_skin_tone",
    value = "👨🏿‍✈️",
    description = "man pilot: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_pilot_light_skin_tone",
    value = "👨🏻‍✈️",
    description = "man pilot: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_pilot_medium_dark_skin_tone",
    value = "👨🏾‍✈️",
    description = "man pilot: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_pilot_medium_light_skin_tone",
    value = "👨🏼‍✈️",
    description = "man pilot: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_pilot_medium_skin_tone",
    value = "👨🏽‍✈️",
    description = "man pilot: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_police_officer",
    value = "👮‍♂️",
    description = "man police officer",
    category = "People & Body / person-role"
  },
  {
    name = "man_police_officer_dark_skin_tone",
    value = "👮🏿‍♂️",
    description = "man police officer: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_police_officer_light_skin_tone",
    value = "👮🏻‍♂️",
    description = "man police officer: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_police_officer_medium_dark_skin_tone",
    value = "👮🏾‍♂️",
    description = "man police officer: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_police_officer_medium_light_skin_tone",
    value = "👮🏼‍♂️",
    description = "man police officer: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_police_officer_medium_skin_tone",
    value = "👮🏽‍♂️",
    description = "man police officer: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_scientist",
    value = "👨‍🔬",
    description = "man scientist",
    category = "People & Body / person-role"
  },
  {
    name = "man_scientist_dark_skin_tone",
    value = "👨🏿‍🔬",
    description = "man scientist: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_scientist_light_skin_tone",
    value = "👨🏻‍🔬",
    description = "man scientist: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_scientist_medium_dark_skin_tone",
    value = "👨🏾‍🔬",
    description = "man scientist: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_scientist_medium_light_skin_tone",
    value = "👨🏼‍🔬",
    description = "man scientist: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_scientist_medium_skin_tone",
    value = "👨🏽‍🔬",
    description = "man scientist: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_singer",
    value = "👨‍🎤",
    description = "man singer",
    category = "People & Body / person-role"
  },
  {
    name = "man_singer_dark_skin_tone",
    value = "👨🏿‍🎤",
    description = "man singer: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_singer_light_skin_tone",
    value = "👨🏻‍🎤",
    description = "man singer: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_singer_medium_dark_skin_tone",
    value = "👨🏾‍🎤",
    description = "man singer: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_singer_medium_light_skin_tone",
    value = "👨🏼‍🎤",
    description = "man singer: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_singer_medium_skin_tone",
    value = "👨🏽‍🎤",
    description = "man singer: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_student",
    value = "👨‍🎓",
    description = "man student",
    category = "People & Body / person-role"
  },
  {
    name = "man_student_dark_skin_tone",
    value = "👨🏿‍🎓",
    description = "man student: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_student_light_skin_tone",
    value = "👨🏻‍🎓",
    description = "man student: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_student_medium_dark_skin_tone",
    value = "👨🏾‍🎓",
    description = "man student: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_student_medium_light_skin_tone",
    value = "👨🏼‍🎓",
    description = "man student: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_student_medium_skin_tone",
    value = "👨🏽‍🎓",
    description = "man student: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_teacher",
    value = "👨‍🏫",
    description = "man teacher",
    category = "People & Body / person-role"
  },
  {
    name = "man_teacher_dark_skin_tone",
    value = "👨🏿‍🏫",
    description = "man teacher: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_teacher_light_skin_tone",
    value = "👨🏻‍🏫",
    description = "man teacher: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_teacher_medium_dark_skin_tone",
    value = "👨🏾‍🏫",
    description = "man teacher: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_teacher_medium_light_skin_tone",
    value = "👨🏼‍🏫",
    description = "man teacher: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_teacher_medium_skin_tone",
    value = "👨🏽‍🏫",
    description = "man teacher: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_technologist",
    value = "👨‍💻",
    description = "man technologist",
    category = "People & Body / person-role"
  },
  {
    name = "man_technologist_dark_skin_tone",
    value = "👨🏿‍💻",
    description = "man technologist: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_technologist_light_skin_tone",
    value = "👨🏻‍💻",
    description = "man technologist: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_technologist_medium_dark_skin_tone",
    value = "👨🏾‍💻",
    description = "man technologist: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_technologist_medium_light_skin_tone",
    value = "👨🏼‍💻",
    description = "man technologist: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_technologist_medium_skin_tone",
    value = "👨🏽‍💻",
    description = "man technologist: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_wearing_turban",
    value = "👳‍♂️",
    description = "man wearing turban",
    category = "People & Body / person-role"
  },
  {
    name = "man_wearing_turban_dark_skin_tone",
    value = "👳🏿‍♂️",
    description = "man wearing turban: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_wearing_turban_light_skin_tone",
    value = "👳🏻‍♂️",
    description = "man wearing turban: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_wearing_turban_medium_dark_skin_tone",
    value = "👳🏾‍♂️",
    description = "man wearing turban: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_wearing_turban_medium_light_skin_tone",
    value = "👳🏼‍♂️",
    description = "man wearing turban: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_wearing_turban_medium_skin_tone",
    value = "👳🏽‍♂️",
    description = "man wearing turban: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_with_veil",
    value = "👰‍♂️",
    description = "man with veil",
    category = "People & Body / person-role"
  },
  {
    name = "man_with_veil_dark_skin_tone",
    value = "👰🏿‍♂️",
    description = "man with veil: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_with_veil_light_skin_tone",
    value = "👰🏻‍♂️",
    description = "man with veil: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_with_veil_medium_dark_skin_tone",
    value = "👰🏾‍♂️",
    description = "man with veil: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_with_veil_medium_light_skin_tone",
    value = "👰🏼‍♂️",
    description = "man with veil: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "man_with_veil_medium_skin_tone",
    value = "👰🏽‍♂️",
    description = "man with veil: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "mechanic",
    value = "🧑‍🔧",
    description = "mechanic",
    category = "People & Body / person-role"
  },
  {
    name = "mechanic_dark_skin_tone",
    value = "🧑🏿‍🔧",
    description = "mechanic: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "mechanic_light_skin_tone",
    value = "🧑🏻‍🔧",
    description = "mechanic: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "mechanic_medium_dark_skin_tone",
    value = "🧑🏾‍🔧",
    description = "mechanic: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "mechanic_medium_light_skin_tone",
    value = "🧑🏼‍🔧",
    description = "mechanic: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "mechanic_medium_skin_tone",
    value = "🧑🏽‍🔧",
    description = "mechanic: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "ninja",
    value = "🥷",
    description = "ninja",
    category = "People & Body / person-role"
  },
  {
    name = "ninja_dark_skin_tone",
    value = "🥷🏿",
    description = "ninja: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "ninja_light_skin_tone",
    value = "🥷🏻",
    description = "ninja: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "ninja_medium_dark_skin_tone",
    value = "🥷🏾",
    description = "ninja: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "ninja_medium_light_skin_tone",
    value = "🥷🏼",
    description = "ninja: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "ninja_medium_skin_tone",
    value = "🥷🏽",
    description = "ninja: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "office_worker",
    value = "🧑‍💼",
    description = "office worker",
    category = "People & Body / person-role"
  },
  {
    name = "office_worker_dark_skin_tone",
    value = "🧑🏿‍💼",
    description = "office worker: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "office_worker_light_skin_tone",
    value = "🧑🏻‍💼",
    description = "office worker: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "office_worker_medium_dark_skin_tone",
    value = "🧑🏾‍💼",
    description = "office worker: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "office_worker_medium_light_skin_tone",
    value = "🧑🏼‍💼",
    description = "office worker: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "office_worker_medium_skin_tone",
    value = "🧑🏽‍💼",
    description = "office worker: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_feeding_baby",
    value = "🧑‍🍼",
    description = "person feeding baby",
    category = "People & Body / person-role"
  },
  {
    name = "person_feeding_baby_dark_skin_tone",
    value = "🧑🏿‍🍼",
    description = "person feeding baby: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_feeding_baby_light_skin_tone",
    value = "🧑🏻‍🍼",
    description = "person feeding baby: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_feeding_baby_medium_dark_skin_tone",
    value = "🧑🏾‍🍼",
    description = "person feeding baby: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_feeding_baby_medium_light_skin_tone",
    value = "🧑🏼‍🍼",
    description = "person feeding baby: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_feeding_baby_medium_skin_tone",
    value = "🧑🏽‍🍼",
    description = "person feeding baby: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_in_tuxedo",
    value = "🤵",
    description = "person in tuxedo",
    category = "People & Body / person-role"
  },
  {
    name = "person_in_tuxedo_dark_skin_tone",
    value = "🤵🏿",
    description = "person in tuxedo: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_in_tuxedo_light_skin_tone",
    value = "🤵🏻",
    description = "person in tuxedo: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_in_tuxedo_medium_dark_skin_tone",
    value = "🤵🏾",
    description = "person in tuxedo: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_in_tuxedo_medium_light_skin_tone",
    value = "🤵🏼",
    description = "person in tuxedo: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_in_tuxedo_medium_skin_tone",
    value = "🤵🏽",
    description = "person in tuxedo: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_wearing_turban",
    value = "👳",
    description = "person wearing turban",
    category = "People & Body / person-role"
  },
  {
    name = "person_wearing_turban_dark_skin_tone",
    value = "👳🏿",
    description = "person wearing turban: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_wearing_turban_light_skin_tone",
    value = "👳🏻",
    description = "person wearing turban: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_wearing_turban_medium_dark_skin_tone",
    value = "👳🏾",
    description = "person wearing turban: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_wearing_turban_medium_light_skin_tone",
    value = "👳🏼",
    description = "person wearing turban: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_wearing_turban_medium_skin_tone",
    value = "👳🏽",
    description = "person wearing turban: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_with_crown",
    value = "🫅",
    description = "person with crown",
    category = "People & Body / person-role"
  },
  {
    name = "person_with_crown_dark_skin_tone",
    value = "🫅🏿",
    description = "person with crown: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_with_crown_light_skin_tone",
    value = "🫅🏻",
    description = "person with crown: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_with_crown_medium_dark_skin_tone",
    value = "🫅🏾",
    description = "person with crown: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_with_crown_medium_light_skin_tone",
    value = "🫅🏼",
    description = "person with crown: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_with_crown_medium_skin_tone",
    value = "🫅🏽",
    description = "person with crown: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_with_skullcap",
    value = "👲",
    description = "person with skullcap",
    category = "People & Body / person-role"
  },
  {
    name = "person_with_skullcap_dark_skin_tone",
    value = "👲🏿",
    description = "person with skullcap: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_with_skullcap_light_skin_tone",
    value = "👲🏻",
    description = "person with skullcap: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_with_skullcap_medium_dark_skin_tone",
    value = "👲🏾",
    description = "person with skullcap: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_with_skullcap_medium_light_skin_tone",
    value = "👲🏼",
    description = "person with skullcap: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_with_skullcap_medium_skin_tone",
    value = "👲🏽",
    description = "person with skullcap: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_with_veil",
    value = "👰",
    description = "person with veil",
    category = "People & Body / person-role"
  },
  {
    name = "person_with_veil_dark_skin_tone",
    value = "👰🏿",
    description = "person with veil: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_with_veil_light_skin_tone",
    value = "👰🏻",
    description = "person with veil: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_with_veil_medium_dark_skin_tone",
    value = "👰🏾",
    description = "person with veil: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_with_veil_medium_light_skin_tone",
    value = "👰🏼",
    description = "person with veil: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "person_with_veil_medium_skin_tone",
    value = "👰🏽",
    description = "person with veil: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "pilot",
    value = "🧑‍✈️",
    description = "pilot",
    category = "People & Body / person-role"
  },
  {
    name = "pilot_dark_skin_tone",
    value = "🧑🏿‍✈️",
    description = "pilot: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "pilot_light_skin_tone",
    value = "🧑🏻‍✈️",
    description = "pilot: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "pilot_medium_dark_skin_tone",
    value = "🧑🏾‍✈️",
    description = "pilot: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "pilot_medium_light_skin_tone",
    value = "🧑🏼‍✈️",
    description = "pilot: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "pilot_medium_skin_tone",
    value = "🧑🏽‍✈️",
    description = "pilot: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "police_officer",
    value = "👮",
    description = "police officer",
    category = "People & Body / person-role"
  },
  {
    name = "police_officer_dark_skin_tone",
    value = "👮🏿",
    description = "police officer: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "police_officer_light_skin_tone",
    value = "👮🏻",
    description = "police officer: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "police_officer_medium_dark_skin_tone",
    value = "👮🏾",
    description = "police officer: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "police_officer_medium_light_skin_tone",
    value = "👮🏼",
    description = "police officer: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "police_officer_medium_skin_tone",
    value = "👮🏽",
    description = "police officer: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "pregnant_man",
    value = "🫃",
    description = "pregnant man",
    category = "People & Body / person-role"
  },
  {
    name = "pregnant_man_dark_skin_tone",
    value = "🫃🏿",
    description = "pregnant man: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "pregnant_man_light_skin_tone",
    value = "🫃🏻",
    description = "pregnant man: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "pregnant_man_medium_dark_skin_tone",
    value = "🫃🏾",
    description = "pregnant man: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "pregnant_man_medium_light_skin_tone",
    value = "🫃🏼",
    description = "pregnant man: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "pregnant_man_medium_skin_tone",
    value = "🫃🏽",
    description = "pregnant man: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "pregnant_person",
    value = "🫄",
    description = "pregnant person",
    category = "People & Body / person-role"
  },
  {
    name = "pregnant_person_dark_skin_tone",
    value = "🫄🏿",
    description = "pregnant person: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "pregnant_person_light_skin_tone",
    value = "🫄🏻",
    description = "pregnant person: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "pregnant_person_medium_dark_skin_tone",
    value = "🫄🏾",
    description = "pregnant person: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "pregnant_person_medium_light_skin_tone",
    value = "🫄🏼",
    description = "pregnant person: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "pregnant_person_medium_skin_tone",
    value = "🫄🏽",
    description = "pregnant person: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "pregnant_woman",
    value = "🤰",
    description = "pregnant woman",
    category = "People & Body / person-role"
  },
  {
    name = "pregnant_woman_dark_skin_tone",
    value = "🤰🏿",
    description = "pregnant woman: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "pregnant_woman_light_skin_tone",
    value = "🤰🏻",
    description = "pregnant woman: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "pregnant_woman_medium_dark_skin_tone",
    value = "🤰🏾",
    description = "pregnant woman: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "pregnant_woman_medium_light_skin_tone",
    value = "🤰🏼",
    description = "pregnant woman: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "pregnant_woman_medium_skin_tone",
    value = "🤰🏽",
    description = "pregnant woman: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "prince",
    value = "🤴",
    description = "prince",
    category = "People & Body / person-role"
  },
  {
    name = "prince_dark_skin_tone",
    value = "🤴🏿",
    description = "prince: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "prince_light_skin_tone",
    value = "🤴🏻",
    description = "prince: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "prince_medium_dark_skin_tone",
    value = "🤴🏾",
    description = "prince: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "prince_medium_light_skin_tone",
    value = "🤴🏼",
    description = "prince: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "prince_medium_skin_tone",
    value = "🤴🏽",
    description = "prince: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "princess",
    value = "👸",
    description = "princess",
    category = "People & Body / person-role"
  },
  {
    name = "princess_dark_skin_tone",
    value = "👸🏿",
    description = "princess: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "princess_light_skin_tone",
    value = "👸🏻",
    description = "princess: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "princess_medium_dark_skin_tone",
    value = "👸🏾",
    description = "princess: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "princess_medium_light_skin_tone",
    value = "👸🏼",
    description = "princess: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "princess_medium_skin_tone",
    value = "👸🏽",
    description = "princess: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "scientist",
    value = "🧑‍🔬",
    description = "scientist",
    category = "People & Body / person-role"
  },
  {
    name = "scientist_dark_skin_tone",
    value = "🧑🏿‍🔬",
    description = "scientist: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "scientist_light_skin_tone",
    value = "🧑🏻‍🔬",
    description = "scientist: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "scientist_medium_dark_skin_tone",
    value = "🧑🏾‍🔬",
    description = "scientist: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "scientist_medium_light_skin_tone",
    value = "🧑🏼‍🔬",
    description = "scientist: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "scientist_medium_skin_tone",
    value = "🧑🏽‍🔬",
    description = "scientist: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "singer",
    value = "🧑‍🎤",
    description = "singer",
    category = "People & Body / person-role"
  },
  {
    name = "singer_dark_skin_tone",
    value = "🧑🏿‍🎤",
    description = "singer: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "singer_light_skin_tone",
    value = "🧑🏻‍🎤",
    description = "singer: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "singer_medium_dark_skin_tone",
    value = "🧑🏾‍🎤",
    description = "singer: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "singer_medium_light_skin_tone",
    value = "🧑🏼‍🎤",
    description = "singer: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "singer_medium_skin_tone",
    value = "🧑🏽‍🎤",
    description = "singer: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "student",
    value = "🧑‍🎓",
    description = "student",
    category = "People & Body / person-role"
  },
  {
    name = "student_dark_skin_tone",
    value = "🧑🏿‍🎓",
    description = "student: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "student_light_skin_tone",
    value = "🧑🏻‍🎓",
    description = "student: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "student_medium_dark_skin_tone",
    value = "🧑🏾‍🎓",
    description = "student: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "student_medium_light_skin_tone",
    value = "🧑🏼‍🎓",
    description = "student: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "student_medium_skin_tone",
    value = "🧑🏽‍🎓",
    description = "student: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "teacher",
    value = "🧑‍🏫",
    description = "teacher",
    category = "People & Body / person-role"
  },
  {
    name = "teacher_dark_skin_tone",
    value = "🧑🏿‍🏫",
    description = "teacher: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "teacher_light_skin_tone",
    value = "🧑🏻‍🏫",
    description = "teacher: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "teacher_medium_dark_skin_tone",
    value = "🧑🏾‍🏫",
    description = "teacher: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "teacher_medium_light_skin_tone",
    value = "🧑🏼‍🏫",
    description = "teacher: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "teacher_medium_skin_tone",
    value = "🧑🏽‍🏫",
    description = "teacher: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "technologist",
    value = "🧑‍💻",
    description = "technologist",
    category = "People & Body / person-role"
  },
  {
    name = "technologist_dark_skin_tone",
    value = "🧑🏿‍💻",
    description = "technologist: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "technologist_light_skin_tone",
    value = "🧑🏻‍💻",
    description = "technologist: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "technologist_medium_dark_skin_tone",
    value = "🧑🏾‍💻",
    description = "technologist: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "technologist_medium_light_skin_tone",
    value = "🧑🏼‍💻",
    description = "technologist: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "technologist_medium_skin_tone",
    value = "🧑🏽‍💻",
    description = "technologist: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_artist",
    value = "👩‍🎨",
    description = "woman artist",
    category = "People & Body / person-role"
  },
  {
    name = "woman_artist_dark_skin_tone",
    value = "👩🏿‍🎨",
    description = "woman artist: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_artist_light_skin_tone",
    value = "👩🏻‍🎨",
    description = "woman artist: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_artist_medium_dark_skin_tone",
    value = "👩🏾‍🎨",
    description = "woman artist: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_artist_medium_light_skin_tone",
    value = "👩🏼‍🎨",
    description = "woman artist: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_artist_medium_skin_tone",
    value = "👩🏽‍🎨",
    description = "woman artist: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_astronaut",
    value = "👩‍🚀",
    description = "woman astronaut",
    category = "People & Body / person-role"
  },
  {
    name = "woman_astronaut_dark_skin_tone",
    value = "👩🏿‍🚀",
    description = "woman astronaut: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_astronaut_light_skin_tone",
    value = "👩🏻‍🚀",
    description = "woman astronaut: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_astronaut_medium_dark_skin_tone",
    value = "👩🏾‍🚀",
    description = "woman astronaut: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_astronaut_medium_light_skin_tone",
    value = "👩🏼‍🚀",
    description = "woman astronaut: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_astronaut_medium_skin_tone",
    value = "👩🏽‍🚀",
    description = "woman astronaut: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_construction_worker",
    value = "👷‍♀️",
    description = "woman construction worker",
    category = "People & Body / person-role"
  },
  {
    name = "woman_construction_worker_dark_skin_tone",
    value = "👷🏿‍♀️",
    description = "woman construction worker: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_construction_worker_light_skin_tone",
    value = "👷🏻‍♀️",
    description = "woman construction worker: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_construction_worker_medium_dark_skin_tone",
    value = "👷🏾‍♀️",
    description = "woman construction worker: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_construction_worker_medium_light_skin_tone",
    value = "👷🏼‍♀️",
    description = "woman construction worker: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_construction_worker_medium_skin_tone",
    value = "👷🏽‍♀️",
    description = "woman construction worker: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_cook",
    value = "👩‍🍳",
    description = "woman cook",
    category = "People & Body / person-role"
  },
  {
    name = "woman_cook_dark_skin_tone",
    value = "👩🏿‍🍳",
    description = "woman cook: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_cook_light_skin_tone",
    value = "👩🏻‍🍳",
    description = "woman cook: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_cook_medium_dark_skin_tone",
    value = "👩🏾‍🍳",
    description = "woman cook: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_cook_medium_light_skin_tone",
    value = "👩🏼‍🍳",
    description = "woman cook: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_cook_medium_skin_tone",
    value = "👩🏽‍🍳",
    description = "woman cook: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_detective",
    value = "🕵️‍♀️",
    description = "woman detective",
    category = "People & Body / person-role"
  },
  {
    name = "woman_detective_dark_skin_tone",
    value = "🕵🏿‍♀️",
    description = "woman detective: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_detective_light_skin_tone",
    value = "🕵🏻‍♀️",
    description = "woman detective: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_detective_medium_dark_skin_tone",
    value = "🕵🏾‍♀️",
    description = "woman detective: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_detective_medium_light_skin_tone",
    value = "🕵🏼‍♀️",
    description = "woman detective: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_detective_medium_skin_tone",
    value = "🕵🏽‍♀️",
    description = "woman detective: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_factory_worker",
    value = "👩‍🏭",
    description = "woman factory worker",
    category = "People & Body / person-role"
  },
  {
    name = "woman_factory_worker_dark_skin_tone",
    value = "👩🏿‍🏭",
    description = "woman factory worker: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_factory_worker_light_skin_tone",
    value = "👩🏻‍🏭",
    description = "woman factory worker: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_factory_worker_medium_dark_skin_tone",
    value = "👩🏾‍🏭",
    description = "woman factory worker: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_factory_worker_medium_light_skin_tone",
    value = "👩🏼‍🏭",
    description = "woman factory worker: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_factory_worker_medium_skin_tone",
    value = "👩🏽‍🏭",
    description = "woman factory worker: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_farmer",
    value = "👩‍🌾",
    description = "woman farmer",
    category = "People & Body / person-role"
  },
  {
    name = "woman_farmer_dark_skin_tone",
    value = "👩🏿‍🌾",
    description = "woman farmer: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_farmer_light_skin_tone",
    value = "👩🏻‍🌾",
    description = "woman farmer: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_farmer_medium_dark_skin_tone",
    value = "👩🏾‍🌾",
    description = "woman farmer: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_farmer_medium_light_skin_tone",
    value = "👩🏼‍🌾",
    description = "woman farmer: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_farmer_medium_skin_tone",
    value = "👩🏽‍🌾",
    description = "woman farmer: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_feeding_baby",
    value = "👩‍🍼",
    description = "woman feeding baby",
    category = "People & Body / person-role"
  },
  {
    name = "woman_feeding_baby_dark_skin_tone",
    value = "👩🏿‍🍼",
    description = "woman feeding baby: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_feeding_baby_light_skin_tone",
    value = "👩🏻‍🍼",
    description = "woman feeding baby: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_feeding_baby_medium_dark_skin_tone",
    value = "👩🏾‍🍼",
    description = "woman feeding baby: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_feeding_baby_medium_light_skin_tone",
    value = "👩🏼‍🍼",
    description = "woman feeding baby: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_feeding_baby_medium_skin_tone",
    value = "👩🏽‍🍼",
    description = "woman feeding baby: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_firefighter",
    value = "👩‍🚒",
    description = "woman firefighter",
    category = "People & Body / person-role"
  },
  {
    name = "woman_firefighter_dark_skin_tone",
    value = "👩🏿‍🚒",
    description = "woman firefighter: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_firefighter_light_skin_tone",
    value = "👩🏻‍🚒",
    description = "woman firefighter: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_firefighter_medium_dark_skin_tone",
    value = "👩🏾‍🚒",
    description = "woman firefighter: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_firefighter_medium_light_skin_tone",
    value = "👩🏼‍🚒",
    description = "woman firefighter: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_firefighter_medium_skin_tone",
    value = "👩🏽‍🚒",
    description = "woman firefighter: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_guard",
    value = "💂‍♀️",
    description = "woman guard",
    category = "People & Body / person-role"
  },
  {
    name = "woman_guard_dark_skin_tone",
    value = "💂🏿‍♀️",
    description = "woman guard: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_guard_light_skin_tone",
    value = "💂🏻‍♀️",
    description = "woman guard: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_guard_medium_dark_skin_tone",
    value = "💂🏾‍♀️",
    description = "woman guard: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_guard_medium_light_skin_tone",
    value = "💂🏼‍♀️",
    description = "woman guard: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_guard_medium_skin_tone",
    value = "💂🏽‍♀️",
    description = "woman guard: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_health_worker",
    value = "👩‍⚕️",
    description = "woman health worker",
    category = "People & Body / person-role"
  },
  {
    name = "woman_health_worker_dark_skin_tone",
    value = "👩🏿‍⚕️",
    description = "woman health worker: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_health_worker_light_skin_tone",
    value = "👩🏻‍⚕️",
    description = "woman health worker: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_health_worker_medium_dark_skin_tone",
    value = "👩🏾‍⚕️",
    description = "woman health worker: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_health_worker_medium_light_skin_tone",
    value = "👩🏼‍⚕️",
    description = "woman health worker: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_health_worker_medium_skin_tone",
    value = "👩🏽‍⚕️",
    description = "woman health worker: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_in_tuxedo",
    value = "🤵‍♀️",
    description = "woman in tuxedo",
    category = "People & Body / person-role"
  },
  {
    name = "woman_in_tuxedo_dark_skin_tone",
    value = "🤵🏿‍♀️",
    description = "woman in tuxedo: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_in_tuxedo_light_skin_tone",
    value = "🤵🏻‍♀️",
    description = "woman in tuxedo: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_in_tuxedo_medium_dark_skin_tone",
    value = "🤵🏾‍♀️",
    description = "woman in tuxedo: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_in_tuxedo_medium_light_skin_tone",
    value = "🤵🏼‍♀️",
    description = "woman in tuxedo: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_in_tuxedo_medium_skin_tone",
    value = "🤵🏽‍♀️",
    description = "woman in tuxedo: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_judge",
    value = "👩‍⚖️",
    description = "woman judge",
    category = "People & Body / person-role"
  },
  {
    name = "woman_judge_dark_skin_tone",
    value = "👩🏿‍⚖️",
    description = "woman judge: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_judge_light_skin_tone",
    value = "👩🏻‍⚖️",
    description = "woman judge: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_judge_medium_dark_skin_tone",
    value = "👩🏾‍⚖️",
    description = "woman judge: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_judge_medium_light_skin_tone",
    value = "👩🏼‍⚖️",
    description = "woman judge: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_judge_medium_skin_tone",
    value = "👩🏽‍⚖️",
    description = "woman judge: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_mechanic",
    value = "👩‍🔧",
    description = "woman mechanic",
    category = "People & Body / person-role"
  },
  {
    name = "woman_mechanic_dark_skin_tone",
    value = "👩🏿‍🔧",
    description = "woman mechanic: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_mechanic_light_skin_tone",
    value = "👩🏻‍🔧",
    description = "woman mechanic: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_mechanic_medium_dark_skin_tone",
    value = "👩🏾‍🔧",
    description = "woman mechanic: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_mechanic_medium_light_skin_tone",
    value = "👩🏼‍🔧",
    description = "woman mechanic: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_mechanic_medium_skin_tone",
    value = "👩🏽‍🔧",
    description = "woman mechanic: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_office_worker",
    value = "👩‍💼",
    description = "woman office worker",
    category = "People & Body / person-role"
  },
  {
    name = "woman_office_worker_dark_skin_tone",
    value = "👩🏿‍💼",
    description = "woman office worker: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_office_worker_light_skin_tone",
    value = "👩🏻‍💼",
    description = "woman office worker: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_office_worker_medium_dark_skin_tone",
    value = "👩🏾‍💼",
    description = "woman office worker: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_office_worker_medium_light_skin_tone",
    value = "👩🏼‍💼",
    description = "woman office worker: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_office_worker_medium_skin_tone",
    value = "👩🏽‍💼",
    description = "woman office worker: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_pilot",
    value = "👩‍✈️",
    description = "woman pilot",
    category = "People & Body / person-role"
  },
  {
    name = "woman_pilot_dark_skin_tone",
    value = "👩🏿‍✈️",
    description = "woman pilot: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_pilot_light_skin_tone",
    value = "👩🏻‍✈️",
    description = "woman pilot: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_pilot_medium_dark_skin_tone",
    value = "👩🏾‍✈️",
    description = "woman pilot: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_pilot_medium_light_skin_tone",
    value = "👩🏼‍✈️",
    description = "woman pilot: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_pilot_medium_skin_tone",
    value = "👩🏽‍✈️",
    description = "woman pilot: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_police_officer",
    value = "👮‍♀️",
    description = "woman police officer",
    category = "People & Body / person-role"
  },
  {
    name = "woman_police_officer_dark_skin_tone",
    value = "👮🏿‍♀️",
    description = "woman police officer: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_police_officer_light_skin_tone",
    value = "👮🏻‍♀️",
    description = "woman police officer: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_police_officer_medium_dark_skin_tone",
    value = "👮🏾‍♀️",
    description = "woman police officer: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_police_officer_medium_light_skin_tone",
    value = "👮🏼‍♀️",
    description = "woman police officer: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_police_officer_medium_skin_tone",
    value = "👮🏽‍♀️",
    description = "woman police officer: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_scientist",
    value = "👩‍🔬",
    description = "woman scientist",
    category = "People & Body / person-role"
  },
  {
    name = "woman_scientist_dark_skin_tone",
    value = "👩🏿‍🔬",
    description = "woman scientist: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_scientist_light_skin_tone",
    value = "👩🏻‍🔬",
    description = "woman scientist: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_scientist_medium_dark_skin_tone",
    value = "👩🏾‍🔬",
    description = "woman scientist: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_scientist_medium_light_skin_tone",
    value = "👩🏼‍🔬",
    description = "woman scientist: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_scientist_medium_skin_tone",
    value = "👩🏽‍🔬",
    description = "woman scientist: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_singer",
    value = "👩‍🎤",
    description = "woman singer",
    category = "People & Body / person-role"
  },
  {
    name = "woman_singer_dark_skin_tone",
    value = "👩🏿‍🎤",
    description = "woman singer: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_singer_light_skin_tone",
    value = "👩🏻‍🎤",
    description = "woman singer: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_singer_medium_dark_skin_tone",
    value = "👩🏾‍🎤",
    description = "woman singer: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_singer_medium_light_skin_tone",
    value = "👩🏼‍🎤",
    description = "woman singer: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_singer_medium_skin_tone",
    value = "👩🏽‍🎤",
    description = "woman singer: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_student",
    value = "👩‍🎓",
    description = "woman student",
    category = "People & Body / person-role"
  },
  {
    name = "woman_student_dark_skin_tone",
    value = "👩🏿‍🎓",
    description = "woman student: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_student_light_skin_tone",
    value = "👩🏻‍🎓",
    description = "woman student: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_student_medium_dark_skin_tone",
    value = "👩🏾‍🎓",
    description = "woman student: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_student_medium_light_skin_tone",
    value = "👩🏼‍🎓",
    description = "woman student: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_student_medium_skin_tone",
    value = "👩🏽‍🎓",
    description = "woman student: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_teacher",
    value = "👩‍🏫",
    description = "woman teacher",
    category = "People & Body / person-role"
  },
  {
    name = "woman_teacher_dark_skin_tone",
    value = "👩🏿‍🏫",
    description = "woman teacher: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_teacher_light_skin_tone",
    value = "👩🏻‍🏫",
    description = "woman teacher: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_teacher_medium_dark_skin_tone",
    value = "👩🏾‍🏫",
    description = "woman teacher: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_teacher_medium_light_skin_tone",
    value = "👩🏼‍🏫",
    description = "woman teacher: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_teacher_medium_skin_tone",
    value = "👩🏽‍🏫",
    description = "woman teacher: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_technologist",
    value = "👩‍💻",
    description = "woman technologist",
    category = "People & Body / person-role"
  },
  {
    name = "woman_technologist_dark_skin_tone",
    value = "👩🏿‍💻",
    description = "woman technologist: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_technologist_light_skin_tone",
    value = "👩🏻‍💻",
    description = "woman technologist: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_technologist_medium_dark_skin_tone",
    value = "👩🏾‍💻",
    description = "woman technologist: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_technologist_medium_light_skin_tone",
    value = "👩🏼‍💻",
    description = "woman technologist: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_technologist_medium_skin_tone",
    value = "👩🏽‍💻",
    description = "woman technologist: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_wearing_turban",
    value = "👳‍♀️",
    description = "woman wearing turban",
    category = "People & Body / person-role"
  },
  {
    name = "woman_wearing_turban_dark_skin_tone",
    value = "👳🏿‍♀️",
    description = "woman wearing turban: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_wearing_turban_light_skin_tone",
    value = "👳🏻‍♀️",
    description = "woman wearing turban: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_wearing_turban_medium_dark_skin_tone",
    value = "👳🏾‍♀️",
    description = "woman wearing turban: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_wearing_turban_medium_light_skin_tone",
    value = "👳🏼‍♀️",
    description = "woman wearing turban: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_wearing_turban_medium_skin_tone",
    value = "👳🏽‍♀️",
    description = "woman wearing turban: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_with_headscarf",
    value = "🧕",
    description = "woman with headscarf",
    category = "People & Body / person-role"
  },
  {
    name = "woman_with_headscarf_dark_skin_tone",
    value = "🧕🏿",
    description = "woman with headscarf: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_with_headscarf_light_skin_tone",
    value = "🧕🏻",
    description = "woman with headscarf: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_with_headscarf_medium_dark_skin_tone",
    value = "🧕🏾",
    description = "woman with headscarf: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_with_headscarf_medium_light_skin_tone",
    value = "🧕🏼",
    description = "woman with headscarf: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_with_headscarf_medium_skin_tone",
    value = "🧕🏽",
    description = "woman with headscarf: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_with_veil",
    value = "👰‍♀️",
    description = "woman with veil",
    category = "People & Body / person-role"
  },
  {
    name = "woman_with_veil_dark_skin_tone",
    value = "👰🏿‍♀️",
    description = "woman with veil: dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_with_veil_light_skin_tone",
    value = "👰🏻‍♀️",
    description = "woman with veil: light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_with_veil_medium_dark_skin_tone",
    value = "👰🏾‍♀️",
    description = "woman with veil: medium-dark skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_with_veil_medium_light_skin_tone",
    value = "👰🏼‍♀️",
    description = "woman with veil: medium-light skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "woman_with_veil_medium_skin_tone",
    value = "👰🏽‍♀️",
    description = "woman with veil: medium skin tone",
    category = "People & Body / person-role"
  },
  {
    name = "horse_racing",
    value = "🏇",
    description = "horse racing",
    category = "People & Body / person-sport"
  },
  {
    name = "horse_racing_dark_skin_tone",
    value = "🏇🏿",
    description = "horse racing: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "horse_racing_light_skin_tone",
    value = "🏇🏻",
    description = "horse racing: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "horse_racing_medium_dark_skin_tone",
    value = "🏇🏾",
    description = "horse racing: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "horse_racing_medium_light_skin_tone",
    value = "🏇🏼",
    description = "horse racing: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "horse_racing_medium_skin_tone",
    value = "🏇🏽",
    description = "horse racing: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_biking",
    value = "🚴‍♂️",
    description = "man biking",
    category = "People & Body / person-sport"
  },
  {
    name = "man_biking_dark_skin_tone",
    value = "🚴🏿‍♂️",
    description = "man biking: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_biking_light_skin_tone",
    value = "🚴🏻‍♂️",
    description = "man biking: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_biking_medium_dark_skin_tone",
    value = "🚴🏾‍♂️",
    description = "man biking: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_biking_medium_light_skin_tone",
    value = "🚴🏼‍♂️",
    description = "man biking: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_biking_medium_skin_tone",
    value = "🚴🏽‍♂️",
    description = "man biking: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_bouncing_ball",
    value = "⛹️‍♂️",
    description = "man bouncing ball",
    category = "People & Body / person-sport"
  },
  {
    name = "man_bouncing_ball_dark_skin_tone",
    value = "⛹🏿‍♂️",
    description = "man bouncing ball: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_bouncing_ball_light_skin_tone",
    value = "⛹🏻‍♂️",
    description = "man bouncing ball: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_bouncing_ball_medium_dark_skin_tone",
    value = "⛹🏾‍♂️",
    description = "man bouncing ball: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_bouncing_ball_medium_light_skin_tone",
    value = "⛹🏼‍♂️",
    description = "man bouncing ball: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_bouncing_ball_medium_skin_tone",
    value = "⛹🏽‍♂️",
    description = "man bouncing ball: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_cartwheeling",
    value = "🤸‍♂️",
    description = "man cartwheeling",
    category = "People & Body / person-sport"
  },
  {
    name = "man_cartwheeling_dark_skin_tone",
    value = "🤸🏿‍♂️",
    description = "man cartwheeling: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_cartwheeling_light_skin_tone",
    value = "🤸🏻‍♂️",
    description = "man cartwheeling: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_cartwheeling_medium_dark_skin_tone",
    value = "🤸🏾‍♂️",
    description = "man cartwheeling: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_cartwheeling_medium_light_skin_tone",
    value = "🤸🏼‍♂️",
    description = "man cartwheeling: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_cartwheeling_medium_skin_tone",
    value = "🤸🏽‍♂️",
    description = "man cartwheeling: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_golfing",
    value = "🏌️‍♂️",
    description = "man golfing",
    category = "People & Body / person-sport"
  },
  {
    name = "man_golfing_dark_skin_tone",
    value = "🏌🏿‍♂️",
    description = "man golfing: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_golfing_light_skin_tone",
    value = "🏌🏻‍♂️",
    description = "man golfing: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_golfing_medium_dark_skin_tone",
    value = "🏌🏾‍♂️",
    description = "man golfing: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_golfing_medium_light_skin_tone",
    value = "🏌🏼‍♂️",
    description = "man golfing: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_golfing_medium_skin_tone",
    value = "🏌🏽‍♂️",
    description = "man golfing: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_juggling",
    value = "🤹‍♂️",
    description = "man juggling",
    category = "People & Body / person-sport"
  },
  {
    name = "man_juggling_dark_skin_tone",
    value = "🤹🏿‍♂️",
    description = "man juggling: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_juggling_light_skin_tone",
    value = "🤹🏻‍♂️",
    description = "man juggling: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_juggling_medium_dark_skin_tone",
    value = "🤹🏾‍♂️",
    description = "man juggling: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_juggling_medium_light_skin_tone",
    value = "🤹🏼‍♂️",
    description = "man juggling: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_juggling_medium_skin_tone",
    value = "🤹🏽‍♂️",
    description = "man juggling: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_lifting_weights",
    value = "🏋️‍♂️",
    description = "man lifting weights",
    category = "People & Body / person-sport"
  },
  {
    name = "man_lifting_weights_dark_skin_tone",
    value = "🏋🏿‍♂️",
    description = "man lifting weights: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_lifting_weights_light_skin_tone",
    value = "🏋🏻‍♂️",
    description = "man lifting weights: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_lifting_weights_medium_dark_skin_tone",
    value = "🏋🏾‍♂️",
    description = "man lifting weights: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_lifting_weights_medium_light_skin_tone",
    value = "🏋🏼‍♂️",
    description = "man lifting weights: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_lifting_weights_medium_skin_tone",
    value = "🏋🏽‍♂️",
    description = "man lifting weights: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_mountain_biking",
    value = "🚵‍♂️",
    description = "man mountain biking",
    category = "People & Body / person-sport"
  },
  {
    name = "man_mountain_biking_dark_skin_tone",
    value = "🚵🏿‍♂️",
    description = "man mountain biking: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_mountain_biking_light_skin_tone",
    value = "🚵🏻‍♂️",
    description = "man mountain biking: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_mountain_biking_medium_dark_skin_tone",
    value = "🚵🏾‍♂️",
    description = "man mountain biking: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_mountain_biking_medium_light_skin_tone",
    value = "🚵🏼‍♂️",
    description = "man mountain biking: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_mountain_biking_medium_skin_tone",
    value = "🚵🏽‍♂️",
    description = "man mountain biking: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_playing_handball",
    value = "🤾‍♂️",
    description = "man playing handball",
    category = "People & Body / person-sport"
  },
  {
    name = "man_playing_handball_dark_skin_tone",
    value = "🤾🏿‍♂️",
    description = "man playing handball: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_playing_handball_light_skin_tone",
    value = "🤾🏻‍♂️",
    description = "man playing handball: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_playing_handball_medium_dark_skin_tone",
    value = "🤾🏾‍♂️",
    description = "man playing handball: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_playing_handball_medium_light_skin_tone",
    value = "🤾🏼‍♂️",
    description = "man playing handball: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_playing_handball_medium_skin_tone",
    value = "🤾🏽‍♂️",
    description = "man playing handball: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_playing_water_polo",
    value = "🤽‍♂️",
    description = "man playing water polo",
    category = "People & Body / person-sport"
  },
  {
    name = "man_playing_water_polo_dark_skin_tone",
    value = "🤽🏿‍♂️",
    description = "man playing water polo: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_playing_water_polo_light_skin_tone",
    value = "🤽🏻‍♂️",
    description = "man playing water polo: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_playing_water_polo_medium_dark_skin_tone",
    value = "🤽🏾‍♂️",
    description = "man playing water polo: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_playing_water_polo_medium_light_skin_tone",
    value = "🤽🏼‍♂️",
    description = "man playing water polo: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_playing_water_polo_medium_skin_tone",
    value = "🤽🏽‍♂️",
    description = "man playing water polo: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_rowing_boat",
    value = "🚣‍♂️",
    description = "man rowing boat",
    category = "People & Body / person-sport"
  },
  {
    name = "man_rowing_boat_dark_skin_tone",
    value = "🚣🏿‍♂️",
    description = "man rowing boat: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_rowing_boat_light_skin_tone",
    value = "🚣🏻‍♂️",
    description = "man rowing boat: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_rowing_boat_medium_dark_skin_tone",
    value = "🚣🏾‍♂️",
    description = "man rowing boat: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_rowing_boat_medium_light_skin_tone",
    value = "🚣🏼‍♂️",
    description = "man rowing boat: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_rowing_boat_medium_skin_tone",
    value = "🚣🏽‍♂️",
    description = "man rowing boat: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_surfing",
    value = "🏄‍♂️",
    description = "man surfing",
    category = "People & Body / person-sport"
  },
  {
    name = "man_surfing_dark_skin_tone",
    value = "🏄🏿‍♂️",
    description = "man surfing: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_surfing_light_skin_tone",
    value = "🏄🏻‍♂️",
    description = "man surfing: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_surfing_medium_dark_skin_tone",
    value = "🏄🏾‍♂️",
    description = "man surfing: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_surfing_medium_light_skin_tone",
    value = "🏄🏼‍♂️",
    description = "man surfing: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_surfing_medium_skin_tone",
    value = "🏄🏽‍♂️",
    description = "man surfing: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_swimming",
    value = "🏊‍♂️",
    description = "man swimming",
    category = "People & Body / person-sport"
  },
  {
    name = "man_swimming_dark_skin_tone",
    value = "🏊🏿‍♂️",
    description = "man swimming: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_swimming_light_skin_tone",
    value = "🏊🏻‍♂️",
    description = "man swimming: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_swimming_medium_dark_skin_tone",
    value = "🏊🏾‍♂️",
    description = "man swimming: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_swimming_medium_light_skin_tone",
    value = "🏊🏼‍♂️",
    description = "man swimming: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "man_swimming_medium_skin_tone",
    value = "🏊🏽‍♂️",
    description = "man swimming: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "men_wrestling",
    value = "🤼‍♂️",
    description = "men wrestling",
    category = "People & Body / person-sport"
  },
  {
    name = "people_wrestling",
    value = "🤼",
    description = "people wrestling",
    category = "People & Body / person-sport"
  },
  {
    name = "person_biking",
    value = "🚴",
    description = "person biking",
    category = "People & Body / person-sport"
  },
  {
    name = "person_biking_dark_skin_tone",
    value = "🚴🏿",
    description = "person biking: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_biking_light_skin_tone",
    value = "🚴🏻",
    description = "person biking: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_biking_medium_dark_skin_tone",
    value = "🚴🏾",
    description = "person biking: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_biking_medium_light_skin_tone",
    value = "🚴🏼",
    description = "person biking: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_biking_medium_skin_tone",
    value = "🚴🏽",
    description = "person biking: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_bouncing_ball",
    value = "⛹️",
    description = "person bouncing ball",
    category = "People & Body / person-sport"
  },
  {
    name = "person_bouncing_ball_dark_skin_tone",
    value = "⛹🏿",
    description = "person bouncing ball: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_bouncing_ball_light_skin_tone",
    value = "⛹🏻",
    description = "person bouncing ball: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_bouncing_ball_medium_dark_skin_tone",
    value = "⛹🏾",
    description = "person bouncing ball: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_bouncing_ball_medium_light_skin_tone",
    value = "⛹🏼",
    description = "person bouncing ball: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_bouncing_ball_medium_skin_tone",
    value = "⛹🏽",
    description = "person bouncing ball: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_cartwheeling",
    value = "🤸",
    description = "person cartwheeling",
    category = "People & Body / person-sport"
  },
  {
    name = "person_cartwheeling_dark_skin_tone",
    value = "🤸🏿",
    description = "person cartwheeling: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_cartwheeling_light_skin_tone",
    value = "🤸🏻",
    description = "person cartwheeling: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_cartwheeling_medium_dark_skin_tone",
    value = "🤸🏾",
    description = "person cartwheeling: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_cartwheeling_medium_light_skin_tone",
    value = "🤸🏼",
    description = "person cartwheeling: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_cartwheeling_medium_skin_tone",
    value = "🤸🏽",
    description = "person cartwheeling: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_fencing",
    value = "🤺",
    description = "person fencing",
    category = "People & Body / person-sport"
  },
  {
    name = "person_golfing",
    value = "🏌️",
    description = "person golfing",
    category = "People & Body / person-sport"
  },
  {
    name = "person_golfing_dark_skin_tone",
    value = "🏌🏿",
    description = "person golfing: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_golfing_light_skin_tone",
    value = "🏌🏻",
    description = "person golfing: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_golfing_medium_dark_skin_tone",
    value = "🏌🏾",
    description = "person golfing: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_golfing_medium_light_skin_tone",
    value = "🏌🏼",
    description = "person golfing: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_golfing_medium_skin_tone",
    value = "🏌🏽",
    description = "person golfing: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_juggling",
    value = "🤹",
    description = "person juggling",
    category = "People & Body / person-sport"
  },
  {
    name = "person_juggling_dark_skin_tone",
    value = "🤹🏿",
    description = "person juggling: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_juggling_light_skin_tone",
    value = "🤹🏻",
    description = "person juggling: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_juggling_medium_dark_skin_tone",
    value = "🤹🏾",
    description = "person juggling: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_juggling_medium_light_skin_tone",
    value = "🤹🏼",
    description = "person juggling: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_juggling_medium_skin_tone",
    value = "🤹🏽",
    description = "person juggling: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_lifting_weights",
    value = "🏋️",
    description = "person lifting weights",
    category = "People & Body / person-sport"
  },
  {
    name = "person_lifting_weights_dark_skin_tone",
    value = "🏋🏿",
    description = "person lifting weights: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_lifting_weights_light_skin_tone",
    value = "🏋🏻",
    description = "person lifting weights: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_lifting_weights_medium_dark_skin_tone",
    value = "🏋🏾",
    description = "person lifting weights: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_lifting_weights_medium_light_skin_tone",
    value = "🏋🏼",
    description = "person lifting weights: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_lifting_weights_medium_skin_tone",
    value = "🏋🏽",
    description = "person lifting weights: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_mountain_biking",
    value = "🚵",
    description = "person mountain biking",
    category = "People & Body / person-sport"
  },
  {
    name = "person_mountain_biking_dark_skin_tone",
    value = "🚵🏿",
    description = "person mountain biking: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_mountain_biking_light_skin_tone",
    value = "🚵🏻",
    description = "person mountain biking: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_mountain_biking_medium_dark_skin_tone",
    value = "🚵🏾",
    description = "person mountain biking: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_mountain_biking_medium_light_skin_tone",
    value = "🚵🏼",
    description = "person mountain biking: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_mountain_biking_medium_skin_tone",
    value = "🚵🏽",
    description = "person mountain biking: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_playing_handball",
    value = "🤾",
    description = "person playing handball",
    category = "People & Body / person-sport"
  },
  {
    name = "person_playing_handball_dark_skin_tone",
    value = "🤾🏿",
    description = "person playing handball: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_playing_handball_light_skin_tone",
    value = "🤾🏻",
    description = "person playing handball: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_playing_handball_medium_dark_skin_tone",
    value = "🤾🏾",
    description = "person playing handball: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_playing_handball_medium_light_skin_tone",
    value = "🤾🏼",
    description = "person playing handball: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_playing_handball_medium_skin_tone",
    value = "🤾🏽",
    description = "person playing handball: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_playing_water_polo",
    value = "🤽",
    description = "person playing water polo",
    category = "People & Body / person-sport"
  },
  {
    name = "person_playing_water_polo_dark_skin_tone",
    value = "🤽🏿",
    description = "person playing water polo: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_playing_water_polo_light_skin_tone",
    value = "🤽🏻",
    description = "person playing water polo: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_playing_water_polo_medium_dark_skin_tone",
    value = "🤽🏾",
    description = "person playing water polo: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_playing_water_polo_medium_light_skin_tone",
    value = "🤽🏼",
    description = "person playing water polo: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_playing_water_polo_medium_skin_tone",
    value = "🤽🏽",
    description = "person playing water polo: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_rowing_boat",
    value = "🚣",
    description = "person rowing boat",
    category = "People & Body / person-sport"
  },
  {
    name = "person_rowing_boat_dark_skin_tone",
    value = "🚣🏿",
    description = "person rowing boat: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_rowing_boat_light_skin_tone",
    value = "🚣🏻",
    description = "person rowing boat: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_rowing_boat_medium_dark_skin_tone",
    value = "🚣🏾",
    description = "person rowing boat: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_rowing_boat_medium_light_skin_tone",
    value = "🚣🏼",
    description = "person rowing boat: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_rowing_boat_medium_skin_tone",
    value = "🚣🏽",
    description = "person rowing boat: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_surfing",
    value = "🏄",
    description = "person surfing",
    category = "People & Body / person-sport"
  },
  {
    name = "person_surfing_dark_skin_tone",
    value = "🏄🏿",
    description = "person surfing: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_surfing_light_skin_tone",
    value = "🏄🏻",
    description = "person surfing: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_surfing_medium_dark_skin_tone",
    value = "🏄🏾",
    description = "person surfing: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_surfing_medium_light_skin_tone",
    value = "🏄🏼",
    description = "person surfing: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_surfing_medium_skin_tone",
    value = "🏄🏽",
    description = "person surfing: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_swimming",
    value = "🏊",
    description = "person swimming",
    category = "People & Body / person-sport"
  },
  {
    name = "person_swimming_dark_skin_tone",
    value = "🏊🏿",
    description = "person swimming: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_swimming_light_skin_tone",
    value = "🏊🏻",
    description = "person swimming: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_swimming_medium_dark_skin_tone",
    value = "🏊🏾",
    description = "person swimming: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_swimming_medium_light_skin_tone",
    value = "🏊🏼",
    description = "person swimming: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "person_swimming_medium_skin_tone",
    value = "🏊🏽",
    description = "person swimming: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "skier",
    value = "⛷️",
    description = "skier",
    category = "People & Body / person-sport"
  },
  {
    name = "snowboarder",
    value = "🏂",
    description = "snowboarder",
    category = "People & Body / person-sport"
  },
  {
    name = "snowboarder_dark_skin_tone",
    value = "🏂🏿",
    description = "snowboarder: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "snowboarder_light_skin_tone",
    value = "🏂🏻",
    description = "snowboarder: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "snowboarder_medium_dark_skin_tone",
    value = "🏂🏾",
    description = "snowboarder: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "snowboarder_medium_light_skin_tone",
    value = "🏂🏼",
    description = "snowboarder: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "snowboarder_medium_skin_tone",
    value = "🏂🏽",
    description = "snowboarder: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_biking",
    value = "🚴‍♀️",
    description = "woman biking",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_biking_dark_skin_tone",
    value = "🚴🏿‍♀️",
    description = "woman biking: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_biking_light_skin_tone",
    value = "🚴🏻‍♀️",
    description = "woman biking: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_biking_medium_dark_skin_tone",
    value = "🚴🏾‍♀️",
    description = "woman biking: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_biking_medium_light_skin_tone",
    value = "🚴🏼‍♀️",
    description = "woman biking: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_biking_medium_skin_tone",
    value = "🚴🏽‍♀️",
    description = "woman biking: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_bouncing_ball",
    value = "⛹️‍♀️",
    description = "woman bouncing ball",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_bouncing_ball_dark_skin_tone",
    value = "⛹🏿‍♀️",
    description = "woman bouncing ball: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_bouncing_ball_light_skin_tone",
    value = "⛹🏻‍♀️",
    description = "woman bouncing ball: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_bouncing_ball_medium_dark_skin_tone",
    value = "⛹🏾‍♀️",
    description = "woman bouncing ball: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_bouncing_ball_medium_light_skin_tone",
    value = "⛹🏼‍♀️",
    description = "woman bouncing ball: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_bouncing_ball_medium_skin_tone",
    value = "⛹🏽‍♀️",
    description = "woman bouncing ball: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_cartwheeling",
    value = "🤸‍♀️",
    description = "woman cartwheeling",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_cartwheeling_dark_skin_tone",
    value = "🤸🏿‍♀️",
    description = "woman cartwheeling: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_cartwheeling_light_skin_tone",
    value = "🤸🏻‍♀️",
    description = "woman cartwheeling: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_cartwheeling_medium_dark_skin_tone",
    value = "🤸🏾‍♀️",
    description = "woman cartwheeling: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_cartwheeling_medium_light_skin_tone",
    value = "🤸🏼‍♀️",
    description = "woman cartwheeling: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_cartwheeling_medium_skin_tone",
    value = "🤸🏽‍♀️",
    description = "woman cartwheeling: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_golfing",
    value = "🏌️‍♀️",
    description = "woman golfing",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_golfing_dark_skin_tone",
    value = "🏌🏿‍♀️",
    description = "woman golfing: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_golfing_light_skin_tone",
    value = "🏌🏻‍♀️",
    description = "woman golfing: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_golfing_medium_dark_skin_tone",
    value = "🏌🏾‍♀️",
    description = "woman golfing: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_golfing_medium_light_skin_tone",
    value = "🏌🏼‍♀️",
    description = "woman golfing: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_golfing_medium_skin_tone",
    value = "🏌🏽‍♀️",
    description = "woman golfing: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_juggling",
    value = "🤹‍♀️",
    description = "woman juggling",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_juggling_dark_skin_tone",
    value = "🤹🏿‍♀️",
    description = "woman juggling: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_juggling_light_skin_tone",
    value = "🤹🏻‍♀️",
    description = "woman juggling: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_juggling_medium_dark_skin_tone",
    value = "🤹🏾‍♀️",
    description = "woman juggling: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_juggling_medium_light_skin_tone",
    value = "🤹🏼‍♀️",
    description = "woman juggling: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_juggling_medium_skin_tone",
    value = "🤹🏽‍♀️",
    description = "woman juggling: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_lifting_weights",
    value = "🏋️‍♀️",
    description = "woman lifting weights",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_lifting_weights_dark_skin_tone",
    value = "🏋🏿‍♀️",
    description = "woman lifting weights: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_lifting_weights_light_skin_tone",
    value = "🏋🏻‍♀️",
    description = "woman lifting weights: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_lifting_weights_medium_dark_skin_tone",
    value = "🏋🏾‍♀️",
    description = "woman lifting weights: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_lifting_weights_medium_light_skin_tone",
    value = "🏋🏼‍♀️",
    description = "woman lifting weights: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_lifting_weights_medium_skin_tone",
    value = "🏋🏽‍♀️",
    description = "woman lifting weights: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_mountain_biking",
    value = "🚵‍♀️",
    description = "woman mountain biking",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_mountain_biking_dark_skin_tone",
    value = "🚵🏿‍♀️",
    description = "woman mountain biking: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_mountain_biking_light_skin_tone",
    value = "🚵🏻‍♀️",
    description = "woman mountain biking: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_mountain_biking_medium_dark_skin_tone",
    value = "🚵🏾‍♀️",
    description = "woman mountain biking: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_mountain_biking_medium_light_skin_tone",
    value = "🚵🏼‍♀️",
    description = "woman mountain biking: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_mountain_biking_medium_skin_tone",
    value = "🚵🏽‍♀️",
    description = "woman mountain biking: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_playing_handball",
    value = "🤾‍♀️",
    description = "woman playing handball",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_playing_handball_dark_skin_tone",
    value = "🤾🏿‍♀️",
    description = "woman playing handball: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_playing_handball_light_skin_tone",
    value = "🤾🏻‍♀️",
    description = "woman playing handball: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_playing_handball_medium_dark_skin_tone",
    value = "🤾🏾‍♀️",
    description = "woman playing handball: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_playing_handball_medium_light_skin_tone",
    value = "🤾🏼‍♀️",
    description = "woman playing handball: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_playing_handball_medium_skin_tone",
    value = "🤾🏽‍♀️",
    description = "woman playing handball: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_playing_water_polo",
    value = "🤽‍♀️",
    description = "woman playing water polo",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_playing_water_polo_dark_skin_tone",
    value = "🤽🏿‍♀️",
    description = "woman playing water polo: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_playing_water_polo_light_skin_tone",
    value = "🤽🏻‍♀️",
    description = "woman playing water polo: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_playing_water_polo_medium_dark_skin_tone",
    value = "🤽🏾‍♀️",
    description = "woman playing water polo: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_playing_water_polo_medium_light_skin_tone",
    value = "🤽🏼‍♀️",
    description = "woman playing water polo: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_playing_water_polo_medium_skin_tone",
    value = "🤽🏽‍♀️",
    description = "woman playing water polo: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_rowing_boat",
    value = "🚣‍♀️",
    description = "woman rowing boat",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_rowing_boat_dark_skin_tone",
    value = "🚣🏿‍♀️",
    description = "woman rowing boat: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_rowing_boat_light_skin_tone",
    value = "🚣🏻‍♀️",
    description = "woman rowing boat: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_rowing_boat_medium_dark_skin_tone",
    value = "🚣🏾‍♀️",
    description = "woman rowing boat: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_rowing_boat_medium_light_skin_tone",
    value = "🚣🏼‍♀️",
    description = "woman rowing boat: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_rowing_boat_medium_skin_tone",
    value = "🚣🏽‍♀️",
    description = "woman rowing boat: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_surfing",
    value = "🏄‍♀️",
    description = "woman surfing",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_surfing_dark_skin_tone",
    value = "🏄🏿‍♀️",
    description = "woman surfing: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_surfing_light_skin_tone",
    value = "🏄🏻‍♀️",
    description = "woman surfing: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_surfing_medium_dark_skin_tone",
    value = "🏄🏾‍♀️",
    description = "woman surfing: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_surfing_medium_light_skin_tone",
    value = "🏄🏼‍♀️",
    description = "woman surfing: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_surfing_medium_skin_tone",
    value = "🏄🏽‍♀️",
    description = "woman surfing: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_swimming",
    value = "🏊‍♀️",
    description = "woman swimming",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_swimming_dark_skin_tone",
    value = "🏊🏿‍♀️",
    description = "woman swimming: dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_swimming_light_skin_tone",
    value = "🏊🏻‍♀️",
    description = "woman swimming: light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_swimming_medium_dark_skin_tone",
    value = "🏊🏾‍♀️",
    description = "woman swimming: medium-dark skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_swimming_medium_light_skin_tone",
    value = "🏊🏼‍♀️",
    description = "woman swimming: medium-light skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "woman_swimming_medium_skin_tone",
    value = "🏊🏽‍♀️",
    description = "woman swimming: medium skin tone",
    category = "People & Body / person-sport"
  },
  {
    name = "women_wrestling",
    value = "🤼‍♀️",
    description = "women wrestling",
    category = "People & Body / person-sport"
  },
  {
    name = "bust_in_silhouette",
    value = "👤",
    description = "bust in silhouette",
    category = "People & Body / person-symbol"
  },
  {
    name = "busts_in_silhouette",
    value = "👥",
    description = "busts in silhouette",
    category = "People & Body / person-symbol"
  },
  {
    name = "family",
    value = "👪",
    description = "family",
    category = "People & Body / person-symbol"
  },
  {
    name = "family_adult_adult_child",
    value = "🧑‍🧑‍🧒",
    description = "family: adult, adult, child",
    category = "People & Body / person-symbol"
  },
  {
    name = "family_adult_adult_child_child",
    value = "🧑‍🧑‍🧒‍🧒",
    description = "family: adult, adult, child, child",
    category = "People & Body / person-symbol"
  },
  {
    name = "family_adult_child",
    value = "🧑‍🧒",
    description = "family: adult, child",
    category = "People & Body / person-symbol"
  },
  {
    name = "family_adult_child_child",
    value = "🧑‍🧒‍🧒",
    description = "family: adult, child, child",
    category = "People & Body / person-symbol"
  },
  {
    name = "footprints",
    value = "👣",
    description = "footprints",
    category = "People & Body / person-symbol"
  },
  {
    name = "people_hugging",
    value = "🫂",
    description = "people hugging",
    category = "People & Body / person-symbol"
  },
  {
    name = "speaking_head",
    value = "🗣️",
    description = "speaking head",
    category = "People & Body / person-symbol"
  },
  {
    name = "cat_with_tears_of_joy",
    value = "😹",
    description = "cat with tears of joy",
    category = "Smileys & Emotion / cat-face"
  },
  {
    name = "cat_with_wry_smile",
    value = "😼",
    description = "cat with wry smile",
    category = "Smileys & Emotion / cat-face"
  },
  {
    name = "crying_cat",
    value = "😿",
    description = "crying cat",
    category = "Smileys & Emotion / cat-face"
  },
  {
    name = "grinning_cat",
    value = "😺",
    description = "grinning cat",
    category = "Smileys & Emotion / cat-face"
  },
  {
    name = "grinning_cat_with_smiling_eyes",
    value = "😸",
    description = "grinning cat with smiling eyes",
    category = "Smileys & Emotion / cat-face"
  },
  {
    name = "kissing_cat",
    value = "😽",
    description = "kissing cat",
    category = "Smileys & Emotion / cat-face"
  },
  {
    name = "pouting_cat",
    value = "😾",
    description = "pouting cat",
    category = "Smileys & Emotion / cat-face"
  },
  {
    name = "smiling_cat_with_heart_eyes",
    value = "😻",
    description = "smiling cat with heart-eyes",
    category = "Smileys & Emotion / cat-face"
  },
  {
    name = "weary_cat",
    value = "🙀",
    description = "weary cat",
    category = "Smileys & Emotion / cat-face"
  },
  {
    name = "anger_symbol",
    value = "💢",
    description = "anger symbol",
    category = "Smileys & Emotion / emotion"
  },
  {
    name = "collision",
    value = "💥",
    description = "collision",
    category = "Smileys & Emotion / emotion"
  },
  {
    name = "dashing_away",
    value = "💨",
    description = "dashing away",
    category = "Smileys & Emotion / emotion"
  },
  {
    name = "dizzy",
    value = "💫",
    description = "dizzy",
    category = "Smileys & Emotion / emotion"
  },
  {
    name = "eye_in_speech_bubble",
    value = "👁️‍🗨️",
    description = "eye in speech bubble",
    category = "Smileys & Emotion / emotion"
  },
  {
    name = "hole",
    value = "🕳️",
    description = "hole",
    category = "Smileys & Emotion / emotion"
  },
  {
    name = "hundred_points",
    value = "💯",
    description = "hundred points",
    category = "Smileys & Emotion / emotion"
  },
  {
    name = "kiss_mark",
    value = "💋",
    description = "kiss mark",
    category = "Smileys & Emotion / emotion"
  },
  {
    name = "left_speech_bubble",
    value = "🗨️",
    description = "left speech bubble",
    category = "Smileys & Emotion / emotion"
  },
  {
    name = "right_anger_bubble",
    value = "🗯️",
    description = "right anger bubble",
    category = "Smileys & Emotion / emotion"
  },
  {
    name = "speech_balloon",
    value = "💬",
    description = "speech balloon",
    category = "Smileys & Emotion / emotion"
  },
  {
    name = "sweat_droplets",
    value = "💦",
    description = "sweat droplets",
    category = "Smileys & Emotion / emotion"
  },
  {
    name = "thought_balloon",
    value = "💭",
    description = "thought balloon",
    category = "Smileys & Emotion / emotion"
  },
  {
    name = "zzz",
    value = "💤",
    description = "ZZZ",
    category = "Smileys & Emotion / emotion"
  },
  {
    name = "face_blowing_a_kiss",
    value = "😘",
    description = "face blowing a kiss",
    category = "Smileys & Emotion / face-affection"
  },
  {
    name = "kissing_face",
    value = "😗",
    description = "kissing face",
    category = "Smileys & Emotion / face-affection"
  },
  {
    name = "kissing_face_with_closed_eyes",
    value = "😚",
    description = "kissing face with closed eyes",
    category = "Smileys & Emotion / face-affection"
  },
  {
    name = "kissing_face_with_smiling_eyes",
    value = "😙",
    description = "kissing face with smiling eyes",
    category = "Smileys & Emotion / face-affection"
  },
  {
    name = "smiling_face",
    value = "☺️",
    description = "smiling face",
    category = "Smileys & Emotion / face-affection"
  },
  {
    name = "smiling_face_with_heart_eyes",
    value = "😍",
    description = "smiling face with heart-eyes",
    category = "Smileys & Emotion / face-affection"
  },
  {
    name = "smiling_face_with_hearts",
    value = "🥰",
    description = "smiling face with hearts",
    category = "Smileys & Emotion / face-affection"
  },
  {
    name = "smiling_face_with_tear",
    value = "🥲",
    description = "smiling face with tear",
    category = "Smileys & Emotion / face-affection"
  },
  {
    name = "star_struck",
    value = "🤩",
    description = "star-struck",
    category = "Smileys & Emotion / face-affection"
  },
  {
    name = "anguished_face",
    value = "😧",
    description = "anguished face",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "anxious_face_with_sweat",
    value = "😰",
    description = "anxious face with sweat",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "astonished_face",
    value = "😲",
    description = "astonished face",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "confounded_face",
    value = "😖",
    description = "confounded face",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "confused_face",
    value = "😕",
    description = "confused face",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "crying_face",
    value = "😢",
    description = "crying face",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "disappointed_face",
    value = "😞",
    description = "disappointed face",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "downcast_face_with_sweat",
    value = "😓",
    description = "downcast face with sweat",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "face_holding_back_tears",
    value = "🥹",
    description = "face holding back tears",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "face_screaming_in_fear",
    value = "😱",
    description = "face screaming in fear",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "face_with_diagonal_mouth",
    value = "🫤",
    description = "face with diagonal mouth",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "face_with_open_mouth",
    value = "😮",
    description = "face with open mouth",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "fearful_face",
    value = "😨",
    description = "fearful face",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "flushed_face",
    value = "😳",
    description = "flushed face",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "frowning_face",
    value = "☹️",
    description = "frowning face",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "frowning_face_with_open_mouth",
    value = "😦",
    description = "frowning face with open mouth",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "hushed_face",
    value = "😯",
    description = "hushed face",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "loudly_crying_face",
    value = "😭",
    description = "loudly crying face",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "persevering_face",
    value = "😣",
    description = "persevering face",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "pleading_face",
    value = "🥺",
    description = "pleading face",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "sad_but_relieved_face",
    value = "😥",
    description = "sad but relieved face",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "slightly_frowning_face",
    value = "🙁",
    description = "slightly frowning face",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "tired_face",
    value = "😫",
    description = "tired face",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "weary_face",
    value = "😩",
    description = "weary face",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "worried_face",
    value = "😟",
    description = "worried face",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "yawning_face",
    value = "🥱",
    description = "yawning face",
    category = "Smileys & Emotion / face-concerned"
  },
  {
    name = "alien",
    value = "👽",
    description = "alien",
    category = "Smileys & Emotion / face-costume"
  },
  {
    name = "alien_monster",
    value = "👾",
    description = "alien monster",
    category = "Smileys & Emotion / face-costume"
  },
  {
    name = "clown_face",
    value = "🤡",
    description = "clown face",
    category = "Smileys & Emotion / face-costume"
  },
  {
    name = "ghost",
    value = "👻",
    description = "ghost",
    category = "Smileys & Emotion / face-costume"
  },
  {
    name = "goblin",
    value = "👺",
    description = "goblin",
    category = "Smileys & Emotion / face-costume"
  },
  {
    name = "ogre",
    value = "👹",
    description = "ogre",
    category = "Smileys & Emotion / face-costume"
  },
  {
    name = "pile_of_poo",
    value = "💩",
    description = "pile of poo",
    category = "Smileys & Emotion / face-costume"
  },
  {
    name = "robot",
    value = "🤖",
    description = "robot",
    category = "Smileys & Emotion / face-costume"
  },
  {
    name = "face_with_monocle",
    value = "🧐",
    description = "face with monocle",
    category = "Smileys & Emotion / face-glasses"
  },
  {
    name = "nerd_face",
    value = "🤓",
    description = "nerd face",
    category = "Smileys & Emotion / face-glasses"
  },
  {
    name = "smiling_face_with_sunglasses",
    value = "😎",
    description = "smiling face with sunglasses",
    category = "Smileys & Emotion / face-glasses"
  },
  {
    name = "face_with_hand_over_mouth",
    value = "🤭",
    description = "face with hand over mouth",
    category = "Smileys & Emotion / face-hand"
  },
  {
    name = "face_with_open_eyes_and_hand_over_mouth",
    value = "🫢",
    description = "face with open eyes and hand over mouth",
    category = "Smileys & Emotion / face-hand"
  },
  {
    name = "face_with_peeking_eye",
    value = "🫣",
    description = "face with peeking eye",
    category = "Smileys & Emotion / face-hand"
  },
  {
    name = "saluting_face",
    value = "🫡",
    description = "saluting face",
    category = "Smileys & Emotion / face-hand"
  },
  {
    name = "shushing_face",
    value = "🤫",
    description = "shushing face",
    category = "Smileys & Emotion / face-hand"
  },
  {
    name = "smiling_face_with_open_hands",
    value = "🤗",
    description = "smiling face with open hands",
    category = "Smileys & Emotion / face-hand"
  },
  {
    name = "thinking_face",
    value = "🤔",
    description = "thinking face",
    category = "Smileys & Emotion / face-hand"
  },
  {
    name = "cowboy_hat_face",
    value = "🤠",
    description = "cowboy hat face",
    category = "Smileys & Emotion / face-hat"
  },
  {
    name = "disguised_face",
    value = "🥸",
    description = "disguised face",
    category = "Smileys & Emotion / face-hat"
  },
  {
    name = "partying_face",
    value = "🥳",
    description = "partying face",
    category = "Smileys & Emotion / face-hat"
  },
  {
    name = "angry_face",
    value = "😠",
    description = "angry face",
    category = "Smileys & Emotion / face-negative"
  },
  {
    name = "angry_face_with_horns",
    value = "👿",
    description = "angry face with horns",
    category = "Smileys & Emotion / face-negative"
  },
  {
    name = "enraged_face",
    value = "😡",
    description = "enraged face",
    category = "Smileys & Emotion / face-negative"
  },
  {
    name = "face_with_steam_from_nose",
    value = "😤",
    description = "face with steam from nose",
    category = "Smileys & Emotion / face-negative"
  },
  {
    name = "face_with_symbols_on_mouth",
    value = "🤬",
    description = "face with symbols on mouth",
    category = "Smileys & Emotion / face-negative"
  },
  {
    name = "skull",
    value = "💀",
    description = "skull",
    category = "Smileys & Emotion / face-negative"
  },
  {
    name = "skull_and_crossbones",
    value = "☠️",
    description = "skull and crossbones",
    category = "Smileys & Emotion / face-negative"
  },
  {
    name = "smiling_face_with_horns",
    value = "😈",
    description = "smiling face with horns",
    category = "Smileys & Emotion / face-negative"
  },
  {
    name = "dotted_line_face",
    value = "🫥",
    description = "dotted line face",
    category = "Smileys & Emotion / face-neutral-skeptical"
  },
  {
    name = "expressionless_face",
    value = "😑",
    description = "expressionless face",
    category = "Smileys & Emotion / face-neutral-skeptical"
  },
  {
    name = "face_exhaling",
    value = "😮‍💨",
    description = "face exhaling",
    category = "Smileys & Emotion / face-neutral-skeptical"
  },
  {
    name = "face_in_clouds",
    value = "😶‍🌫️",
    description = "face in clouds",
    category = "Smileys & Emotion / face-neutral-skeptical"
  },
  {
    name = "face_with_raised_eyebrow",
    value = "🤨",
    description = "face with raised eyebrow",
    category = "Smileys & Emotion / face-neutral-skeptical"
  },
  {
    name = "face_with_rolling_eyes",
    value = "🙄",
    description = "face with rolling eyes",
    category = "Smileys & Emotion / face-neutral-skeptical"
  },
  {
    name = "face_without_mouth",
    value = "😶",
    description = "face without mouth",
    category = "Smileys & Emotion / face-neutral-skeptical"
  },
  {
    name = "grimacing_face",
    value = "😬",
    description = "grimacing face",
    category = "Smileys & Emotion / face-neutral-skeptical"
  },
  {
    name = "head_shaking_horizontally",
    value = "🙂‍↔️",
    description = "head shaking horizontally",
    category = "Smileys & Emotion / face-neutral-skeptical"
  },
  {
    name = "head_shaking_vertically",
    value = "🙂‍↕️",
    description = "head shaking vertically",
    category = "Smileys & Emotion / face-neutral-skeptical"
  },
  {
    name = "lying_face",
    value = "🤥",
    description = "lying face",
    category = "Smileys & Emotion / face-neutral-skeptical"
  },
  {
    name = "neutral_face",
    value = "😐",
    description = "neutral face",
    category = "Smileys & Emotion / face-neutral-skeptical"
  },
  {
    name = "shaking_face",
    value = "🫨",
    description = "shaking face",
    category = "Smileys & Emotion / face-neutral-skeptical"
  },
  {
    name = "smirking_face",
    value = "😏",
    description = "smirking face",
    category = "Smileys & Emotion / face-neutral-skeptical"
  },
  {
    name = "unamused_face",
    value = "😒",
    description = "unamused face",
    category = "Smileys & Emotion / face-neutral-skeptical"
  },
  {
    name = "zipper_mouth_face",
    value = "🤐",
    description = "zipper-mouth face",
    category = "Smileys & Emotion / face-neutral-skeptical"
  },
  {
    name = "drooling_face",
    value = "🤤",
    description = "drooling face",
    category = "Smileys & Emotion / face-sleepy"
  },
  {
    name = "pensive_face",
    value = "😔",
    description = "pensive face",
    category = "Smileys & Emotion / face-sleepy"
  },
  {
    name = "relieved_face",
    value = "😌",
    description = "relieved face",
    category = "Smileys & Emotion / face-sleepy"
  },
  {
    name = "sleeping_face",
    value = "😴",
    description = "sleeping face",
    category = "Smileys & Emotion / face-sleepy"
  },
  {
    name = "sleepy_face",
    value = "😪",
    description = "sleepy face",
    category = "Smileys & Emotion / face-sleepy"
  },
  {
    name = "beaming_face_with_smiling_eyes",
    value = "😁",
    description = "beaming face with smiling eyes",
    category = "Smileys & Emotion / face-smiling"
  },
  {
    name = "face_with_tears_of_joy",
    value = "😂",
    description = "face with tears of joy",
    category = "Smileys & Emotion / face-smiling"
  },
  {
    name = "grinning_face",
    value = "😀",
    description = "grinning face",
    category = "Smileys & Emotion / face-smiling"
  },
  {
    name = "grinning_face_with_big_eyes",
    value = "😃",
    description = "grinning face with big eyes",
    category = "Smileys & Emotion / face-smiling"
  },
  {
    name = "grinning_face_with_smiling_eyes",
    value = "😄",
    description = "grinning face with smiling eyes",
    category = "Smileys & Emotion / face-smiling"
  },
  {
    name = "grinning_face_with_sweat",
    value = "😅",
    description = "grinning face with sweat",
    category = "Smileys & Emotion / face-smiling"
  },
  {
    name = "grinning_squinting_face",
    value = "😆",
    description = "grinning squinting face",
    category = "Smileys & Emotion / face-smiling"
  },
  {
    name = "melting_face",
    value = "🫠",
    description = "melting face",
    category = "Smileys & Emotion / face-smiling"
  },
  {
    name = "rolling_on_the_floor_laughing",
    value = "🤣",
    description = "rolling on the floor laughing",
    category = "Smileys & Emotion / face-smiling"
  },
  {
    name = "slightly_smiling_face",
    value = "🙂",
    description = "slightly smiling face",
    category = "Smileys & Emotion / face-smiling"
  },
  {
    name = "smiling_face_with_halo",
    value = "😇",
    description = "smiling face with halo",
    category = "Smileys & Emotion / face-smiling"
  },
  {
    name = "smiling_face_with_smiling_eyes",
    value = "😊",
    description = "smiling face with smiling eyes",
    category = "Smileys & Emotion / face-smiling"
  },
  {
    name = "upside_down_face",
    value = "🙃",
    description = "upside-down face",
    category = "Smileys & Emotion / face-smiling"
  },
  {
    name = "winking_face",
    value = "😉",
    description = "winking face",
    category = "Smileys & Emotion / face-smiling"
  },
  {
    name = "face_savoring_food",
    value = "😋",
    description = "face savoring food",
    category = "Smileys & Emotion / face-tongue"
  },
  {
    name = "face_with_tongue",
    value = "😛",
    description = "face with tongue",
    category = "Smileys & Emotion / face-tongue"
  },
  {
    name = "money_mouth_face",
    value = "🤑",
    description = "money-mouth face",
    category = "Smileys & Emotion / face-tongue"
  },
  {
    name = "squinting_face_with_tongue",
    value = "😝",
    description = "squinting face with tongue",
    category = "Smileys & Emotion / face-tongue"
  },
  {
    name = "winking_face_with_tongue",
    value = "😜",
    description = "winking face with tongue",
    category = "Smileys & Emotion / face-tongue"
  },
  {
    name = "zany_face",
    value = "🤪",
    description = "zany face",
    category = "Smileys & Emotion / face-tongue"
  },
  {
    name = "cold_face",
    value = "🥶",
    description = "cold face",
    category = "Smileys & Emotion / face-unwell"
  },
  {
    name = "exploding_head",
    value = "🤯",
    description = "exploding head",
    category = "Smileys & Emotion / face-unwell"
  },
  {
    name = "face_vomiting",
    value = "🤮",
    description = "face vomiting",
    category = "Smileys & Emotion / face-unwell"
  },
  {
    name = "face_with_crossed_out_eyes",
    value = "😵",
    description = "face with crossed-out eyes",
    category = "Smileys & Emotion / face-unwell"
  },
  {
    name = "face_with_head_bandage",
    value = "🤕",
    description = "face with head-bandage",
    category = "Smileys & Emotion / face-unwell"
  },
  {
    name = "face_with_medical_mask",
    value = "😷",
    description = "face with medical mask",
    category = "Smileys & Emotion / face-unwell"
  },
  {
    name = "face_with_spiral_eyes",
    value = "😵‍💫",
    description = "face with spiral eyes",
    category = "Smileys & Emotion / face-unwell"
  },
  {
    name = "face_with_thermometer",
    value = "🤒",
    description = "face with thermometer",
    category = "Smileys & Emotion / face-unwell"
  },
  {
    name = "hot_face",
    value = "🥵",
    description = "hot face",
    category = "Smileys & Emotion / face-unwell"
  },
  {
    name = "nauseated_face",
    value = "🤢",
    description = "nauseated face",
    category = "Smileys & Emotion / face-unwell"
  },
  {
    name = "sneezing_face",
    value = "🤧",
    description = "sneezing face",
    category = "Smileys & Emotion / face-unwell"
  },
  {
    name = "woozy_face",
    value = "🥴",
    description = "woozy face",
    category = "Smileys & Emotion / face-unwell"
  },
  {
    name = "beating_heart",
    value = "💓",
    description = "beating heart",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "black_heart",
    value = "🖤",
    description = "black heart",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "blue_heart",
    value = "💙",
    description = "blue heart",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "broken_heart",
    value = "💔",
    description = "broken heart",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "brown_heart",
    value = "🤎",
    description = "brown heart",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "green_heart",
    value = "💚",
    description = "green heart",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "grey_heart",
    value = "🩶",
    description = "grey heart",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "growing_heart",
    value = "💗",
    description = "growing heart",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "heart_decoration",
    value = "💟",
    description = "heart decoration",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "heart_exclamation",
    value = "❣️",
    description = "heart exclamation",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "heart_on_fire",
    value = "❤️‍🔥",
    description = "heart on fire",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "heart_with_arrow",
    value = "💘",
    description = "heart with arrow",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "heart_with_ribbon",
    value = "💝",
    description = "heart with ribbon",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "light_blue_heart",
    value = "🩵",
    description = "light blue heart",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "love_letter",
    value = "💌",
    description = "love letter",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "mending_heart",
    value = "❤️‍🩹",
    description = "mending heart",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "orange_heart",
    value = "🧡",
    description = "orange heart",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "pink_heart",
    value = "🩷",
    description = "pink heart",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "purple_heart",
    value = "💜",
    description = "purple heart",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "red_heart",
    value = "❤️",
    description = "red heart",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "revolving_hearts",
    value = "💞",
    description = "revolving hearts",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "sparkling_heart",
    value = "💖",
    description = "sparkling heart",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "two_hearts",
    value = "💕",
    description = "two hearts",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "white_heart",
    value = "🤍",
    description = "white heart",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "yellow_heart",
    value = "💛",
    description = "yellow heart",
    category = "Smileys & Emotion / heart"
  },
  {
    name = "hear_no_evil_monkey",
    value = "🙉",
    description = "hear-no-evil monkey",
    category = "Smileys & Emotion / monkey-face"
  },
  {
    name = "see_no_evil_monkey",
    value = "🙈",
    description = "see-no-evil monkey",
    category = "Smileys & Emotion / monkey-face"
  },
  {
    name = "speak_no_evil_monkey",
    value = "🙊",
    description = "speak-no-evil monkey",
    category = "Smileys & Emotion / monkey-face"
  },
  {
    name = "a_button_blood_type",
    value = "🅰️",
    description = "A button (blood type)",
    category = "Symbols / alphanum"
  },
  {
    name = "ab_button_blood_type",
    value = "🆎",
    description = "AB button (blood type)",
    category = "Symbols / alphanum"
  },
  {
    name = "b_button_blood_type",
    value = "🅱️",
    description = "B button (blood type)",
    category = "Symbols / alphanum"
  },
  {
    name = "circled_m",
    value = "Ⓜ️",
    description = "circled M",
    category = "Symbols / alphanum"
  },
  {
    name = "cl_button",
    value = "🆑",
    description = "CL button",
    category = "Symbols / alphanum"
  },
  {
    name = "cool_button",
    value = "🆒",
    description = "COOL button",
    category = "Symbols / alphanum"
  },
  {
    name = "free_button",
    value = "🆓",
    description = "FREE button",
    category = "Symbols / alphanum"
  },
  {
    name = "id_button",
    value = "🆔",
    description = "ID button",
    category = "Symbols / alphanum"
  },
  {
    name = "information",
    value = "ℹ️",
    description = "information",
    category = "Symbols / alphanum"
  },
  {
    name = "input_latin_letters",
    value = "🔤",
    description = "input latin letters",
    category = "Symbols / alphanum"
  },
  {
    name = "input_latin_lowercase",
    value = "🔡",
    description = "input latin lowercase",
    category = "Symbols / alphanum"
  },
  {
    name = "input_latin_uppercase",
    value = "🔠",
    description = "input latin uppercase",
    category = "Symbols / alphanum"
  },
  {
    name = "input_numbers",
    value = "🔢",
    description = "input numbers",
    category = "Symbols / alphanum"
  },
  {
    name = "input_symbols",
    value = "🔣",
    description = "input symbols",
    category = "Symbols / alphanum"
  },
  {
    name = "japanese_acceptable_button",
    value = "🉑",
    description = "Japanese “acceptable” button",
    category = "Symbols / alphanum"
  },
  {
    name = "japanese_application_button",
    value = "🈸",
    description = "Japanese “application” button",
    category = "Symbols / alphanum"
  },
  {
    name = "japanese_bargain_button",
    value = "🉐",
    description = "Japanese “bargain” button",
    category = "Symbols / alphanum"
  },
  {
    name = "japanese_congratulations_button",
    value = "㊗️",
    description = "Japanese “congratulations” button",
    category = "Symbols / alphanum"
  },
  {
    name = "japanese_discount_button",
    value = "🈹",
    description = "Japanese “discount” button",
    category = "Symbols / alphanum"
  },
  {
    name = "japanese_free_of_charge_button",
    value = "🈚",
    description = "Japanese “free of charge” button",
    category = "Symbols / alphanum"
  },
  {
    name = "japanese_here_button",
    value = "🈁",
    description = "Japanese “here” button",
    category = "Symbols / alphanum"
  },
  {
    name = "japanese_monthly_amount_button",
    value = "🈷️",
    description = "Japanese “monthly amount” button",
    category = "Symbols / alphanum"
  },
  {
    name = "japanese_no_vacancy_button",
    value = "🈵",
    description = "Japanese “no vacancy” button",
    category = "Symbols / alphanum"
  },
  {
    name = "japanese_not_free_of_charge_button",
    value = "🈶",
    description = "Japanese “not free of charge” button",
    category = "Symbols / alphanum"
  },
  {
    name = "japanese_open_for_business_button",
    value = "🈺",
    description = "Japanese “open for business” button",
    category = "Symbols / alphanum"
  },
  {
    name = "japanese_passing_grade_button",
    value = "🈴",
    description = "Japanese “passing grade” button",
    category = "Symbols / alphanum"
  },
  {
    name = "japanese_prohibited_button",
    value = "🈲",
    description = "Japanese “prohibited” button",
    category = "Symbols / alphanum"
  },
  {
    name = "japanese_reserved_button",
    value = "🈯",
    description = "Japanese “reserved” button",
    category = "Symbols / alphanum"
  },
  {
    name = "japanese_secret_button",
    value = "㊙️",
    description = "Japanese “secret” button",
    category = "Symbols / alphanum"
  },
  {
    name = "japanese_service_charge_button",
    value = "🈂️",
    description = "Japanese “service charge” button",
    category = "Symbols / alphanum"
  },
  {
    name = "japanese_vacancy_button",
    value = "🈳",
    description = "Japanese “vacancy” button",
    category = "Symbols / alphanum"
  },
  {
    name = "new_button",
    value = "🆕",
    description = "NEW button",
    category = "Symbols / alphanum"
  },
  {
    name = "ng_button",
    value = "🆖",
    description = "NG button",
    category = "Symbols / alphanum"
  },
  {
    name = "o_button_blood_type",
    value = "🅾️",
    description = "O button (blood type)",
    category = "Symbols / alphanum"
  },
  {
    name = "ok_button",
    value = "🆗",
    description = "OK button",
    category = "Symbols / alphanum"
  },
  {
    name = "p_button",
    value = "🅿️",
    description = "P button",
    category = "Symbols / alphanum"
  },
  {
    name = "sos_button",
    value = "🆘",
    description = "SOS button",
    category = "Symbols / alphanum"
  },
  {
    name = "up_button",
    value = "🆙",
    description = "UP! button",
    category = "Symbols / alphanum"
  },
  {
    name = "vs_button",
    value = "🆚",
    description = "VS button",
    category = "Symbols / alphanum"
  },
  {
    name = "back_arrow",
    value = "🔙",
    description = "BACK arrow",
    category = "Symbols / arrow"
  },
  {
    name = "clockwise_vertical_arrows",
    value = "🔃",
    description = "clockwise vertical arrows",
    category = "Symbols / arrow"
  },
  {
    name = "counterclockwise_arrows_button",
    value = "🔄",
    description = "counterclockwise arrows button",
    category = "Symbols / arrow"
  },
  {
    name = "down_arrow",
    value = "⬇️",
    description = "down arrow",
    category = "Symbols / arrow"
  },
  {
    name = "down_left_arrow",
    value = "↙️",
    description = "down-left arrow",
    category = "Symbols / arrow"
  },
  {
    name = "down_right_arrow",
    value = "↘️",
    description = "down-right arrow",
    category = "Symbols / arrow"
  },
  {
    name = "end_arrow",
    value = "🔚",
    description = "END arrow",
    category = "Symbols / arrow"
  },
  {
    name = "left_arrow",
    value = "⬅️",
    description = "left arrow",
    category = "Symbols / arrow"
  },
  {
    name = "left_arrow_curving_right",
    value = "↪️",
    description = "left arrow curving right",
    category = "Symbols / arrow"
  },
  {
    name = "left_right_arrow",
    value = "↔️",
    description = "left-right arrow",
    category = "Symbols / arrow"
  },
  {
    name = "on_arrow",
    value = "🔛",
    description = "ON! arrow",
    category = "Symbols / arrow"
  },
  {
    name = "right_arrow",
    value = "➡️",
    description = "right arrow",
    category = "Symbols / arrow"
  },
  {
    name = "right_arrow_curving_down",
    value = "⤵️",
    description = "right arrow curving down",
    category = "Symbols / arrow"
  },
  {
    name = "right_arrow_curving_left",
    value = "↩️",
    description = "right arrow curving left",
    category = "Symbols / arrow"
  },
  {
    name = "right_arrow_curving_up",
    value = "⤴️",
    description = "right arrow curving up",
    category = "Symbols / arrow"
  },
  {
    name = "soon_arrow",
    value = "🔜",
    description = "SOON arrow",
    category = "Symbols / arrow"
  },
  {
    name = "top_arrow",
    value = "🔝",
    description = "TOP arrow",
    category = "Symbols / arrow"
  },
  {
    name = "up_arrow",
    value = "⬆️",
    description = "up arrow",
    category = "Symbols / arrow"
  },
  {
    name = "up_down_arrow",
    value = "↕️",
    description = "up-down arrow",
    category = "Symbols / arrow"
  },
  {
    name = "up_left_arrow",
    value = "↖️",
    description = "up-left arrow",
    category = "Symbols / arrow"
  },
  {
    name = "up_right_arrow",
    value = "↗️",
    description = "up-right arrow",
    category = "Symbols / arrow"
  },
  {
    name = "antenna_bars",
    value = "📶",
    description = "antenna bars",
    category = "Symbols / av-symbol"
  },
  {
    name = "bright_button",
    value = "🔆",
    description = "bright button",
    category = "Symbols / av-symbol"
  },
  {
    name = "cinema",
    value = "🎦",
    description = "cinema",
    category = "Symbols / av-symbol"
  },
  {
    name = "dim_button",
    value = "🔅",
    description = "dim button",
    category = "Symbols / av-symbol"
  },
  {
    name = "downwards_button",
    value = "🔽",
    description = "downwards button",
    category = "Symbols / av-symbol"
  },
  {
    name = "eject_button",
    value = "⏏️",
    description = "eject button",
    category = "Symbols / av-symbol"
  },
  {
    name = "fast_down_button",
    value = "⏬",
    description = "fast down button",
    category = "Symbols / av-symbol"
  },
  {
    name = "fast_forward_button",
    value = "⏩",
    description = "fast-forward button",
    category = "Symbols / av-symbol"
  },
  {
    name = "fast_reverse_button",
    value = "⏪",
    description = "fast reverse button",
    category = "Symbols / av-symbol"
  },
  {
    name = "fast_up_button",
    value = "⏫",
    description = "fast up button",
    category = "Symbols / av-symbol"
  },
  {
    name = "last_track_button",
    value = "⏮️",
    description = "last track button",
    category = "Symbols / av-symbol"
  },
  {
    name = "mobile_phone_off",
    value = "📴",
    description = "mobile phone off",
    category = "Symbols / av-symbol"
  },
  {
    name = "next_track_button",
    value = "⏭️",
    description = "next track button",
    category = "Symbols / av-symbol"
  },
  {
    name = "pause_button",
    value = "⏸️",
    description = "pause button",
    category = "Symbols / av-symbol"
  },
  {
    name = "play_button",
    value = "▶️",
    description = "play button",
    category = "Symbols / av-symbol"
  },
  {
    name = "play_or_pause_button",
    value = "⏯️",
    description = "play or pause button",
    category = "Symbols / av-symbol"
  },
  {
    name = "record_button",
    value = "⏺️",
    description = "record button",
    category = "Symbols / av-symbol"
  },
  {
    name = "repeat_button",
    value = "🔁",
    description = "repeat button",
    category = "Symbols / av-symbol"
  },
  {
    name = "repeat_single_button",
    value = "🔂",
    description = "repeat single button",
    category = "Symbols / av-symbol"
  },
  {
    name = "reverse_button",
    value = "◀️",
    description = "reverse button",
    category = "Symbols / av-symbol"
  },
  {
    name = "shuffle_tracks_button",
    value = "🔀",
    description = "shuffle tracks button",
    category = "Symbols / av-symbol"
  },
  {
    name = "stop_button",
    value = "⏹️",
    description = "stop button",
    category = "Symbols / av-symbol"
  },
  {
    name = "upwards_button",
    value = "🔼",
    description = "upwards button",
    category = "Symbols / av-symbol"
  },
  {
    name = "vibration_mode",
    value = "📳",
    description = "vibration mode",
    category = "Symbols / av-symbol"
  },
  {
    name = "wireless",
    value = "🛜",
    description = "wireless",
    category = "Symbols / av-symbol"
  },
  {
    name = "currency_exchange",
    value = "💱",
    description = "currency exchange",
    category = "Symbols / currency"
  },
  {
    name = "heavy_dollar_sign",
    value = "💲",
    description = "heavy dollar sign",
    category = "Symbols / currency"
  },
  {
    name = "female_sign",
    value = "♀️",
    description = "female sign",
    category = "Symbols / gender"
  },
  {
    name = "male_sign",
    value = "♂️",
    description = "male sign",
    category = "Symbols / gender"
  },
  {
    name = "transgender_symbol",
    value = "⚧️",
    description = "transgender symbol",
    category = "Symbols / gender"
  },
  {
    name = "black_circle",
    value = "⚫",
    description = "black circle",
    category = "Symbols / geometric"
  },
  {
    name = "black_large_square",
    value = "⬛",
    description = "black large square",
    category = "Symbols / geometric"
  },
  {
    name = "black_medium_small_square",
    value = "◾",
    description = "black medium-small square",
    category = "Symbols / geometric"
  },
  {
    name = "black_medium_square",
    value = "◼️",
    description = "black medium square",
    category = "Symbols / geometric"
  },
  {
    name = "black_small_square",
    value = "▪️",
    description = "black small square",
    category = "Symbols / geometric"
  },
  {
    name = "black_square_button",
    value = "🔲",
    description = "black square button",
    category = "Symbols / geometric"
  },
  {
    name = "blue_circle",
    value = "🔵",
    description = "blue circle",
    category = "Symbols / geometric"
  },
  {
    name = "blue_square",
    value = "🟦",
    description = "blue square",
    category = "Symbols / geometric"
  },
  {
    name = "brown_circle",
    value = "🟤",
    description = "brown circle",
    category = "Symbols / geometric"
  },
  {
    name = "brown_square",
    value = "🟫",
    description = "brown square",
    category = "Symbols / geometric"
  },
  {
    name = "diamond_with_a_dot",
    value = "💠",
    description = "diamond with a dot",
    category = "Symbols / geometric"
  },
  {
    name = "green_circle",
    value = "🟢",
    description = "green circle",
    category = "Symbols / geometric"
  },
  {
    name = "green_square",
    value = "🟩",
    description = "green square",
    category = "Symbols / geometric"
  },
  {
    name = "large_blue_diamond",
    value = "🔷",
    description = "large blue diamond",
    category = "Symbols / geometric"
  },
  {
    name = "large_orange_diamond",
    value = "🔶",
    description = "large orange diamond",
    category = "Symbols / geometric"
  },
  {
    name = "orange_circle",
    value = "🟠",
    description = "orange circle",
    category = "Symbols / geometric"
  },
  {
    name = "orange_square",
    value = "🟧",
    description = "orange square",
    category = "Symbols / geometric"
  },
  {
    name = "purple_circle",
    value = "🟣",
    description = "purple circle",
    category = "Symbols / geometric"
  },
  {
    name = "purple_square",
    value = "🟪",
    description = "purple square",
    category = "Symbols / geometric"
  },
  {
    name = "radio_button",
    value = "🔘",
    description = "radio button",
    category = "Symbols / geometric"
  },
  {
    name = "red_circle",
    value = "🔴",
    description = "red circle",
    category = "Symbols / geometric"
  },
  {
    name = "red_square",
    value = "🟥",
    description = "red square",
    category = "Symbols / geometric"
  },
  {
    name = "red_triangle_pointed_down",
    value = "🔻",
    description = "red triangle pointed down",
    category = "Symbols / geometric"
  },
  {
    name = "red_triangle_pointed_up",
    value = "🔺",
    description = "red triangle pointed up",
    category = "Symbols / geometric"
  },
  {
    name = "small_blue_diamond",
    value = "🔹",
    description = "small blue diamond",
    category = "Symbols / geometric"
  },
  {
    name = "small_orange_diamond",
    value = "🔸",
    description = "small orange diamond",
    category = "Symbols / geometric"
  },
  {
    name = "white_circle",
    value = "⚪",
    description = "white circle",
    category = "Symbols / geometric"
  },
  {
    name = "white_large_square",
    value = "⬜",
    description = "white large square",
    category = "Symbols / geometric"
  },
  {
    name = "white_medium_small_square",
    value = "◽",
    description = "white medium-small square",
    category = "Symbols / geometric"
  },
  {
    name = "white_medium_square",
    value = "◻️",
    description = "white medium square",
    category = "Symbols / geometric"
  },
  {
    name = "white_small_square",
    value = "▫️",
    description = "white small square",
    category = "Symbols / geometric"
  },
  {
    name = "white_square_button",
    value = "🔳",
    description = "white square button",
    category = "Symbols / geometric"
  },
  {
    name = "yellow_circle",
    value = "🟡",
    description = "yellow circle",
    category = "Symbols / geometric"
  },
  {
    name = "yellow_square",
    value = "🟨",
    description = "yellow square",
    category = "Symbols / geometric"
  },
  {
    name = "keycap_#",
    value = "#️⃣",
    description = "keycap: #",
    category = "Symbols / keycap"
  },
  {
    name = "keycap_*",
    value = "*️⃣",
    description = "keycap: *",
    category = "Symbols / keycap"
  },
  {
    name = "keycap_0",
    value = "0️⃣",
    description = "keycap: 0",
    category = "Symbols / keycap"
  },
  {
    name = "keycap_1",
    value = "1️⃣",
    description = "keycap: 1",
    category = "Symbols / keycap"
  },
  {
    name = "keycap_10",
    value = "🔟",
    description = "keycap: 10",
    category = "Symbols / keycap"
  },
  {
    name = "keycap_2",
    value = "2️⃣",
    description = "keycap: 2",
    category = "Symbols / keycap"
  },
  {
    name = "keycap_3",
    value = "3️⃣",
    description = "keycap: 3",
    category = "Symbols / keycap"
  },
  {
    name = "keycap_4",
    value = "4️⃣",
    description = "keycap: 4",
    category = "Symbols / keycap"
  },
  {
    name = "keycap_5",
    value = "5️⃣",
    description = "keycap: 5",
    category = "Symbols / keycap"
  },
  {
    name = "keycap_6",
    value = "6️⃣",
    description = "keycap: 6",
    category = "Symbols / keycap"
  },
  {
    name = "keycap_7",
    value = "7️⃣",
    description = "keycap: 7",
    category = "Symbols / keycap"
  },
  {
    name = "keycap_8",
    value = "8️⃣",
    description = "keycap: 8",
    category = "Symbols / keycap"
  },
  {
    name = "keycap_9",
    value = "9️⃣",
    description = "keycap: 9",
    category = "Symbols / keycap"
  },
  {
    name = "divide",
    value = "➗",
    description = "divide",
    category = "Symbols / math"
  },
  {
    name = "heavy_equals_sign",
    value = "🟰",
    description = "heavy equals sign",
    category = "Symbols / math"
  },
  {
    name = "infinity",
    value = "♾️",
    description = "infinity",
    category = "Symbols / math"
  },
  {
    name = "minus",
    value = "➖",
    description = "minus",
    category = "Symbols / math"
  },
  {
    name = "multiply",
    value = "✖️",
    description = "multiply",
    category = "Symbols / math"
  },
  {
    name = "plus",
    value = "➕",
    description = "plus",
    category = "Symbols / math"
  },
  {
    name = "check_box_with_check",
    value = "☑️",
    description = "check box with check",
    category = "Symbols / other-symbol"
  },
  {
    name = "check_mark",
    value = "✔️",
    description = "check mark",
    category = "Symbols / other-symbol"
  },
  {
    name = "check_mark_button",
    value = "✅",
    description = "check mark button",
    category = "Symbols / other-symbol"
  },
  {
    name = "copyright",
    value = "©️",
    description = "copyright",
    category = "Symbols / other-symbol"
  },
  {
    name = "cross_mark",
    value = "❌",
    description = "cross mark",
    category = "Symbols / other-symbol"
  },
  {
    name = "cross_mark_button",
    value = "❎",
    description = "cross mark button",
    category = "Symbols / other-symbol"
  },
  {
    name = "curly_loop",
    value = "➰",
    description = "curly loop",
    category = "Symbols / other-symbol"
  },
  {
    name = "double_curly_loop",
    value = "➿",
    description = "double curly loop",
    category = "Symbols / other-symbol"
  },
  {
    name = "eight_pointed_star",
    value = "✴️",
    description = "eight-pointed star",
    category = "Symbols / other-symbol"
  },
  {
    name = "eight_spoked_asterisk",
    value = "✳️",
    description = "eight-spoked asterisk",
    category = "Symbols / other-symbol"
  },
  {
    name = "fleur_de_lis",
    value = "⚜️",
    description = "fleur-de-lis",
    category = "Symbols / other-symbol"
  },
  {
    name = "hollow_red_circle",
    value = "⭕",
    description = "hollow red circle",
    category = "Symbols / other-symbol"
  },
  {
    name = "japanese_symbol_for_beginner",
    value = "🔰",
    description = "Japanese symbol for beginner",
    category = "Symbols / other-symbol"
  },
  {
    name = "medical_symbol",
    value = "⚕️",
    description = "medical symbol",
    category = "Symbols / other-symbol"
  },
  {
    name = "name_badge",
    value = "📛",
    description = "name badge",
    category = "Symbols / other-symbol"
  },
  {
    name = "part_alternation_mark",
    value = "〽️",
    description = "part alternation mark",
    category = "Symbols / other-symbol"
  },
  {
    name = "recycling_symbol",
    value = "♻️",
    description = "recycling symbol",
    category = "Symbols / other-symbol"
  },
  {
    name = "registered",
    value = "®️",
    description = "registered",
    category = "Symbols / other-symbol"
  },
  {
    name = "sparkle",
    value = "❇️",
    description = "sparkle",
    category = "Symbols / other-symbol"
  },
  {
    name = "trade_mark",
    value = "™️",
    description = "trade mark",
    category = "Symbols / other-symbol"
  },
  {
    name = "trident_emblem",
    value = "🔱",
    description = "trident emblem",
    category = "Symbols / other-symbol"
  },
  {
    name = "double_exclamation_mark",
    value = "‼️",
    description = "double exclamation mark",
    category = "Symbols / punctuation"
  },
  {
    name = "exclamation_question_mark",
    value = "⁉️",
    description = "exclamation question mark",
    category = "Symbols / punctuation"
  },
  {
    name = "red_exclamation_mark",
    value = "❗",
    description = "red exclamation mark",
    category = "Symbols / punctuation"
  },
  {
    name = "red_question_mark",
    value = "❓",
    description = "red question mark",
    category = "Symbols / punctuation"
  },
  {
    name = "wavy_dash",
    value = "〰️",
    description = "wavy dash",
    category = "Symbols / punctuation"
  },
  {
    name = "white_exclamation_mark",
    value = "❕",
    description = "white exclamation mark",
    category = "Symbols / punctuation"
  },
  {
    name = "white_question_mark",
    value = "❔",
    description = "white question mark",
    category = "Symbols / punctuation"
  },
  {
    name = "atom_symbol",
    value = "⚛️",
    description = "atom symbol",
    category = "Symbols / religion"
  },
  {
    name = "dotted_six_pointed_star",
    value = "🔯",
    description = "dotted six-pointed star",
    category = "Symbols / religion"
  },
  {
    name = "khanda",
    value = "🪯",
    description = "khanda",
    category = "Symbols / religion"
  },
  {
    name = "latin_cross",
    value = "✝️",
    description = "latin cross",
    category = "Symbols / religion"
  },
  {
    name = "menorah",
    value = "🕎",
    description = "menorah",
    category = "Symbols / religion"
  },
  {
    name = "om",
    value = "🕉️",
    description = "om",
    category = "Symbols / religion"
  },
  {
    name = "orthodox_cross",
    value = "☦️",
    description = "orthodox cross",
    category = "Symbols / religion"
  },
  {
    name = "peace_symbol",
    value = "☮️",
    description = "peace symbol",
    category = "Symbols / religion"
  },
  {
    name = "place_of_worship",
    value = "🛐",
    description = "place of worship",
    category = "Symbols / religion"
  },
  {
    name = "star_and_crescent",
    value = "☪️",
    description = "star and crescent",
    category = "Symbols / religion"
  },
  {
    name = "star_of_david",
    value = "✡️",
    description = "star of David",
    category = "Symbols / religion"
  },
  {
    name = "wheel_of_dharma",
    value = "☸️",
    description = "wheel of dharma",
    category = "Symbols / religion"
  },
  {
    name = "yin_yang",
    value = "☯️",
    description = "yin yang",
    category = "Symbols / religion"
  },
  {
    name = "atm_sign",
    value = "🏧",
    description = "ATM sign",
    category = "Symbols / transport-sign"
  },
  {
    name = "baby_symbol",
    value = "🚼",
    description = "baby symbol",
    category = "Symbols / transport-sign"
  },
  {
    name = "baggage_claim",
    value = "🛄",
    description = "baggage claim",
    category = "Symbols / transport-sign"
  },
  {
    name = "customs",
    value = "🛃",
    description = "customs",
    category = "Symbols / transport-sign"
  },
  {
    name = "left_luggage",
    value = "🛅",
    description = "left luggage",
    category = "Symbols / transport-sign"
  },
  {
    name = "litter_in_bin_sign",
    value = "🚮",
    description = "litter in bin sign",
    category = "Symbols / transport-sign"
  },
  {
    name = "men_s_room",
    value = "🚹",
    description = "men’s room",
    category = "Symbols / transport-sign"
  },
  {
    name = "passport_control",
    value = "🛂",
    description = "passport control",
    category = "Symbols / transport-sign"
  },
  {
    name = "potable_water",
    value = "🚰",
    description = "potable water",
    category = "Symbols / transport-sign"
  },
  {
    name = "restroom",
    value = "🚻",
    description = "restroom",
    category = "Symbols / transport-sign"
  },
  {
    name = "water_closet",
    value = "🚾",
    description = "water closet",
    category = "Symbols / transport-sign"
  },
  {
    name = "wheelchair_symbol",
    value = "♿",
    description = "wheelchair symbol",
    category = "Symbols / transport-sign"
  },
  {
    name = "women_s_room",
    value = "🚺",
    description = "women’s room",
    category = "Symbols / transport-sign"
  },
  {
    name = "biohazard",
    value = "☣️",
    description = "biohazard",
    category = "Symbols / warning"
  },
  {
    name = "children_crossing",
    value = "🚸",
    description = "children crossing",
    category = "Symbols / warning"
  },
  {
    name = "no_bicycles",
    value = "🚳",
    description = "no bicycles",
    category = "Symbols / warning"
  },
  {
    name = "no_entry",
    value = "⛔",
    description = "no entry",
    category = "Symbols / warning"
  },
  {
    name = "no_littering",
    value = "🚯",
    description = "no littering",
    category = "Symbols / warning"
  },
  {
    name = "no_mobile_phones",
    value = "📵",
    description = "no mobile phones",
    category = "Symbols / warning"
  },
  {
    name = "no_one_under_eighteen",
    value = "🔞",
    description = "no one under eighteen",
    category = "Symbols / warning"
  },
  {
    name = "no_pedestrians",
    value = "🚷",
    description = "no pedestrians",
    category = "Symbols / warning"
  },
  {
    name = "no_smoking",
    value = "🚭",
    description = "no smoking",
    category = "Symbols / warning"
  },
  {
    name = "non_potable_water",
    value = "🚱",
    description = "non-potable water",
    category = "Symbols / warning"
  },
  {
    name = "prohibited",
    value = "🚫",
    description = "prohibited",
    category = "Symbols / warning"
  },
  {
    name = "radioactive",
    value = "☢️",
    description = "radioactive",
    category = "Symbols / warning"
  },
  {
    name = "warning",
    value = "⚠️",
    description = "warning",
    category = "Symbols / warning"
  },
  {
    name = "aquarius",
    value = "♒",
    description = "Aquarius",
    category = "Symbols / zodiac"
  },
  {
    name = "aries",
    value = "♈",
    description = "Aries",
    category = "Symbols / zodiac"
  },
  {
    name = "cancer",
    value = "♋",
    description = "Cancer",
    category = "Symbols / zodiac"
  },
  {
    name = "capricorn",
    value = "♑",
    description = "Capricorn",
    category = "Symbols / zodiac"
  },
  {
    name = "gemini",
    value = "♊",
    description = "Gemini",
    category = "Symbols / zodiac"
  },
  {
    name = "leo",
    value = "♌",
    description = "Leo",
    category = "Symbols / zodiac"
  },
  {
    name = "libra",
    value = "♎",
    description = "Libra",
    category = "Symbols / zodiac"
  },
  {
    name = "ophiuchus",
    value = "⛎",
    description = "Ophiuchus",
    category = "Symbols / zodiac"
  },
  {
    name = "pisces",
    value = "♓",
    description = "Pisces",
    category = "Symbols / zodiac"
  },
  {
    name = "sagittarius",
    value = "♐",
    description = "Sagittarius",
    category = "Symbols / zodiac"
  },
  {
    name = "scorpio",
    value = "♏",
    description = "Scorpio",
    category = "Symbols / zodiac"
  },
  {
    name = "taurus",
    value = "♉",
    description = "Taurus",
    category = "Symbols / zodiac"
  },
  {
    name = "virgo",
    value = "♍",
    description = "Virgo",
    category = "Symbols / zodiac"
  },
  {
    name = "bellhop_bell",
    value = "🛎️",
    description = "bellhop bell",
    category = "Travel & Places / hotel"
  },
  {
    name = "luggage",
    value = "🧳",
    description = "luggage",
    category = "Travel & Places / hotel"
  },
  {
    name = "bank",
    value = "🏦",
    description = "bank",
    category = "Travel & Places / place-building"
  },
  {
    name = "brick",
    value = "🧱",
    description = "brick",
    category = "Travel & Places / place-building"
  },
  {
    name = "building_construction",
    value = "🏗️",
    description = "building construction",
    category = "Travel & Places / place-building"
  },
  {
    name = "castle",
    value = "🏰",
    description = "castle",
    category = "Travel & Places / place-building"
  },
  {
    name = "classical_building",
    value = "🏛️",
    description = "classical building",
    category = "Travel & Places / place-building"
  },
  {
    name = "convenience_store",
    value = "🏪",
    description = "convenience store",
    category = "Travel & Places / place-building"
  },
  {
    name = "department_store",
    value = "🏬",
    description = "department store",
    category = "Travel & Places / place-building"
  },
  {
    name = "derelict_house",
    value = "🏚️",
    description = "derelict house",
    category = "Travel & Places / place-building"
  },
  {
    name = "factory",
    value = "🏭",
    description = "factory",
    category = "Travel & Places / place-building"
  },
  {
    name = "hospital",
    value = "🏥",
    description = "hospital",
    category = "Travel & Places / place-building"
  },
  {
    name = "hotel",
    value = "🏨",
    description = "hotel",
    category = "Travel & Places / place-building"
  },
  {
    name = "house",
    value = "🏠",
    description = "house",
    category = "Travel & Places / place-building"
  },
  {
    name = "house_with_garden",
    value = "🏡",
    description = "house with garden",
    category = "Travel & Places / place-building"
  },
  {
    name = "houses",
    value = "🏘️",
    description = "houses",
    category = "Travel & Places / place-building"
  },
  {
    name = "hut",
    value = "🛖",
    description = "hut",
    category = "Travel & Places / place-building"
  },
  {
    name = "japanese_castle",
    value = "🏯",
    description = "Japanese castle",
    category = "Travel & Places / place-building"
  },
  {
    name = "japanese_post_office",
    value = "🏣",
    description = "Japanese post office",
    category = "Travel & Places / place-building"
  },
  {
    name = "love_hotel",
    value = "🏩",
    description = "love hotel",
    category = "Travel & Places / place-building"
  },
  {
    name = "office_building",
    value = "🏢",
    description = "office building",
    category = "Travel & Places / place-building"
  },
  {
    name = "post_office",
    value = "🏤",
    description = "post office",
    category = "Travel & Places / place-building"
  },
  {
    name = "rock",
    value = "🪨",
    description = "rock",
    category = "Travel & Places / place-building"
  },
  {
    name = "school",
    value = "🏫",
    description = "school",
    category = "Travel & Places / place-building"
  },
  {
    name = "stadium",
    value = "🏟️",
    description = "stadium",
    category = "Travel & Places / place-building"
  },
  {
    name = "statue_of_liberty",
    value = "🗽",
    description = "Statue of Liberty",
    category = "Travel & Places / place-building"
  },
  {
    name = "tokyo_tower",
    value = "🗼",
    description = "Tokyo tower",
    category = "Travel & Places / place-building"
  },
  {
    name = "wedding",
    value = "💒",
    description = "wedding",
    category = "Travel & Places / place-building"
  },
  {
    name = "wood",
    value = "🪵",
    description = "wood",
    category = "Travel & Places / place-building"
  },
  {
    name = "beach_with_umbrella",
    value = "🏖️",
    description = "beach with umbrella",
    category = "Travel & Places / place-geographic"
  },
  {
    name = "camping",
    value = "🏕️",
    description = "camping",
    category = "Travel & Places / place-geographic"
  },
  {
    name = "desert",
    value = "🏜️",
    description = "desert",
    category = "Travel & Places / place-geographic"
  },
  {
    name = "desert_island",
    value = "🏝️",
    description = "desert island",
    category = "Travel & Places / place-geographic"
  },
  {
    name = "mount_fuji",
    value = "🗻",
    description = "mount fuji",
    category = "Travel & Places / place-geographic"
  },
  {
    name = "mountain",
    value = "⛰️",
    description = "mountain",
    category = "Travel & Places / place-geographic"
  },
  {
    name = "national_park",
    value = "🏞️",
    description = "national park",
    category = "Travel & Places / place-geographic"
  },
  {
    name = "snow_capped_mountain",
    value = "🏔️",
    description = "snow-capped mountain",
    category = "Travel & Places / place-geographic"
  },
  {
    name = "volcano",
    value = "🌋",
    description = "volcano",
    category = "Travel & Places / place-geographic"
  },
  {
    name = "compass",
    value = "🧭",
    description = "compass",
    category = "Travel & Places / place-map"
  },
  {
    name = "globe_showing_americas",
    value = "🌎",
    description = "globe showing Americas",
    category = "Travel & Places / place-map"
  },
  {
    name = "globe_showing_asia_australia",
    value = "🌏",
    description = "globe showing Asia-Australia",
    category = "Travel & Places / place-map"
  },
  {
    name = "globe_showing_europe_africa",
    value = "🌍",
    description = "globe showing Europe-Africa",
    category = "Travel & Places / place-map"
  },
  {
    name = "globe_with_meridians",
    value = "🌐",
    description = "globe with meridians",
    category = "Travel & Places / place-map"
  },
  {
    name = "map_of_japan",
    value = "🗾",
    description = "map of Japan",
    category = "Travel & Places / place-map"
  },
  {
    name = "world_map",
    value = "🗺️",
    description = "world map",
    category = "Travel & Places / place-map"
  },
  {
    name = "barber_pole",
    value = "💈",
    description = "barber pole",
    category = "Travel & Places / place-other"
  },
  {
    name = "bridge_at_night",
    value = "🌉",
    description = "bridge at night",
    category = "Travel & Places / place-other"
  },
  {
    name = "carousel_horse",
    value = "🎠",
    description = "carousel horse",
    category = "Travel & Places / place-other"
  },
  {
    name = "circus_tent",
    value = "🎪",
    description = "circus tent",
    category = "Travel & Places / place-other"
  },
  {
    name = "cityscape",
    value = "🏙️",
    description = "cityscape",
    category = "Travel & Places / place-other"
  },
  {
    name = "cityscape_at_dusk",
    value = "🌆",
    description = "cityscape at dusk",
    category = "Travel & Places / place-other"
  },
  {
    name = "ferris_wheel",
    value = "🎡",
    description = "ferris wheel",
    category = "Travel & Places / place-other"
  },
  {
    name = "foggy",
    value = "🌁",
    description = "foggy",
    category = "Travel & Places / place-other"
  },
  {
    name = "fountain",
    value = "⛲",
    description = "fountain",
    category = "Travel & Places / place-other"
  },
  {
    name = "hot_springs",
    value = "♨️",
    description = "hot springs",
    category = "Travel & Places / place-other"
  },
  {
    name = "night_with_stars",
    value = "🌃",
    description = "night with stars",
    category = "Travel & Places / place-other"
  },
  {
    name = "playground_slide",
    value = "🛝",
    description = "playground slide",
    category = "Travel & Places / place-other"
  },
  {
    name = "roller_coaster",
    value = "🎢",
    description = "roller coaster",
    category = "Travel & Places / place-other"
  },
  {
    name = "sunrise",
    value = "🌅",
    description = "sunrise",
    category = "Travel & Places / place-other"
  },
  {
    name = "sunrise_over_mountains",
    value = "🌄",
    description = "sunrise over mountains",
    category = "Travel & Places / place-other"
  },
  {
    name = "sunset",
    value = "🌇",
    description = "sunset",
    category = "Travel & Places / place-other"
  },
  {
    name = "tent",
    value = "⛺",
    description = "tent",
    category = "Travel & Places / place-other"
  },
  {
    name = "church",
    value = "⛪",
    description = "church",
    category = "Travel & Places / place-religious"
  },
  {
    name = "hindu_temple",
    value = "🛕",
    description = "hindu temple",
    category = "Travel & Places / place-religious"
  },
  {
    name = "kaaba",
    value = "🕋",
    description = "kaaba",
    category = "Travel & Places / place-religious"
  },
  {
    name = "mosque",
    value = "🕌",
    description = "mosque",
    category = "Travel & Places / place-religious"
  },
  {
    name = "shinto_shrine",
    value = "⛩️",
    description = "shinto shrine",
    category = "Travel & Places / place-religious"
  },
  {
    name = "synagogue",
    value = "🕍",
    description = "synagogue",
    category = "Travel & Places / place-religious"
  },
  {
    name = "closed_umbrella",
    value = "🌂",
    description = "closed umbrella",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "cloud",
    value = "☁️",
    description = "cloud",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "cloud_with_lightning",
    value = "🌩️",
    description = "cloud with lightning",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "cloud_with_lightning_and_rain",
    value = "⛈️",
    description = "cloud with lightning and rain",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "cloud_with_rain",
    value = "🌧️",
    description = "cloud with rain",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "cloud_with_snow",
    value = "🌨️",
    description = "cloud with snow",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "comet",
    value = "☄️",
    description = "comet",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "crescent_moon",
    value = "🌙",
    description = "crescent moon",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "cyclone",
    value = "🌀",
    description = "cyclone",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "droplet",
    value = "💧",
    description = "droplet",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "fire",
    value = "🔥",
    description = "fire",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "first_quarter_moon",
    value = "🌓",
    description = "first quarter moon",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "first_quarter_moon_face",
    value = "🌛",
    description = "first quarter moon face",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "fog",
    value = "🌫️",
    description = "fog",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "full_moon",
    value = "🌕",
    description = "full moon",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "full_moon_face",
    value = "🌝",
    description = "full moon face",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "glowing_star",
    value = "🌟",
    description = "glowing star",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "high_voltage",
    value = "⚡",
    description = "high voltage",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "last_quarter_moon",
    value = "🌗",
    description = "last quarter moon",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "last_quarter_moon_face",
    value = "🌜",
    description = "last quarter moon face",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "milky_way",
    value = "🌌",
    description = "milky way",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "new_moon",
    value = "🌑",
    description = "new moon",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "new_moon_face",
    value = "🌚",
    description = "new moon face",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "rainbow",
    value = "🌈",
    description = "rainbow",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "ringed_planet",
    value = "🪐",
    description = "ringed planet",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "shooting_star",
    value = "🌠",
    description = "shooting star",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "snowflake",
    value = "❄️",
    description = "snowflake",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "snowman",
    value = "☃️",
    description = "snowman",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "snowman_without_snow",
    value = "⛄",
    description = "snowman without snow",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "star",
    value = "⭐",
    description = "star",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "sun",
    value = "☀️",
    description = "sun",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "sun_behind_cloud",
    value = "⛅",
    description = "sun behind cloud",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "sun_behind_large_cloud",
    value = "🌥️",
    description = "sun behind large cloud",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "sun_behind_rain_cloud",
    value = "🌦️",
    description = "sun behind rain cloud",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "sun_behind_small_cloud",
    value = "🌤️",
    description = "sun behind small cloud",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "sun_with_face",
    value = "🌞",
    description = "sun with face",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "thermometer",
    value = "🌡️",
    description = "thermometer",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "tornado",
    value = "🌪️",
    description = "tornado",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "umbrella",
    value = "☂️",
    description = "umbrella",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "umbrella_on_ground",
    value = "⛱️",
    description = "umbrella on ground",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "umbrella_with_rain_drops",
    value = "☔",
    description = "umbrella with rain drops",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "waning_crescent_moon",
    value = "🌘",
    description = "waning crescent moon",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "waning_gibbous_moon",
    value = "🌖",
    description = "waning gibbous moon",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "water_wave",
    value = "🌊",
    description = "water wave",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "waxing_crescent_moon",
    value = "🌒",
    description = "waxing crescent moon",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "waxing_gibbous_moon",
    value = "🌔",
    description = "waxing gibbous moon",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "wind_face",
    value = "🌬️",
    description = "wind face",
    category = "Travel & Places / sky & weather"
  },
  {
    name = "alarm_clock",
    value = "⏰",
    description = "alarm clock",
    category = "Travel & Places / time"
  },
  {
    name = "eight_o_clock",
    value = "🕗",
    description = "eight o’clock",
    category = "Travel & Places / time"
  },
  {
    name = "eight_thirty",
    value = "🕣",
    description = "eight-thirty",
    category = "Travel & Places / time"
  },
  {
    name = "eleven_o_clock",
    value = "🕚",
    description = "eleven o’clock",
    category = "Travel & Places / time"
  },
  {
    name = "eleven_thirty",
    value = "🕦",
    description = "eleven-thirty",
    category = "Travel & Places / time"
  },
  {
    name = "five_o_clock",
    value = "🕔",
    description = "five o’clock",
    category = "Travel & Places / time"
  },
  {
    name = "five_thirty",
    value = "🕠",
    description = "five-thirty",
    category = "Travel & Places / time"
  },
  {
    name = "four_o_clock",
    value = "🕓",
    description = "four o’clock",
    category = "Travel & Places / time"
  },
  {
    name = "four_thirty",
    value = "🕟",
    description = "four-thirty",
    category = "Travel & Places / time"
  },
  {
    name = "hourglass_done",
    value = "⌛",
    description = "hourglass done",
    category = "Travel & Places / time"
  },
  {
    name = "hourglass_not_done",
    value = "⏳",
    description = "hourglass not done",
    category = "Travel & Places / time"
  },
  {
    name = "mantelpiece_clock",
    value = "🕰️",
    description = "mantelpiece clock",
    category = "Travel & Places / time"
  },
  {
    name = "nine_o_clock",
    value = "🕘",
    description = "nine o’clock",
    category = "Travel & Places / time"
  },
  {
    name = "nine_thirty",
    value = "🕤",
    description = "nine-thirty",
    category = "Travel & Places / time"
  },
  {
    name = "one_o_clock",
    value = "🕐",
    description = "one o’clock",
    category = "Travel & Places / time"
  },
  {
    name = "one_thirty",
    value = "🕜",
    description = "one-thirty",
    category = "Travel & Places / time"
  },
  {
    name = "seven_o_clock",
    value = "🕖",
    description = "seven o’clock",
    category = "Travel & Places / time"
  },
  {
    name = "seven_thirty",
    value = "🕢",
    description = "seven-thirty",
    category = "Travel & Places / time"
  },
  {
    name = "six_o_clock",
    value = "🕕",
    description = "six o’clock",
    category = "Travel & Places / time"
  },
  {
    name = "six_thirty",
    value = "🕡",
    description = "six-thirty",
    category = "Travel & Places / time"
  },
  {
    name = "stopwatch",
    value = "⏱️",
    description = "stopwatch",
    category = "Travel & Places / time"
  },
  {
    name = "ten_o_clock",
    value = "🕙",
    description = "ten o’clock",
    category = "Travel & Places / time"
  },
  {
    name = "ten_thirty",
    value = "🕥",
    description = "ten-thirty",
    category = "Travel & Places / time"
  },
  {
    name = "three_o_clock",
    value = "🕒",
    description = "three o’clock",
    category = "Travel & Places / time"
  },
  {
    name = "three_thirty",
    value = "🕞",
    description = "three-thirty",
    category = "Travel & Places / time"
  },
  {
    name = "timer_clock",
    value = "⏲️",
    description = "timer clock",
    category = "Travel & Places / time"
  },
  {
    name = "twelve_o_clock",
    value = "🕛",
    description = "twelve o’clock",
    category = "Travel & Places / time"
  },
  {
    name = "twelve_thirty",
    value = "🕧",
    description = "twelve-thirty",
    category = "Travel & Places / time"
  },
  {
    name = "two_o_clock",
    value = "🕑",
    description = "two o’clock",
    category = "Travel & Places / time"
  },
  {
    name = "two_thirty",
    value = "🕝",
    description = "two-thirty",
    category = "Travel & Places / time"
  },
  {
    name = "watch",
    value = "⌚",
    description = "watch",
    category = "Travel & Places / time"
  },
  {
    name = "aerial_tramway",
    value = "🚡",
    description = "aerial tramway",
    category = "Travel & Places / transport-air"
  },
  {
    name = "airplane",
    value = "✈️",
    description = "airplane",
    category = "Travel & Places / transport-air"
  },
  {
    name = "airplane_arrival",
    value = "🛬",
    description = "airplane arrival",
    category = "Travel & Places / transport-air"
  },
  {
    name = "airplane_departure",
    value = "🛫",
    description = "airplane departure",
    category = "Travel & Places / transport-air"
  },
  {
    name = "flying_saucer",
    value = "🛸",
    description = "flying saucer",
    category = "Travel & Places / transport-air"
  },
  {
    name = "helicopter",
    value = "🚁",
    description = "helicopter",
    category = "Travel & Places / transport-air"
  },
  {
    name = "mountain_cableway",
    value = "🚠",
    description = "mountain cableway",
    category = "Travel & Places / transport-air"
  },
  {
    name = "parachute",
    value = "🪂",
    description = "parachute",
    category = "Travel & Places / transport-air"
  },
  {
    name = "rocket",
    value = "🚀",
    description = "rocket",
    category = "Travel & Places / transport-air"
  },
  {
    name = "satellite",
    value = "🛰️",
    description = "satellite",
    category = "Travel & Places / transport-air"
  },
  {
    name = "seat",
    value = "💺",
    description = "seat",
    category = "Travel & Places / transport-air"
  },
  {
    name = "small_airplane",
    value = "🛩️",
    description = "small airplane",
    category = "Travel & Places / transport-air"
  },
  {
    name = "suspension_railway",
    value = "🚟",
    description = "suspension railway",
    category = "Travel & Places / transport-air"
  },
  {
    name = "ambulance",
    value = "🚑",
    description = "ambulance",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "articulated_lorry",
    value = "🚛",
    description = "articulated lorry",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "auto_rickshaw",
    value = "🛺",
    description = "auto rickshaw",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "automobile",
    value = "🚗",
    description = "automobile",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "bicycle",
    value = "🚲",
    description = "bicycle",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "bullet_train",
    value = "🚅",
    description = "bullet train",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "bus",
    value = "🚌",
    description = "bus",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "bus_stop",
    value = "🚏",
    description = "bus stop",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "construction",
    value = "🚧",
    description = "construction",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "delivery_truck",
    value = "🚚",
    description = "delivery truck",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "fire_engine",
    value = "🚒",
    description = "fire engine",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "fuel_pump",
    value = "⛽",
    description = "fuel pump",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "high_speed_train",
    value = "🚄",
    description = "high-speed train",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "horizontal_traffic_light",
    value = "🚥",
    description = "horizontal traffic light",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "kick_scooter",
    value = "🛴",
    description = "kick scooter",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "light_rail",
    value = "🚈",
    description = "light rail",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "locomotive",
    value = "🚂",
    description = "locomotive",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "manual_wheelchair",
    value = "🦽",
    description = "manual wheelchair",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "metro",
    value = "🚇",
    description = "metro",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "minibus",
    value = "🚐",
    description = "minibus",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "monorail",
    value = "🚝",
    description = "monorail",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "motor_scooter",
    value = "🛵",
    description = "motor scooter",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "motorcycle",
    value = "🏍️",
    description = "motorcycle",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "motorized_wheelchair",
    value = "🦼",
    description = "motorized wheelchair",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "motorway",
    value = "🛣️",
    description = "motorway",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "mountain_railway",
    value = "🚞",
    description = "mountain railway",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "oil_drum",
    value = "🛢️",
    description = "oil drum",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "oncoming_automobile",
    value = "🚘",
    description = "oncoming automobile",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "oncoming_bus",
    value = "🚍",
    description = "oncoming bus",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "oncoming_police_car",
    value = "🚔",
    description = "oncoming police car",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "oncoming_taxi",
    value = "🚖",
    description = "oncoming taxi",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "pickup_truck",
    value = "🛻",
    description = "pickup truck",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "police_car",
    value = "🚓",
    description = "police car",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "police_car_light",
    value = "🚨",
    description = "police car light",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "racing_car",
    value = "🏎️",
    description = "racing car",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "railway_car",
    value = "🚃",
    description = "railway car",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "railway_track",
    value = "🛤️",
    description = "railway track",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "roller_skate",
    value = "🛼",
    description = "roller skate",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "skateboard",
    value = "🛹",
    description = "skateboard",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "sport_utility_vehicle",
    value = "🚙",
    description = "sport utility vehicle",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "station",
    value = "🚉",
    description = "station",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "stop_sign",
    value = "🛑",
    description = "stop sign",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "taxi",
    value = "🚕",
    description = "taxi",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "tractor",
    value = "🚜",
    description = "tractor",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "train",
    value = "🚆",
    description = "train",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "tram",
    value = "🚊",
    description = "tram",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "tram_car",
    value = "🚋",
    description = "tram car",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "trolleybus",
    value = "🚎",
    description = "trolleybus",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "vertical_traffic_light",
    value = "🚦",
    description = "vertical traffic light",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "wheel",
    value = "🛞",
    description = "wheel",
    category = "Travel & Places / transport-ground"
  },
  {
    name = "anchor",
    value = "⚓",
    description = "anchor",
    category = "Travel & Places / transport-water"
  },
  {
    name = "canoe",
    value = "🛶",
    description = "canoe",
    category = "Travel & Places / transport-water"
  },
  {
    name = "ferry",
    value = "⛴️",
    description = "ferry",
    category = "Travel & Places / transport-water"
  },
  {
    name = "motor_boat",
    value = "🛥️",
    description = "motor boat",
    category = "Travel & Places / transport-water"
  },
  {
    name = "passenger_ship",
    value = "🛳️",
    description = "passenger ship",
    category = "Travel & Places / transport-water"
  },
  {
    name = "ring_buoy",
    value = "🛟",
    description = "ring buoy",
    category = "Travel & Places / transport-water"
  },
  {
    name = "sailboat",
    value = "⛵",
    description = "sailboat",
    category = "Travel & Places / transport-water"
  },
  {
    name = "ship",
    value = "🚢",
    description = "ship",
    category = "Travel & Places / transport-water"
  },
  {
    name = "speedboat",
    value = "🚤",
    description = "speedboat",
    category = "Travel & Places / transport-water"
  }
}

return { emojis = emojis }
