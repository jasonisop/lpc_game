require('scripts/randomlua')

DiceRoller = { dice = twister(0)}

function DiceRoller:new (o)
	o = o or {}
	setmetatable(o, self)
    self.__index = self
	return o
end

function DiceRoller:setSeed()
	self.dice:randomseed()
end

function DiceRoller:Roll(DieType,NumberDie)
	local dieCount = 0
	for k = 1, NumberDie do
		dieCount = dieCount + self.dice:random(1,DieType)
	end
	return dieCount
end

function DiceRoller:RollStat(DieType,NumberDie,NumberDrop,NumberStats)
	local FinalDiceCount = {}
	local WorkingDieCount = {}
	
	for i = 1 ,NumberStats do
		WorkingDieCount = {}
		for j = 1 , NumberDie do
			table.insert(WorkingDieCount,self:Roll(6,1)) 
		end
		table.sort(WorkingDieCount)  
		local tempCount = 0
		local LoopCount = NumberDie - NumberDrop
		
		for k = 1 ,LoopCount do
			tempCount = tempCount + WorkingDieCount[k]
		end
		table.insert(FinalDiceCount,tempCount) 
	end
	return 	FinalDiceCount
end