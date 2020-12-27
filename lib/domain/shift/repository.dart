import './shift.dart';
import '../repository.dart';

abstract class IShiftRepository implements IRepository {
  List<MonthlyShift> fetchMonthlyShiftsForFacility(String facilityId);
  MonthlyShift fetchMonthlyShift(int monthlyShiftId);
  MonthlyShift fetchCurrentMonthlyShiftForFacility(String facilityId);
  MonthlyShift createMonthlyShift(int monthlyShiftId);
  deleteMonthlyShift(int monthlyShiftId);
}
