# nanorc
nanorc + 2.4.2 update + 256-color patch

This is an offshoot of the main nanorc branch. I am going through this stuff trying to update it to reflect upon nano's 
MAJOR release, 2.4 (at the time of this writing, 2.4.2) which is the first big release that has some new features like 
linting (non-interactive), 'magic' file recognition, and better support for syntax highlighting, especially in the case
of highlighting groups that occur inside another highlighting group.

The Tradeoff
============

I decided to let nanorc files from the new release overwrite the ones here, which were previously modded with the
256 color patch, a patch that lets you use all your terminal's extra colors for syntax. However, since the regexes
had changed a great deal in many of the files, their changes are considered more important than the colors themselves.
I plan on converting all the schemes to 256-color since that was the purpose to begin with. I will be sticking with the
RGB style scheme introduced by the patch, but updated by myself in this manner:

- The original 256color patch range was 0:0:0 thru 5:5:5, i've changed that to 0:0:0 to F:F:F for less confusion although
  they are rounded down anyways (plugging in 1:1:1 == 2:2:2 in the old scheme).

- I also added support for, and will only be using, the HTML standardized color tags (#000000-#FFFFFF - #000-#FFF)
  the reasoning should become more apparent as i describe the next step
  
- To tie all that together, I'll be introducing a syntax/colorscheme converter, which I plan to have convert from .vim
  syntax, now that the regexes are more up to snuff - this is why the codes needed to be more compatible
  
  
