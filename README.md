<p align="center">
  <a href="https://retromusic.app">
    <img src="assets\images\icon.png" height="128">
    <h1 align="center">Paisa - Expense Tracker</h1>
  </a>
</p>
<p align="center">
 <a href="https://flutter.dev/" style="text-decoration:none" area-label="flutter">
    <img src="https://img.shields.io/badge/Platform-Flutter%203.10.4-blue">
  </a>
   <a href="https://play.google.com/store/apps/details?id=dev.hemanths.paisa" style="text-decoration:none" area-label="play store">
    <img src="https://img.shields.io/badge/Download-Google%20Play-green">
  </a>
  <a href="https://apps.microsoft.com/store/detail/9NQ2KR46N764?launch=true&mode=mini" style="text-decoration:none" area-label="windows">
    <img src="https://img.shields.io/badge/Download-Microsoft%20Store-red">
  </a>
  <a href="https://github.com/RetroMusicPlayer/Paisa/releases/tag/v4.8.0" style="text-decoration:none" area-label="flutter">
    <img src="https://img.shields.io/badge/Version-4.8.0-orange">
  </a>
</p>
<p  align="center">
    <h2> Material design expense manager</h2>
</p>

### ⚠ Join [@paisa group](https://t.me/app_paisa) on Telegram for important updates

### Screen shots

#### Mobile

| <img src="paisa-images/flutter_01.png" width="200"/> | <img src="paisa-images/flutter_02.png" width="200"/> | <img src="paisa-images/flutter_04.png" width="200"/> | <img src="paisa-images/flutter_03.png" width="200"/> |
| :--------------------------------------------------: | :--------------------------------------------------: | :--------------------------------------------------: | :--------------------------------------------------: |
|                         Home                         |                       Accounts                       |                      Categories                      |                   Budget overview                    |

#### Foldable

| <img src="paisa-images/Screenshot_1667485291.png" width="200"/> | <img src="paisa-images/Screenshot_1667485297.png" width="200"/> | <img src="paisa-images/Screenshot_1667485299.png" width="200"/> | <img src="paisa-images/Screenshot_1667485301.png" width="200"/> |
| :-------------------------------------------------------------: | :-------------------------------------------------------------: | :-------------------------------------------------------------: | :-------------------------------------------------------------: |
|                              Home                               |                            Accounts                             |                           Categories                            |                         Budget overview                         |

#### Tablet & Desktop

| <img src="paisa-images/Screenshot_1667485280.png" width="200"/> | <img src="paisa-images/Screenshot_1667485342.png" width="200"/> | <img src="paisa-images/Screenshot_1667485319.png" width="200"/> | <img src="paisa-images/Screenshot_1667485320.png" width="200"/> |
| :-------------------------------------------------------------: | :-------------------------------------------------------------: | :-------------------------------------------------------------: | :-------------------------------------------------------------: |
|                              Home                               |                            Accounts                             |                           Categories                            |                         Budget overview                         |

### Expense Tracking

- **Tracking expenses, incomes & deposits**: This feature allows users to record and monitor their financial activities. Users can log both expenses and income, as well as deposits made into their accounts. Each entry can be categorized for easy tracking and analysis.

- **Account & budget wise overview**: This feature provides a comprehensive view of the user's financial situation. It shows the total balance across all accounts, as well as the progress towards individual budgets. This helps users understand their spending habits and plan their finances effectively.

- **Manage categories**: This feature enables users to create custom categories for their expenses. These categories can be anything from groceries to entertainment to utilities. By grouping expenses into categories, users can easily identify areas where they might be overspending and take steps to reduce their costs.

### Steps to Translate

1. Create an `.arb` file inside `lib/localization/app_<language_code>.arb`. For example, `app_en.arb`.

2. Copy all transactions from `app_en.arb` to the newly created file and remove all keys which are annotated with `@`.

For instance, change this:

```json
 {
 "appTitle": "Paisa",
 "@appTitle": {
     "description": "The app name",
     "type": "text",
     "placeholders": {}
 }
}
 ```

To this:

```json
{ "appTitle": "Paisa" }
```

3. Run the app and verify the changes.

Sure, I can help you modify the instructions. Here's the updated version:

### Steps to build and run the project

1. Clone the Flutter Project:
    - Use the command `git clone https://github.com/RetroMusicPlayer/Paisa.git` to download the project from the GitHub repository.

2. Install Dependencies:
    - Navigate to the project directory and execute the command `flutter pub get` to install the required dependencies.

3. Build the Project:
    - Run the command `flutter pub run build_runner build` to generate necessary files for the project.

4. Run the App:
    - Connect a device or emulator and run the app using the command `flutter run --flavor dev` or through your IDE.

### Download

[<img alt='Get it on Google Play' width=256 height=100  src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png'/>](https://play.google.com/store/apps/details?id=dev.hemanths.paisa&hl=en_US&pli=1&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1)
[<img  width=180 height=100 src="https://get.microsoft.com/images/en-us%20dark.svg" alt="Download Microsft Store" />](https://apps.microsoft.com/store/detail/9NQ2KR46N764?launch=true&mode=mini)

### License

    Copyright (c) 2022, Hemanth S
    All rights reserved.

    This source code is licensed under the GPLv3-style license found in the
    LICENSE file in the root directory of this source tree.
