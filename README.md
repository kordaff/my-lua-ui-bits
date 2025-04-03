# my-lua-ui-bits
Bits i've made as a newbie lua coder to facilitate a ui in love2d programs.

The examples button-example and entry-example display their usage. (todo: commit examples)

These ui bits are subject to a lot of change, almost every new test program has caused changes.

Hmm, new issue: web player like the one at https://schellingb.github.io/LoveWebBuilder/run-project
  doesn't work with my entry-example.love but an older version of entry.lua that still used the
  callback love.keypressed() does work on a webpage.  May need to continue with that version instead
  for more portability...

Tried a different loveJS player: https://alexjgriffith.itch.io/lovejs-player with my entry-example.love
  and it performed as expected.  Text typed, hit return, splashes down and left on the screen...

Adding that love file to a folder now.  The button-example is a bit too simple to bother.

I did managed to find the function that turns on the android native keyboard but need to modify the 
entry-example.love to splash the text higher so i can see it on my tiny android screen.
