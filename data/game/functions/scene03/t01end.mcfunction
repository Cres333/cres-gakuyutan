# 壁開放
fill -57 67 -7 -57 71 -9 minecraft:air

# 謎の本
give @a written_book{pages:["[\"\",{\"text\":\"●○○○○\\n○●○○○○○○\\n○●○\\n●○○○、○○○○○\",\"color\":\"dark_red\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"●●●●\",\"color\":\"dark_red\"},{\"text\":\"を持ってきて\",\"color\":\"reset\"}]"],title:"謎のメモ",author:""}

# ギミック発動
function game:scene03/gimmick/g/ready
