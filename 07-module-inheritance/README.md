# Inheritance with Modules

- Limits to using class inheritance `Cat < Animal`, e.g. we can only inherit from one class
- **Modules**: another way to lend functionality across classes
  - Modules can't have instances (they are not classes) 
  - Module functionality:
    - **Namespacing**: Namespace nested modules with `::`
    - **Mixin**: Lend functionality across classes (mixing in functionality)
- **Folder structure**: use a `concerns` folder to hold your modules (module names should end in `able`)
- **Include vs Extend**: `include` instance methods, `extend` class methods
  - `include` and `extend` don't "copy" the module's methods into the class, instead a reference to the methods in the module is created
- **self**: is omitted when defining class methods in modules (`extend` is responsible for defining the method as a class method)
