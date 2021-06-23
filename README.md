# Canton Design Syste

Canton Design System elements and resources for Flutter.

## Description
This package contains elements that I use in my apps. It includes things such as themes (colors, typography, etc.), custom methods, buttons, text-inputs, a color picker, and more. This all in attempt to limit the amount of time I spend on remaking simple tools and ui, while still customizing my screens to my flavor.

## Getting Started
To use this package and access its content, add this dependency to your pubspec.yaml
``` 
dependencies:
    canton_design_system:
        git:
          url: git://github.com/31Carlton7/canton_design_system.git
          ref: master
```
And simply import the package using this code
```
import 'package:canton_design_system/canton_design_system.dart';
```
BTW ```package:flutter/material.dart``` is already imported when using this package so no need to re-import :)

## All Features
- _Color system:_ Credits to the Primer Color system, as this is a modified version of theirs.
- _Typography system:_ Credits to the Primer typography system.
- _Buttons:_ Resizable primary button, small/header button and back button with all necessary customizations.
- _Text Inputs:_ Custom text field, text form fields, and a tag text field.
- _Borders:_ border customization.
- _Color Picker(WIP):_ Working color picker that returns color.
- _Loading icon:_ Loading icon/widget.
- _Animations(WIP):_ Fluid animations to give a playful but professional feel.
- _Custom Methods:_ Custom methods with ease of use.
- _Icon System:_ Icon system that utilizes Iconly icons, Feather Icons and Cupertino Icons.
- _Custom Fonts:_ Both serif and sans serif typefaces consisting of Inter UI and Times New Roman.
- _Light theme:_ Clean light theme.
- _Dark Theme:_ Clean dark theme with all elements modified.

## TODO
- [ ] Migrate to null saftey
- [ ] Reconfigure design system on figma to use new elements

## Dependencies
- flutter_page_transition: 
- flutter_riverpod:
- flutter_slidable:
- flutter_feather_icons:
- flutter_spinkit:
- flutter_svg:
- emojis:
- circular_check_box:
- liquid_pull_to_refresh:
- cupertino_icons:

## Figma
[Link](https://www.figma.com/file/CNpY1mP3jfeAUPW3Dhf3l5/Canton-Design-System?node-id=0%3A1) to design system on figma to view UI elements

## Socials
If you have any questions, you can reach me here:

- Instagram: [@31Carlton7](https://www.instagram.com/31carlton7/)
- Email: carltonaikins7@gmail.com
