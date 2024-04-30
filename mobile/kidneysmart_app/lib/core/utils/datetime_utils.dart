/// Utility class for date and time operations.
class DateTimeUtils {
  /// Converts a JSON string to a DateTime object.
  /// If the input string is null or empty, returns the current DateTime.
  static DateTime fromJson(String? data) {
    return data == null || data.isEmpty ? DateTime.now() : DateTime.parse(data);
  }

  /// Calculates the difference in days between two DateTime objects.
  /// Returns null if either date is null.
  static int? calculateDaysDifference(
    DateTime? returnedDate,
    DateTime? giveDate,
  ) {
    if (returnedDate == null || giveDate == null) {
      return null;
    }
    final difference = returnedDate.difference(giveDate);
    return difference.inDays;
  }

  /// Checks if a given DateTime is past the current date.
  /// If the date is null, returns false.
  static bool isDateExpired(DateTime? date) {
    if (date == null) {
      return false;
    }
    final currentDate = DateTime.now();
    return currentDate.isAfter(date);
  }
}

/// Extension on Duration to provide relative time calculations.
extension RelativeDuration on Duration {
  /// Returns the number of hours in the Duration, minus the full days.
  int get hours {
    return inHours - inDays * 24;
  }

  /// Returns the number of minutes in the Duration, minus the full hours.
  int get minutes {
    return inMinutes - inHours * 60;
  }
}
