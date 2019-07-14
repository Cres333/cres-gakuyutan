scoreboard players set *scene Grobal 2
tp @p[team=red] 56 63 -121 0 0
tp @p[team=blue] 55 63 -121 0 0
summon minecraft:cat 50 63 -114 {Tags:["cat"],CatType:10,PersistenceRequired:1,Invulnerable:1,Sitting:1}
function game:scene02/job/cat
