import 'dart:async';
import 'dart:io';

import 'package:test/test.dart';
import 'package:ziqni_member_sdk/api_ws.dart';


final token = 'eyJhbGciOiJIUzUxMiJ9.eyJhcGlfa2V5X2lkIjoiRkkxZVNJc0JMZ3ZwVDFZemFIQjgiLCJtZW1iZXJfcmVmZXJlbmNlX2lkIjoiMjIyNS05NjY5MjMzIiwiYWNjb3VudF9pZCI6InpyQks5NEVCajZBWGlIeDZPZEdNIiwic3BhY2VfbmFtZSI6InRpcGljb2dhbWVzIiwibmFtZSI6IjIyMjUtOTY2OTIzMyIsIm1lbWJlcl90eXBlIjoiSW5kaXZpZHVhbCIsIm1lbWJlcl9pZCI6IklvMWNTSXNCTGd2cFQxWXpmaHVmIiwicmVzb3VyY2VfYWNjZXNzIjp7InppcW5pLWdhcGkiOnsicm9sZXMiOlsiUHVibGljIiwiTWVtYmVyIiwiVmlld0FjaGlldmVtZW50cyIsIlZpZXdBd2FyZHMiLCJDbGFpbUF3YXJkcyIsIlZpZXdDb21wZXRpdGlvbnMiLCJWaWV3Q29udGVzdHMiLCJWaWV3RmlsZXMiLCJWaWV3TWVtYmVycyIsIk1lbWJlcnNPcHRpbiIsIlZpZXdNZXNzYWdlcyIsIkNvbm5lY3RQcm94eSIsIlZpZXdSZXdhcmRzIiwiVmlld1J1bGVzIl19fSwidHlwIjoieC1hcGkta2V5Iiwic3ViIjoiSW8xY1NJc0JMZ3ZwVDFZemZodWYiLCJqdGkiOiIxYTRmOGQxMS1kNmE4LTRjYWQtYjYxZi05YjgyMzUyZDNlYzIiLCJpYXQiOjE3MDAwNTk5OTMsImV4cCI6Mzg2MDA1OTk5MywiYXpwIjoidGlwaWNvZ2FtZXMuemlxbmkuYXBwIn0.hDRq-KwqQQy6Uk7okabqL9IqlDlzmA7xloisr-MYQw2IGPFeaYQ_3HkuplVQb21Ta6t__bVSEXQxyi84WlDsPw';

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
