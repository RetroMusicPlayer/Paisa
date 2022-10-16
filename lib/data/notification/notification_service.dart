import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:timezone/timezone.dart' as tz;

@pragma('vm:entry-point')
void notificationTapBackground(NotificationResponse notificationResponse) {
  // ignore: avoid_print
  print('notification(${notificationResponse.id}) action tapped: '
      '${notificationResponse.actionId} with'
      ' payload: ${notificationResponse.payload}');
  if (notificationResponse.input?.isNotEmpty ?? false) {
    // ignore: avoid_print
    print(
        'notification action tapped with input: ${notificationResponse.input}');
  }
}

const _androidDetails = AndroidNotificationDetails(
  'pasia_channel_id',
  'Reminder notifications',
  channelDescription: 'Show notifications whenever possible to add expense',
  priority: Priority.low,
  importance: Importance.high,
);
const _notificationDetails = NotificationDetails(
  android: _androidDetails,
);

class NotificationService {
  final notification = FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    _configureLocalTimeZone();
    if (Platform.isAndroid) {
      final androidPlugin = notification.resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>();

      final bool? granted = await androidPlugin?.requestPermission();
      if (granted == true) {
        const androidSettings = AndroidInitializationSettings('app_icon');
        const initializationSettings = InitializationSettings(
          android: androidSettings,
        );

        //tz.initializeTimeZones();
        final String timeZoneName =
            await FlutterNativeTimezone.getLocalTimezone();
        tz.setLocalLocation(tz.getLocation(timeZoneName));

        await notification.initialize(
          initializationSettings,
          onDidReceiveNotificationResponse:
              (NotificationResponse notificationResponse) {
            switch (notificationResponse.notificationResponseType) {
              case NotificationResponseType.selectedNotification:
                //selectNotificationStream.add(notificationResponse.payload);
                break;
              case NotificationResponseType.selectedNotificationAction:
                /* if (notificationResponse.actionId == navigationActionId) {
                  //selectNotificationStream.add(notificationResponse.payload);
                } */
                break;
            }
          },
          onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
        );
      }
    }
  }

  Future<void> _configureLocalTimeZone() async {
    if (kIsWeb || Platform.isLinux) {
      return;
    }
    //tz.initializeTimeZones();
    final String timeZoneName = await FlutterNativeTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(timeZoneName));
  }

  Future selectNotification(String? payload) async {
    //.currentState!.pushNamed(addExpensePath);
  }

  Future<void> show() async {
    await notification.show(
      0,
      'Add expense',
      'Don\'t forgot to add your daily expenses',
      _notificationDetails,
      payload: 'Notification Payload',
    );
  }

  Future<void> secludeNotification() async {
    await notification.zonedSchedule(
      0,
      'Add expense',
      'Don\'t forgot to add your daily expenses',
      _nextInstanceOfEightPM(const Time(20)),
      _notificationDetails,
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.time,
    );
  }

  tz.TZDateTime _nextInstanceOfEightPM(Time time) {
    final now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduledDate = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      time.hour,
      time.minute,
      time.second,
    );
    return scheduledDate.isBefore(now)
        ? scheduledDate.add(const Duration(days: 1))
        : scheduledDate;
  }
}
