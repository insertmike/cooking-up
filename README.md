# cookingUp app :iphone:

Project overview,functuonalities and dependencies from my August built *weShop* app, with main focus on Navigation and passing data.

Designed by Maximilian Schwarzmüller, implemented by me.

 ## Project Overview
*cookingUp* is mobile cross-platform application, which serves variety of food statistics and recipes, which can be filtered by different factors such as *Gluten-free* or *Vegeterian*.

- ### Overall Approach
  - Used *Named Routes* defined
  - Layouts and Widgets are split into reasonable files
  
  
### Project Functions
- The App lives entirely on the phone's memory

1. **Category Meals Screen**
  - The user can seek through different categories of meals
  - The user can see choose a specific meal from a category
  - The user can see details about the specific meal chosen
  
      <div align="center">
      
      ![meals-home](https://user-images.githubusercontent.com/45242072/64467269-03348900-d10f-11e9-9015-7bf3d826f19b.gif)
       
      </div>
      
2. **Filters Screen**
- The user can set preference filters 
      <div align="center">
      
     ![filters-screen](https://user-images.githubusercontent.com/45242072/64467359-b309f680-d10f-11e9-838b-baf440d076de.gif)
       
  </div>


2. **Favorites Screen**
- The user create his own list of favorite meals

     <div align="center">
      
     ![favorites-screen](https://user-images.githubusercontent.com/45242072/64467395-04b28100-d110-11e9-9f44-7c3779cf843b.gif)
       
  </div>
  

### Dependencies 
```
  flutter:
    sdk: flutter
```

### How to run locally
1. Open project 
2. Start your mobile emulator
3. Run the application from your IDE *(e.g. Visual Studio Code)*
