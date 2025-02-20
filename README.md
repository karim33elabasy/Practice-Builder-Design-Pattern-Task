### Builder Pattern Example
That file contains two classes: 
- user class : to create users with required data : firstName, lastName and Opetional data : age, phone
- user builder class : class to build the user with the information you need only.

## How to use builder class 
Builder class contains many functions to set the data you need in the user only (Note that irst and last names are required).
To use it : 
- make an instance rom class UserBuilder.
- set the user properties you want.
- build user object.

## Example
'''User user1 = UserBuilder(firstName: "Karim", lastName: "Adel")
      .setAge(age: 28)
      .buildUser();'''

## Screenshots
![Capture](https://github.com/user-attachments/assets/ad885863-f1f6-45a3-af55-0d1adce36609)
