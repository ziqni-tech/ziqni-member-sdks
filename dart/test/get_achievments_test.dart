import 'dart:async';
import 'dart:io';

import 'package:test/test.dart';
import 'package:ziqni_member_sdk/api_ws.dart';


final token = 'eyJhbGciOiJIUzUxMiJ9.eyJhcGlfa2V5X2lkIjoiRXc1OTBvc0J5bURMYjNQdHJvbEciLCJtZW1iZXJfcmVmZXJlbmNlX2lkIjoiUGxheWVyLTEiLCJhY2NvdW50X2lkIjoiRjdtOGRId0Jzdy1PSDNNRW9XMjMiLCJzcGFjZV9uYW1lIjoiZmlyc3Qtc3BhY2UiLCJuYW1lIjoiUGxheWVyLTEiLCJtZW1iZXJfdHlwZSI6IkluZGl2aWR1YWwiLCJtZW1iZXJfaWQiOiJuZENkM0lBQmdFemF5ME04UlBPOCIsInJlc291cmNlX2FjY2VzcyI6eyJ6aXFuaS1nYXBpIjp7InJvbGVzIjpbIlB1YmxpYyIsIk1lbWJlciIsIlZpZXdBY2hpZXZlbWVudHMiLCJWaWV3QXdhcmRzIiwiQ2xhaW1Bd2FyZHMiLCJWaWV3Q29tcGV0aXRpb25zIiwiVmlld0NvbnRlc3RzIiwiVmlld0ZpbGVzIiwiVmlld01lbWJlcnMiLCJNZW1iZXJzT3B0aW4iLCJWaWV3TWVzc2FnZXMiLCJDb25uZWN0UHJveHkiLCJWaWV3UmV3YXJkcyIsIlZpZXdSdWxlcyJdfX0sInR5cCI6IngtYXBpLWtleSIsInN1YiI6Im5kQ2QzSUFCZ0V6YXkwTThSUE84IiwianRpIjoiMWY1OGFiMmQtNDNkMi00ZDU5LTg3NmItZDcxODcwM2Q5NGQzIiwiaWF0IjoxNzAwMTM0MjgwLCJleHAiOjM4NjAxMzQyODAsImF6cCI6ImZpcnN0LXNwYWNlLnppcW5pLmFwcCJ9.OL5aOk9A6EoJnsK5UbqJPDHZSHruWJ00cqIm4fyE2AfQJtgL7TFMrHzXtZBtlygeP-ykFgPR68dCt5i6GgoIiQ';

void main() {
  test('calculate', () async {

    final connection = await ApiClientWs().start(token);

    final filter = AchievementFilter(
        statusCode: NumberRange(moreThan: 20, lessThan: 30),
        sortBy: <QuerySortBy>[QuerySortBy(order: SortOrder.asc, queryField: "created")],
        skip: 0,
        limit: 10
    );

    final achievementRequest = AchievementRequest(achievementFilter: filter);

    final result = await AchievementsApiWs().getAchievements(achievementRequest);

    final achievement = result.data.first;

    expect(result.data.length, greaterThan(0));
    expect(achievement.id, isNotNull);
  });
}
