gamemode adventure @a
tp @p[team=red] 56 63 -121 0 0
tp @p[team=blue] 55 63 -121 0 0
summon minecraft:cat 50 63 -114 {Tags:["cat"],CatType:10,PersistenceRequired:1,Invulnerable:1,Sitting:1}
effect clear @a

scoreboard players set *scene Grobal 2
function game:scene02/job/cat
function game:scene02/job/defect
function game:scene02/job/ev01
function game:scene02/job/ev02
function game:scene02/job/ev03
