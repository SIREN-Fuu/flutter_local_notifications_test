import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void showLocalNotification(String title, String message) {
  const androidNotificationDetail = AndroidNotificationDetails(
      'channel_id', // channel Id
      'channel_name' // channel Name
      );
  const iosNotificationDetail = DarwinNotificationDetails();
  const notificationDetails = NotificationDetails(
    iOS: iosNotificationDetail,
    android: androidNotificationDetail,
  );
  FlutterLocalNotificationsPlugin()
      .show(0, title, message, notificationDetails);
}
