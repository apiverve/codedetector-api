/// Response models for the Code Detector API.

/// API Response wrapper.
class CodedetectorResponse {
  final String status;
  final dynamic error;
  final CodedetectorData? data;

  CodedetectorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory CodedetectorResponse.fromJson(Map<String, dynamic> json) => CodedetectorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CodedetectorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Code Detector API.

class CodedetectorData {
  double? likelihood;
  String? family;
  String? current;
  String? readable;
  String? extension;

  CodedetectorData({
    this.likelihood,
    this.family,
    this.current,
    this.readable,
    this.extension,
  });

  factory CodedetectorData.fromJson(Map<String, dynamic> json) => CodedetectorData(
      likelihood: json['likelihood'],
      family: json['family'],
      current: json['current'],
      readable: json['readable'],
      extension: json['extension'],
    );
}

class CodedetectorRequest {
  String code;

  CodedetectorRequest({
    required this.code,
  });

  Map<String, dynamic> toJson() => {
      'code': code,
    };
}
