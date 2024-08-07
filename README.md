# riverpodtest
flutter pub get
flutter run

# unit-test and code coverage
針對主要的search_result_widget做測試
coverage/html/index.html

# 有測試平台
iOS / Android / MacOS

# Authorization token
weather_provider.dart 有包含Authorization code, 如果過期麻煩再更換

# Note
search input有作debounce<br>
client cache為一小時 (此api server端無cache-control)