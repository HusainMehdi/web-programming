function openWindow() {
    newWindow = window.open("", height=400,width=800);  
  
    newWindow.document.write("Hello, and welcome to Grid Conquest. The goal of this game is to conquer the grid of squares on screen.");
    
    newWindow.document.write(" To do this, you need to click a square next to your initial starting square and then click another square next to either of your current squares - repeat this process as much as you need.");
    
    newWindow.document.write(" However, your opponents will be looking to claim your squares as well. To stop them from taking your squares, you have a rock-paper-scissors type selector, which will change the type of the square you just placed. So if an opponent is using the rock type and you are using the paper type for example, they can't take your square. You would be able to take theirs due to your type advantage.")
    
    newWindow.document.write(" You may also change your individual squares colour if you want to have some fun and make a picture.");
    
    newWindow.document.write(" Once you have taken over all of the squares on the screen, you will have won the game! It will reset shortly afterwards however so you can play again.");
    
    newWindow.document.write(" Have fun!");

    ;
}