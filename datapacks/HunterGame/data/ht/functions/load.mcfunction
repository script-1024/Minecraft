scoreboard objectives add const dummy

scoreboard objectives add ht.tag dummy

scoreboard objectives add self.x dummy
scoreboard objectives add self.y dummy
scoreboard objectives add self.z dummy

scoreboard objectives add delta.x dummy
scoreboard objectives add delta.y dummy
scoreboard objectives add delta.z dummy

scoreboard objectives add target.x dummy
scoreboard objectives add target.y dummy
scoreboard objectives add target.z dummy
scoreboard objectives add target.distance dummy

scoreboard objectives add runner.p dummy

scoreboard objectives add player.uid dummy
scoreboard objectives add player.votes dummy

scoreboard objectives add showTargetDistance trigger
scoreboard objectives add runner trigger
scoreboard objectives add vote trigger
scoreboard objectives add time trigger

function ht:define/team
function ht:define/number
function ht:define/storage
function ht:define/bossbar

function ht:timer