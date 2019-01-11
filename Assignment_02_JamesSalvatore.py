#-------------------------------------------------------------------------------
# Name:        Rowan Zombie Text Adventure
# Purpose:
#
# Author:      Owner
#
# Created:     20/02/2014
# Copyright:   (c) Owner 2014
# Licence:     <your licence>
#-------------------------------------------------------------------------------

def main():
    pass

class Stats:
    #holds the value of ower and toughness
    def __inint__(self,power=0,toughness=0):
        self._power = power
        self._toughness = toughness
    def getPower(self):
        return self._power
    def getToughness(self):
        return self._toughness

class Range:
	def __init__(self, current = 0, min = 0, max = 10):
        #Store a min, max and value
		self._min = min
		self._current = current
		self._max = max

	def setMin(self, min):
      #  '''
      # Sets the min value, checks to make sure it is less than max
      #  '''

		if min >= self._max:
			self._min = min - 1

	def getMin(self):
		return self._min

	def setMax(self, max):
		if max <= self._min:
			self._max = min + 1

	def getMax(self):
		return self._max

	def setCurrent(self, current):
		if current < self._min:
			self._current = self._min
		elif current > self._max:
			self._current = self._max
		else:
			self._current = current

	def getCurrent(self):
		return self._current

class Entity:
    #calls the "name" string
    def __init__(self, name):
        self.name = name

class Item(Entity):
    #returns item name and stats
    def __init__(self, name, description, stats):
        self.description = description
        self.stats = stats

    def getDesctiption(self):
        return self.description

    def __str__(self):
        return "%s : %s Stats: %s" % (self.name, self.description, self.stats)

class ItemGenerator(Item):
    #all items in the game
    def  __init__(self, items):
        self.items = {none, stick, dagger, backpack, axe}

        none = 'none', 'You are defenseless', Stats(0,0)
        stick = 'stick', 'A narrow piece of wood', Stats(1,1)
        dagger = 'dagger', 'A sharp, double-edged knife', Stats(3,1),
        backpack = 'backpack', 'A heavy knapsack filled with books', Stats(2,3)
        axe = 'Axe', 'A large medieval weapon', Stats(6,3)


    def getRandomItem(Item):
        rand_item = random.choice(items)
        return rand_item
    def getItem(itemName):
        return itemName

class Room(Entity):
    #stores data for various rooms
    def __init__(self, name, description, zombies, connections, isSpawnPoint):
        self.description = description
        self.zombies = zombies
        self.connections = connections
        self.isSpawnPoint = isSpawnPoint

    def __str__(self):
        return "%s : %s : %s zombies : connected to %s rooms" % str(name), str(description), str(zombies), str(connections), str(isSpawnPoint)

class Human(Entity):
    #the player
    def __init__(self, name, power, toughness, hitpoints, locationName, items):
        self.power = power
        self.toughness = toughness
        self.hitpoints = 10
        self.locationName = locationName
        self.items = items

    def getPower():
        return power

    def getToughness():
        return toughness

    def kill():
        hitpoints = 0

    def isAlive():
        return hitpoints > 0


    def __str__(self):
        return "Power: %s  Toughness: %s  Health: %s  Room: %s  Items: %s"


class Zombie(Human):
    #Zombies; no difference with "Human" code behavior
    pass

class BattleManager:
    #handles combat between the player and zombie
    def __init__(self, human, enemies):
        self.human = human
        self.enemies = enemies

    def battleLoop():
        prompt_flight = raw_input("Do you want to attack or flee?")
        if prompt_flight == "Attack":
            while (enemies.hitpoints >= human.hitpoints):
                zombie.toughness - human.power

        if prompt_flight == 'Run':
            while (human.hitpoints > 0):
                print("You escaped!")
                human.power - 1

        if prompt_flight == 'Suicide':
            print("Quitter!")
            quit()

        if prompt_flight == 'Stats':
            return human



class LayoutManager:
    #the arrangement of how rooms are connected
    def __init__(self, room):
        self.room = [Lab, Office, Hall, Atrium, Kitchen, Auditorium]

    def createLayout(room):
        #Auditorium has a (seven) in its 'connections' because the aim of the game is to reach 7, winning the game.
        Lab = 'Lab', 'a computer lab', zombies, Hall, true
        Hall = 'Hall', 'a long hallway', zombies, (Lab,Office,Kitchen,Atrium,Auditorium), true
        Office = 'Office', 'an empty office', zombies, Hall, true
        Kitchen = 'kitchen', 'a place for cookery', zombies, Hall, false
        Atrium = 'atrium', 'a large space with chairs and tables', zombies, (Hall,Auditorium), false
        Auditorium = 'Auditoriium', 'a wide stage area', zombies, seven, false

    def addOneWayConnection(roomFrom, roomTo):
        roomFrom = {Lab.connections.append(Hall),
                    Atrium.connections.append(Auditorium)}
        roomTo = {Hall.connections.append(Lab),
                Auditorium.connections.append(Atrium)}
    def addTwoWayConnection(roomFrom, roomTo):
        roomFrom = {Hall.connections.append(Office),
                    Office.connections.append(Hall),
                    Hall.connections.append(Kitchen),
                    Kitchen.connections.append(Hall),
                    Hall.connections.append(Atrium),
                    Atrium.connections.append(Hall),
                    Auditorium.connections.append(Atrium),
                    Atrium.connections.append(Auditorium),
                    Auditorium.connections.append(seven)}
        roomTo = {Hall.connections.append(Office),
                    Office.connections.append(Hall),
                    Hall.connections.append(Kitchen),
                    Kitchen.connections.append(Hall),
                    Hall.connections.append(Atrium),
                    Atrium.connections.append(Hall),
                    Auditorium.connections.append(Atrium),
                    Atrium.connections.append(Auditorium),
                    seven.connections.append(Auditorium)}

class GameManager:

    def __init__(layoutManager, player):
        self.layoutManager = layoutManager
        self.player = human

    def gameLoop():
        action = raw_input('What would you like to do: Inspect, Explore, or Quit?' )

        if action == "Explore":
            newRoom = raw_input('Do you want to go into the hall?')
            if newRoom == "yes":
                    return room.connections.append(layoutManager)

        BattleManager()



        if action == "Inspect":
            itemFind = raw_input('You found an item. Do you want it? ')
            if itemFind == "yes":
                     [stick.item.Lab,
                    dagger.item.Kitchen,
                    backpack.item.Atrium,
                    axe.item.Office]

            none.stats + item.stats

        if action == "Quit":
            quit()

#Does the player want to start the game or exit?
print "Menu\n"
print "(1)Start"
print "(2)Exit\n\n"
choice = (raw_input('>>'))
if choice=="1":
 #Asks for player's name
 person = raw_input('What is your name?: ')
 #Gives the name of the game and the goal before starting actual gameplay
 print('This is Rowan Zombie Die-pocalypse! The entire point of this is to survive the zombies and get out alive!')
gameLoop()
if choice=="2":
                     quit()

end
if __name__ == '__main__':
    main()
