class WeatherModel {
  String? id;
  String? cityId;
  String? datetime;
  String? cloudAmount;
  double? airT;
  Null? meteors;
  String? weatherCode;
  int? datetimeMs;
  City? city;
  String? timeOfDay;

  WeatherModel(
      {this.id,
      this.cityId,
      this.datetime,
      this.cloudAmount,
      this.airT,
      this.meteors,
      this.weatherCode,
      this.datetimeMs,
      this.city,
      this.timeOfDay});

  WeatherModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cityId = json['city_id'];
    datetime = json['datetime'];
    cloudAmount = json['cloud_amount'];
    airT = json['air_t'];
    meteors = json['meteors'];
    weatherCode = json['weather_code'];
    datetimeMs = json['datetime_ms'];
    city = json['city'] != null ? new City.fromJson(json['city']) : null;
    timeOfDay = json['time_of_day'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['city_id'] = this.cityId;
    data['datetime'] = this.datetime;
    data['cloud_amount'] = this.cloudAmount;
    data['air_t'] = this.airT;
    data['meteors'] = this.meteors;
    data['weather_code'] = this.weatherCode;
    data['datetime_ms'] = this.datetimeMs;
    if (this.city != null) {
      data['city'] = this.city!.toJson();
    }
    data['time_of_day'] = this.timeOfDay;
    return data;
  }
}

class City {
  String? id;
  String? regionId;
  String? name;
  bool? isRegionalCenter;
  double? latitude;
  double? longitude;
  String? hasData;
  String? hasClimaticData;
  String? isVisible;
  String? title;

  City(
      {this.id,
      this.regionId,
      this.name,
      this.isRegionalCenter,
      this.latitude,
      this.longitude,
      this.hasData,
      this.hasClimaticData,
      this.isVisible,
      this.title});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    regionId = json['region_id'];
    name = json['name'];
    isRegionalCenter = json['is_regional_center'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    hasData = json['has_data'];
    hasClimaticData = json['has_climatic_data'];
    isVisible = json['is_visible'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['region_id'] = this.regionId;
    data['name'] = this.name;
    data['is_regional_center'] = this.isRegionalCenter;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['has_data'] = this.hasData;
    data['has_climatic_data'] = this.hasClimaticData;
    data['is_visible'] = this.isVisible;
    data['title'] = this.title;
    return data;
  }
}
