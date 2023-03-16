# GetX with Clean Arcitecture

##### url:-- https://pub.dev/packages/get

## --- GetX has major 3 pillars ---
1. State Management
2. Route Management
3. Dependency Management


### Other Getx Features are :--
1. Internationalization  --> Translations. --> Locales.
2. GetConnect
3. Change theme
4. GetPage MiddleWare
5. GetView
6. GetResponsiveView
7. GetWidget
8. GetxServices
9. Other Advance Api.



## Route Management :--

1. Without Named Route:-
    * Get.to("Screen_Name")<br/>
          -- It will add the new screen in top of stack.
    * Get.to("Screen_Name", arguments: arg)<br/>
          -- you can pass argument to the new screen by passing any dynamic value to the argument.<br/>
          -- by using "Get.arguments" you can get the arguments
    * Get.back()<br/>
        -- Basically it will pop out the current screen form the stack
    * Get.off("Screen_Name")<br/>
        -- it will navigate to the new screen and remove the last screen from the stack
    * Get.offAll("Next_Screen")<br/>
        -- it will navigate to the new screen and remove all other screens from the stack
        
2. With Named Route:-
    * Get.toNamed("Route Name")<br/>
    * Get.toNamed("Screen_Name", arguments: arg)<br/>
    * Get.offNamed("Screen_Name")<br/>
    * Get.offAllNamed("Screen_Name")<br/>
    
3. You can pass urls in routing with Getx
    * Get.toNamed("/secondScreen?id=354&name=Enzo");<br/>
        -- to navigate to new scrren using url we need to pass screen name and the parameters that you need to pass<br/>
        -- Get.parameters['id'];  Get.parameters['name'];  you can get the values of paramenters like these
