# 壁開放
fill -57 67 -7 -57 71 -9 minecraft:air

# 謎の本
give @a written_book{pages:["[\"\",{\"text\":\"●○○○○\\n○●○○○○○○\\n○●○\\n●○○○、○○○○○\",\"color\":\"dark_red\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"●●●●\",\"color\":\"dark_red\"},{\"text\":\"を持ってきて\",\"color\":\"reset\"}]"],title:"謎のメモ",author:""}

# ギミック発動
function game:scene03/gimmick/spider/ready
function game:scene03/gimmick/g/ready
function game:scene03/gimmick/piano/ready
function game:scene03/gimmick/cow/ready
function game:scene03/gimmick/glass/ready1
function game:scene03/gimmick/statue/ready
function game:scene03/gimmick/rocker2/ready
schedule function game:scene03/gimmick/attack/start 300s
schedule function game:scene03/gimmick/attack2/start 500s
schedule function game:scene03/gimmick/thunder/start 1200s
schedule function game:scene03/gimmick/thunder/start 1500s

# 黒霧様の声
function game:scene03/thread/sound/voice

function game:scene03/thread/kuro_check
