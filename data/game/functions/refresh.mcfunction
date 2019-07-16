# 環境
time set 6000
weather clear
clear @a
effect clear @a
team empty red
team empty blue
bossbar remove light

# ログイン時の壁復活
fill -4 63 -48 -12 66 -48 minecraft:glowstone

# 人影復活
data modify entity @e[limit=1,type=minecraft:item_frame,x=48.5,y=63,z=-82,distance=..1] Item set value {id:"minecraft:bow",Count:1b,tag:{CustomModelData:7}}
data modify entity @e[limit=1,type=minecraft:item_frame,x=74.5,y=63,z=32.5,distance=..1] Item set value {id:"minecraft:bow",Count:1b,tag:{CustomModelData:7}}
setblock 74 66 32 minecraft:sea_lantern
data modify entity @e[limit=1,type=minecraft:item_frame,x=101.5,y=63,z=98.5,distance=..1] Item set value {id:"minecraft:bow",Count:1b,tag:{CustomModelData:7}}
setblock 101 66 98 minecraft:sea_lantern
data modify entity @e[limit=1,type=minecraft:item_frame,x=-34,y=64,z=76,distance=..2] Item set value {id:"minecraft:bow",Count:1b,tag:{CustomModelData:7}}

# 猫削除
execute as @e[type=minecraft:cat] at @s run tp @s ~ ~-200 ~

# 最初の部屋のバリアブロック復活
fill -52 67 -2 -52 69 -5 minecraft:barrier

# 廊下の壁復活
fill -57 67 -7 -57 71 -9 minecraft:cobblestone

# 魔法陣老朽化
data modify entity @e[limit=1,type=minecraft:item_frame,x=-95,y=67,z=-14,distance=..3] Item set value {id:"minecraft:bow",Count:1b,tag:{CustomModelData:17}}
data modify entity @e[limit=1,type=minecraft:item_frame,x=-57,y=67,z=-22,distance=..3] Item set value {id:"minecraft:bow",Count:1b,tag:{CustomModelData:17}}
setblock -95 73 -14 minecraft:black_concrete
setblock -57 73 -22 minecraft:black_concrete

# ダンボールアイテム
execute positioned -49 67 -48 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.1 minecraft:pink_dye
execute positioned -57 67 -13 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.3 minecraft:pink_dye
execute positioned -60 67 -16 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.20 minecraft:written_book{pages:["{\"text\":\"この世界は真っ暗だ、本当に何も見えない\\n\\nでもXXXは見える、私の姿も見える、不思議だ\\n\\n今はXXXにまた会えただけで嬉しい\"}","{\"text\":\"黒霧様がずっとこちらを見ている\\n\\n気持ち悪い\\nあの姿だけは生理的に受け付けない\"}","{\"text\":\"黒霧様は願いを叶えてくれるとXXXが教えてくれた\\n\\nこの世界を私達が出会った場所に変えてくれるのか試してみることにした\\n\\nでも、何を差し出せば良いのだろう\"}","{\"text\":\"この世界は私達が出会った場所、学校になった\\n\\n代わりに私達の名前を失ってしまった\\n\\n思い出そうとしても、全然思い出せない\"}","{\"text\":\"あの子が寂しそうな顔をしている\\n\\nあの時もそうだった\\nだから先にこっちの世界に行ってしまった\\n\\nもう二度と同じことをさせないために、黒霧様に友達を増やすことを願えば、叶えてくれるのだろうか\"}","{\"text\":\"もっともっと友達を増やしたい\\n\\n・・・でも、誰のためだったっけな\\n\\nメモを見返しても名前が書いてない、性別も年齢も書いてない\\n\\nメモを残しても無駄なのかもしれない\"}"],title:"メモ",author:""}
execute positioned -65 67 10 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.5 minecraft:green_dye
execute positioned -97 67 0 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.7 minecraft:gray_dye
execute positioned -76 67 -8 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.9 minecraft:black_dye
execute positioned -72 67 5 if block ~ ~ ~ minecraft:barrel run replaceitem block ~ ~ ~ container.8 minecraft:air

# 蝋燭初期配置
execute positioned -78 67 -13 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.10 minecraft:blue_dye
execute positioned -93 67 -35 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.11 minecraft:blue_dye
execute positioned -97 67 -48 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.12 minecraft:blue_dye
execute positioned -43 67 -4 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.13 minecraft:blue_dye
execute positioned -43 67 -4 if block ~ ~ ~ minecraft:barrel run replaceitem block ~ ~ ~ container.20 minecraft:blue_dye
execute positioned -55 67 -13 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.14 minecraft:blue_dye
execute positioned -61 67 -40 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.15 minecraft:blue_dye
execute positioned -87 80 -9 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.15 minecraft:blue_dye

# マッチ初期配置
execute positioned -64 67 -29 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.16 minecraft:yellow_dye
execute positioned -43 67 -1 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.17 minecraft:yellow_dye
execute positioned -99 67 -6 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.18 minecraft:yellow_dye
execute positioned -93 67 -34 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.19 minecraft:yellow_dye
execute positioned -87 80 -9 if block ~ ~ ~ minecraft:barrel run replaceitem block ~ ~ ~ container.18 minecraft:yellow_dye

# 燭台初期配置
execute positioned -43 67 -3 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.20 minecraft:red_dye

# 開かずの間の封印
setblock -57 68 -28 minecraft:barrier

# クリア時のバリア削除
fill 84 66 61 78 64 61 air

# 村人削除
kill @e[type=minecraft:villager,tag=teacher]
