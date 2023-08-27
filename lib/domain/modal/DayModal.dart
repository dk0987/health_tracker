
class DayModal{
  String day ;
  int date ;
  bool active ;

  DayModal({
    required this.day,
    required this.date,
    required this.active,
  });

  static List<DayModal> getAllDays(){
    List<DayModal> days = [];

    days.add(
      DayModal(day: "S", date: 16, active: false),
    );
    days.add(
      DayModal(day: "M", date: 17, active: false),
    );
    days.add(
      DayModal(day: "T", date: 18, active: false),
    );
    days.add(
      DayModal(day: "W", date: 19, active: true),
    );
    days.add(
      DayModal(day: "T", date: 20, active: false),
    );
    days.add(
      DayModal(day: "F", date: 21, active: false),
    );
    days.add(
      DayModal(day: "S", date: 22, active: false),
    );

    return days;
  }
}