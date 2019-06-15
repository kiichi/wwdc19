# WWDC19 Notes

Below is my WWDC19 Notes and Sample Codes. For each day's note, click the folder above. For SwiftUI project, I created branch as I progress, so that you can see very simple differences in each step. See the seciton below.

## Photos and Videos

Raid at the entrance
https://youtu.be/K8JCAhtuD70

Just about begin
https://youtu.be/wuzTUZQyZ1M

Scoooter
https://youtu.be/HtKJiYrcmEk

## Code - Swift UI Test Project

[SwiftUI Test](https://github.com/kiichi/wwdc19/tree/master/day2/SwiftUITest)

### Step 1

Hello World. Just checking file structures. Unless you update the MacOS, your excode can not render preview canvas. After twisting my head for while, I decided just use simulator. Not taking risk to upgrade entire OS during my trip... I forgot my SSD and iPad.

[kiichi/wwdc19 at step1](https://github.com/kiichi/wwdc19/tree/step1)

![step1.png (800×731)](https://raw.githubusercontent.com/kiichi/wwdc19/master/images/step1.png)

### Step 2

Continue playing with Swift UI. Trying VStack Layout and so on. Zap the tutorial and recreating my own. I made up a project for company HR app.

[kiichi/wwdc19 at step2](https://github.com/kiichi/wwdc19/tree/step2)

![step2.png (800×608)](https://raw.githubusercontent.com/kiichi/wwdc19/master/images/step2.png)


### Step 3

Make the VStack and bit more complicated stuff

[kiichi/wwdc19 at step3](https://github.com/kiichi/wwdc19/tree/step3)

![step3.png (800×606)](https://raw.githubusercontent.com/kiichi/wwdc19/master/images/step3.png)

### Step 4

Trying to figure out combination of VStack and HStack. I'm not happy that Image component doesn't resize the png easily. I thought aspectFit kind modifier will do some magic but it didn't all images are blowing up.

[kiichi/wwdc19 at step4](https://github.com/kiichi/wwdc19/tree/step4)

![step4.png (800×613)](https://raw.githubusercontent.com/kiichi/wwdc19/master/images/step4.png)

After resizing images with photoshop that's aright. Apple's tutorial introduced data store which also takes care image resizing but why? Sizing image is layout matter - totally UI world thing

![step4-2.png (800×835)](https://raw.githubusercontent.com/kiichi/wwdc19/master/images/step4-2.png)

### Step 5

Creating more realistic summary list and details. Passing around same dataset. Doing something different in list view. Number of stars is like badge for the employee and you click the name to see more details. Initially i didn't put Identifieable interface but this is required to bind this kind of repeater otherwise swift compiler throw some error because the class doesn't conform what the List is looking for. The error message is totally irrelevant and useless.

[kiichi/wwdc19 at step5](https://github.com/kiichi/wwdc19/tree/step5)

![step5.png (800×606)](https://raw.githubusercontent.com/kiichi/wwdc19/master/images/step5.png)

![step5-2.png (800×617)](https://raw.githubusercontent.com/kiichi/wwdc19/master/images/step5-2.png)

### Final

I was going to try one of binding and state. I tried to setup search box above and throwing some search words. I tried to decorate the search box but couldn't find styling options... anyhow, the binding is working, make sure I pass down the object that decorated with @Binding and new syntax $ synbol when you bind it in TextField. A trick here is to prepare .default property in the Employee model so it's easier to handle the preview part, also give some placeholder bindable object to initialize TextField.

[kiichi/wwdc19: WWDC19 Notes and Sample Codes](https://github.com/kiichi/wwdc19/tree/master)

![final.gif (320×649)](https://raw.githubusercontent.com/kiichi/wwdc19/master/images/final.gif)

![final.png (800×1663)](https://raw.githubusercontent.com/kiichi/wwdc19/master/images/final.png)

![final-2.png (800×1381)](https://raw.githubusercontent.com/kiichi/wwdc19/master/images/final-2.png)

![final-3.png (800×1934)](https://raw.githubusercontent.com/kiichi/wwdc19/master/images/final-3.png)

### Slideshow

This is internal organization access only.

[Workshop - WWDC19 Feedback Session - Google Slides](https://docs.google.com/presentation/d/12TD_FkEre2aZUxMq1nlLtfw1dKklvaN_PsGqoBs54XU/edit#slide=id.p)




