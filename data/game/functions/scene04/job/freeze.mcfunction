tp @p[team=blue] -41 64 79 facing -32 64 76
tp @p[team=red] -41 64 73 facing -32 64 76

execute unless score *stop _Freeze matches 0 run schedule function game:scene04/job/freeze 1t
