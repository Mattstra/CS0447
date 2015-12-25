Matthew Strayhorn
CS 0447
Project1


1. Shuffling Deck:

I implemented the permute algorithm given in the project description packet by first using the length of the
cardValues array as the upper bound for syscall 42. This gave me a random number in the range of 0<=x<40. I then used
that value as an index into the array and swappped the value that was pointed to by that index with the value pointed
to by the other index (i-1). I looped this until i = 2.

2.Timer:

I first used syscall 30 to get the lower 32 bits of system time stored in $a0 and stored that into $t0. I then subtracted
3 minutes (180,000 milliseconds) from the system time in $t0 and stored that into $t1. After that I added 1000 (1 sec)
to the systime in $t0 and stored that in $t4. In the loop, I first used syscall 32 again and subtracted the time stored 
in $a0 from that syscall from the time that I saved in $t0 giving me the elapsed time.Then I got the difference
between the time stored in $t0 (systime - 3 minutes) and the time stored in $t4 (systime + 1 sec) to see if time has
expired. If the difference stored into $t5 was equal to 1000 then time had expired. If not then I would do all timer
events and then add the elapsed time each iteration until it was equal to 1000. Then I jumped to the update_timer
function and updated the timer displayed on the board.

3. Updating timer display:

I stored the initial values of the timer into 3 registers; $s5 for seconds, $s6 for tens, and $s7 for minutes.
Once 1 second has passed in the timer loop, the program jumped to first decrement the tens position by going to
the function update_tens. If the current value in the tens register was 0x0a (10) then it would subtract 5 and jump to 
update and draw the minutes and seconds of the time then jump back to the timer loop.Each iteration it would decrement
the value in the tens register until it was equal to 0. The program would then jump to the function reset_tens and reset
the value by loading a 10 in the register (li $s6, 10). It would then jump back to update and draw the tens position
along with updating and drawing both the minutes and seconds registers.

4.Draw Function:

This function would take an index stored into $s4, the index + LED starting address stored in $s1, and the font address
stored in $s0 as arguments. The function would add the index to the address of the font array to get the desired font
and then get the end of the font by adding 14 to that address and stored that into $s3. It would then loop through 
each line of the font and storing it at the desired LEDs by incrementing the font address by 2 and incrementing the LED 
memory by 16 until the address stored in $s0 (font address + index) was equal to  the address in $s3. By incrementing 
the LED memory by 16, Each line of the font would be drawn in the LEDs directly below the previous.
 
5. Drawing the Timer:

By using the values stored in register $s5, $s6, $s7, I used thos values as the index into the font array. I stored
those values into $s4 and passed it as an argument for the draw function.

6. Position of cards on board:

I used register $t8 to hold the Y position of cards while $t9 holds the X position of cards


7. Drawing the game board:

I first loaded the address of the font and card_Values array along with the address of LED memory. I figured that the
address where the first card would be drawn would be 160 + LED memory address. The index for the font of the back of
a card was 160 so I put that into $s4. In the loop, I first multiplied the current x position by 8 and then added the
value of the y position into $a0 ($a0 = x*8 +y). I then used that as the index into LED memory by adding it to LED memory 
address stored in register $t7. After that, I called the draw function to draw the card. After calling the draw function,
I had to reset the font address and the ending offset of the font in $s3 by subtracting 14. I then have to reset the LED 
position by subtracting 112 from the address. After that I add 2 to the address to get the starting position of the next 
card. Once the x position of the card is 8 (after 7 cards have been drawn horizontally), the program branches to 
increment the Y position and reset the X position. The Y position is incremented by adding 128 to LED memory address and 
by adding 1 to $t8. And finally it checked if all the cards were drawn by seeing if $a0 = 39.

8.Key presses:

For the up, down, left, and right keys, I first used made sure that the card selector would go beyond the edges of the
board by checking to see if their respective edge values were reaced (left key x = 0, right key x = 7, up key y =0, 
down key y = 7). I then incremented or decremented x or y based on the key that was pressed and got their respective
LED memory values by using; for x position on LEDs; x position = x*8. For y position: y position = (8*(y+1)) + (y+1).
After that I drew the selector box to the card in the new x or y position based on the key press. After that I drew
the card within the selector box and then erased the previous card and redrew a new card there.

9. Select Button (b button):

By using the equation i = x * 8 + y, I was able to get a value to use as an offset into the card_Values array by
multiplying that value by 4 to make sure that it was word aligned. Since it was possible for me to get an offset that
was beyond the range of addresses for the card_Values array, I had to check if a value was the maximum possible offset
(160) and subtract that by 100 to make it a workable offset that was word aligned. After that I got the current card
number by using (x + (y * 8)). I then multiplied that by 16 so that it could be used as the font index. After that
I checked to see which row the card was so I could figure out where to the the font. I used an equation based on the row
for example: row 0 = 160 + (card number *2). That equation gave me the offset for each card so I could draw the font there.
