
# **Easy Assets**

A comprehensive asset, localization, and code generation solution for Flutter projects, leveraging popular tools like **flutter_gen**, **intl l10n**, **floor**, **retrofit**, and **freezed**.

---

## **Features**

### 📂 **Asset Management**
- **Type-safe generation** of asset paths for images, fonts, Lottie files, and other resources.
- Automatically generates asset references using **build_runner** for easy and error-free access in your Flutter code.

### 🌐 **Localization (l10n)**
- **Auto-generates localized strings** using the Flutter `intl` package.
- Provides **type-safe localization keys** for seamless multi-language support.
- Automatically regenerates localization files after every `flutter run`.

### 🗂️ **Organized Project Structure**
- A clean and scalable project structure with separate folders for:
  - `gen/`: Auto-generated code for assets, localization, and more.
  - `l10n/`: Localization files and configurations.
  - `src/`: Source code for the app's core functionality.

### 🧊 **Model Generation with Freezed**
- **Freezed** is used to generate immutable model classes, with built-in support for:
  - Copy methods.
  - JSON serialization.
  - Union types (Sealed classes).

### 🛢️ **Database Integration with Floor**
- **Floor** is used to generate type-safe, reactive SQLite database code.
- Functions similarly to **Android's Room Database**, making it easy for Android developers to transition.

### 🌐 **Networking with Retrofit & Dio**
- **Retrofit** (with **Dio**) is used to generate networking services.
- Inspired by **Android's Retrofit**, it provides a familiar experience for Android developers.

---

## **Getting Started**

To start using **easy_assets** in your Flutter project:

1. **Install dependencies**:
   ```bash
   flutter pub get
   ```

2. **Run code generation**:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

3. **Run the project**:
   ```bash
   flutter run
   ```

4. **Customize localization and asset settings** in the `l10n.yaml` and `pubspec.yaml` files.

---

## **Dependencies**
This project leverages the following packages:

- [flutter_gen](https://pub.dev/packages/flutter_gen) – Asset and font generation.
- [intl](https://pub.dev/packages/intl) – Internationalization and localization.
- [freezed](https://pub.dev/packages/freezed) – Immutable model classes and unions.
- [floor](https://pub.dev/packages/floor) – SQLite database integration.
- [retrofit](https://pub.dev/packages/retrofit) – Networking code generation.
- [dio](https://pub.dev/packages/dio) – HTTP client for RESTful APIs.

---

## **Contributing**
Contributions are welcome! Feel free to open an issue or submit a pull request.

---

## **License**
This project is licensed under the [MIT License](LICENSE).
