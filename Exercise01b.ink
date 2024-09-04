/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

->hungry_dog
==hungry_dog
The hungry dog stares you down, its eyes wild with anger at the world that would leave it to starve. You can run from it or fight it.
*Run from the dog ->run
*Fight the dog->fight

==run==
You run from the dog and it chases you as you head through a tunnel. You run and run until your lungs run out of air. What do you do?
*I run some more ->more
*I don't run more and accept my fate.->END

==more==
You run to a tree.{not sword_pickup:In the tree there is a sword.} Do you grab it?
+Yes.->sword_pickup
+No.->dead_end

==sword_pickup==
You now have a sword.->dead_end

==dead_end==
You reach a dead end. If you have a sword you can use it to scare the dog away.
*{sword_pickup} [You use the sword to scare the dog.]->won_fight
*You don't have a sword... time to run more.->evenmore

==evenmore==
{not cat:There is a cat in the tree. You can choose to grab it.} As you run more, you spot more and more things in the tree to think about grabbing.
+I should grab it. ->cat
+I don't care.->END

==cat==
You grab the cat and throw it at the dog. It doesn't do anything but it scares the dog away to not bother you anymore.->won_fight

==fight==
You choose to fight the dog. Its fangs sink into your skin but you have a fireball move, do you cast it? 
*I cast the fireball attack.->won_fight
*I don't cast it.->should

==won_fight==
You won against the dog! It ran away and won't bother you any more!->END

==should==
You should cast the fireball.
*Nah->should
*Okay...->won_fight