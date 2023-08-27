class AdditionalInfo{
  String infoAbout ;
  String iconUrl ;
  String infoDetail;

  AdditionalInfo({
    required this.infoAbout,
    required this.iconUrl,
    required this.infoDetail,
  });

  static List<AdditionalInfo> getAllAdditionalInfo(){

    List<AdditionalInfo> additionalInfo = [];

    additionalInfo.add(
      AdditionalInfo(infoAbout: "Walking Steps", iconUrl: "lib/presentation/assets/icons/footprints-svgrepo-com.svg", infoDetail: "12 km")
    );

    additionalInfo.add(
        AdditionalInfo(infoAbout: "Activity", iconUrl: "lib/presentation/assets/icons/yoga-svgrepo-com.svg", infoDetail: "Yoga")
    );

    additionalInfo.add(
        AdditionalInfo(infoAbout: "Temperature", iconUrl: "lib/presentation/assets/icons/thermometer-svgrepo-com.svg", infoDetail: "36.9\u00B0C")
    );

    additionalInfo.add(
        AdditionalInfo(infoAbout: "Sleep time", iconUrl: "lib/presentation/assets/icons/sleep-svgrepo-com.svg", infoDetail: "7 hours")
    );

    return additionalInfo ;
  }
}