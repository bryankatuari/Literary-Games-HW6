You find yourself at the crossroads of a dense forest. You feel a sense of foggy memory, the last thing you remember is resting right outside a forest entrance taking a nap. Right outside it The path splits in three directions: north, east, and west.
->start

=== start ===
+ [Go north] -> north_path
+ [Go east] -> east_path
+ [Go west] -> west_path

=== north_path ===
The northern path leads you to a serene lake.
+ [Swim in the lake] -> swim_in_lake
+ [Sit by the shore] -> sit_by_shore
* [Return to crossroads] -> start

=== east_path ===
You stumble upon an ancient tree with carvings on its trunk.
+ [Examine the carvings] -> examine_carvings
* [Climb the tree] -> climb_tree
* [Return to crossroads] -> start

=== west_path ===
The western path takes you to an abandoned cottage.
* {not enter_cottage} [Enter the cottage] -> enter_cottage
* {enter_cottage} [Revisit the cottage] -> revisit_cottage
* [Return to crossroads] -> start

=== swim_in_lake ===
{You dive into the cool water, feeling refreshed.|You enjoy a short swim until your head begins to ache a little from the cold water.|Your head begins to pound heavily, you decide to leave the water, a reminder of your foggy memory.}
+ [Return to the shore] -> north_path

=== sit_by_shore ===
{&You sit by the shore, enjoying the peaceful view.|The sound of the water lapping against the shore soothes your mind.A gentle breeze caresses your face.|As you rest by the shore, you notice a seemingly out of place straw hat atop a few rocks. You wonder who that belongs to.}
+ [Return to the crossroads] You return to the crossroads. -> start

=== examine_carvings ===
{~You discover symbols that depict an ancient legend.|The carvings tell the story of a lost civilization.|Among the symbols, you find a depiction of a terrifying beast.} Among the carvings and symbols you notice a peculiar symbol encircled. You also notice a path behind the tree.
+ [Follow the path] -> follow_path
* [Return to the crossroads] -> start

=== climb_tree ===
{once: You climb to the top of the tree and spot a distant castle.}
- -> east_path

=== enter_cottage ===
The cottage is eerily silent. You notice a locked chest and a dusty bookshelf.
+ {not open_chest} [Open the chest] -> open_chest
+ {not examine_bookshelf} [Examine the bookshelf] -> examine_bookshelf
* -> west_path // Fallback to west_path if no choice is selected

=== revisit_cottage ===
You go back into the cottage.
* [Reinspect the trapdoor] -> search_chamber

=== follow_path ===
You follow the path through a dense thicket and find yourself at the entrance to an underground cavern.
+ [Enter the cavern] -> enter_cavern
* [Inspect the entrance] -> inspect_entrance
+ [Return to the ancient tree] -> east_path

=== open_chest ===
Inside the chest, you find a collection of rare coins and a mysterious key.
* [Take the key] -> take_key
- -> enter_cottage

=== examine_bookshelf ===
Among the dusty tomes, you find a diary belonging to the cottage's last inhabitant.
* [Read the diary] -> read_diary
- -> enter_cottage

=== enter_cavern ===
The cavern is dark and filled with echoing drips of water. You carefully make your way deeper inside.
+ [Continue exploring] -> explore_deeper
- -> follow_path

=== inspect_entrance ===
You notice ancient runes carved around the entrance, warning of the dangers that lie within.
* [Heed the warning and leave] -> follow_path
- -> enter_cavern

=== take_key ===
You pocket the mysterious key, wondering what lock it might open.
- -> enter_cottage

=== read_diary ===
The diary recounts the inhabitant's discovery of a hidden chamber beneath the cottage.
* [Search for the chamber] -> search_chamber
- -> enter_cottage

=== explore_deeper ===
As you delve further into the cavern, you come across a sparkling underground river.
* [Follow the river] -> follow_river
* {descend_chamber} [Drop the blue stone into the river] You drop mysterious blue stone into the river. -> blue_stone
- -> enter_cavern

=== search_chamber ===
You find a metal trapdoor, the strong metal stands out in stark contrast against the wooden cottage. You notice a keyhole in the centre of the trapdoor.
* {not take_key} [Try and pry the trapdoor open] You try and pry the door open. Nothing works.
* {take_key} [Use the key] -> descend_chamber
- -> enter_cottage

=== follow_river ===
Following the river, you eventually find an exit that leads back to the forest.
- -> start

=== descend_chamber ===
The chamber is filled with artifacts and relics from a bygone era. You notice in particular a seemingly glowing blue gem with peculiar carvings on it. You take the treasure and leave.
- -> start

=== blue_stone ===
The river begins to bubble slightly, quickly getting more violent as it begins to glow vibrantly. Soon the cave floods, and within seconds the cold, shining water knocks you out.

You wake up at the edge of the forest, next to a sign that forbids anyone enter. You feel well rested, as if it was all just a nap. Just before you walk away back to your home, you look back once more. Thinking. Pondering.
-> END
