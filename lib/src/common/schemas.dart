part of dfareporting_v1_1_api_client;

/** Represents an activity group. */
class Activities {

  /** List of activity filters. The dimension values need to be all either of type "dfa:activity" or "dfa:activityGroup". */
  List<DimensionValue> filters;

  /** The kind of resource this is, in this case dfareporting#activities. */
  String kind;

  /** List of names of floodlight activity metrics. */
  List<String> metricNames;

  /** Create new Activities from JSON data */
  Activities.fromJson(Map json) {
    if (json.containsKey("filters")) {
      filters = [];
      json["filters"].forEach((item) {
        filters.add(new DimensionValue.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("metricNames")) {
      metricNames = [];
      json["metricNames"].forEach((item) {
        metricNames.add(item);
      });
    }
  }

  /** Create JSON Object for Activities */
  Map toJson() {
    var output = new Map();

    if (filters != null) {
      output["filters"] = new List();
      filters.forEach((item) {
        output["filters"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (metricNames != null) {
      output["metricNames"] = new List();
      metricNames.forEach((item) {
        output["metricNames"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of Activities */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a Custom Rich Media Events group. */
class CustomRichMediaEvents {

  /** List of custom rich media event IDs. Dimension values must be all of type dfa:richMediaEventTypeIdAndName. */
  List<DimensionValue> filteredEventIds;

  /** The kind of resource this is, in this case dfareporting#customRichMediaEvents. */
  String kind;

  /** Create new CustomRichMediaEvents from JSON data */
  CustomRichMediaEvents.fromJson(Map json) {
    if (json.containsKey("filteredEventIds")) {
      filteredEventIds = [];
      json["filteredEventIds"].forEach((item) {
        filteredEventIds.add(new DimensionValue.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for CustomRichMediaEvents */
  Map toJson() {
    var output = new Map();

    if (filteredEventIds != null) {
      output["filteredEventIds"] = new List();
      filteredEventIds.forEach((item) {
        output["filteredEventIds"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of CustomRichMediaEvents */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a date range. */
class DateRange {

  /** The end date of the date range, inclusive. A string of the format: "yyyy-MM-dd". */
  String endDate;

  /** The kind of resource this is, in this case dfareporting#dateRange. */
  String kind;

  /** The date range relative to the date of when the report is run, one of:  
- "TODAY" 
- "YESTERDAY" 
- "WEEK_TO_DATE" 
- "MONTH_TO_DATE" 
- "QUARTER_TO_DATE" 
- "YEAR_TO_DATE" 
- "PREVIOUS_WEEK" 
- "PREVIOUS_MONTH" 
- "PREVIOUS_QUARTER" 
- "PREVIOUS_YEAR" 
- "LAST_7_DAYS" 
- "LAST_30_DAYS" 
- "LAST_90_DAYS" 
- "LAST_365_DAYS" 
- "LAST_24_MONTHS" */
  String relativeDateRange;

  /** The start date of the date range, inclusive. A string of the format: "yyyy-MM-dd". */
  String startDate;

  /** Create new DateRange from JSON data */
  DateRange.fromJson(Map json) {
    if (json.containsKey("endDate")) {
      endDate = json["endDate"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("relativeDateRange")) {
      relativeDateRange = json["relativeDateRange"];
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
  }

  /** Create JSON Object for DateRange */
  Map toJson() {
    var output = new Map();

    if (endDate != null) {
      output["endDate"] = endDate;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (relativeDateRange != null) {
      output["relativeDateRange"] = relativeDateRange;
    }
    if (startDate != null) {
      output["startDate"] = startDate;
    }

    return output;
  }

  /** Return String representation of DateRange */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a dimension filter. */
class DimensionFilter {

  /** The name of the dimension to filter. */
  String dimensionName;

  /** The kind of resource this is, in this case dfareporting#dimensionFilter. */
  String kind;

  /** The value of the dimension to filter. */
  String value;

  /** Create new DimensionFilter from JSON data */
  DimensionFilter.fromJson(Map json) {
    if (json.containsKey("dimensionName")) {
      dimensionName = json["dimensionName"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for DimensionFilter */
  Map toJson() {
    var output = new Map();

    if (dimensionName != null) {
      output["dimensionName"] = dimensionName;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of DimensionFilter */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a DimensionValue resource. */
class DimensionValue {

  /** The name of the dimension. */
  String dimensionName;

  /** The eTag of this response for caching purposes. */
  String etag;

  /** The ID associated with the value if available. */
  String id;

  /** The kind of resource this is, in this case dfareporting#dimensionValue. */
  String kind;

  /** The value of the dimension. */
  String value;

  /** Create new DimensionValue from JSON data */
  DimensionValue.fromJson(Map json) {
    if (json.containsKey("dimensionName")) {
      dimensionName = json["dimensionName"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for DimensionValue */
  Map toJson() {
    var output = new Map();

    if (dimensionName != null) {
      output["dimensionName"] = dimensionName;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of DimensionValue */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents the list of DimensionValue resources. */
class DimensionValueList {

  /** The eTag of this response for caching purposes. */
  String etag;

  /** The dimension values returned in this response. */
  List<DimensionValue> items;

  /** The kind of list this is, in this case dfareporting#dimensionValueList. */
  String kind;

  /** Continuation token used to page through dimension values. To retrieve the next page of results, set the next request's "pageToken" to the value of this field. The page token is only valid for a limited amount of time and should not be persisted. */
  String nextPageToken;

  /** Create new DimensionValueList from JSON data */
  DimensionValueList.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new DimensionValue.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for DimensionValueList */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of DimensionValueList */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a DimensionValuesRequest. */
class DimensionValueRequest {

  /** The name of the dimension for which values should be requested. */
  String dimensionName;

  /** The end date of the date range for which to retrieve dimension values. A string of the format: "yyyy-MM-dd". */
  String endDate;

  /** The list of filters by which to filter values. The filters are ANDed. */
  List<DimensionFilter> filters;

  /** The kind of request this is, in this case dfareporting#dimensionValueRequest. */
  String kind;

  /** The start date of the date range for which to retrieve dimension values. A string of the format: "yyyy-MM-dd". */
  String startDate;

  /** Create new DimensionValueRequest from JSON data */
  DimensionValueRequest.fromJson(Map json) {
    if (json.containsKey("dimensionName")) {
      dimensionName = json["dimensionName"];
    }
    if (json.containsKey("endDate")) {
      endDate = json["endDate"];
    }
    if (json.containsKey("filters")) {
      filters = [];
      json["filters"].forEach((item) {
        filters.add(new DimensionFilter.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
  }

  /** Create JSON Object for DimensionValueRequest */
  Map toJson() {
    var output = new Map();

    if (dimensionName != null) {
      output["dimensionName"] = dimensionName;
    }
    if (endDate != null) {
      output["endDate"] = endDate;
    }
    if (filters != null) {
      output["filters"] = new List();
      filters.forEach((item) {
        output["filters"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (startDate != null) {
      output["startDate"] = startDate;
    }

    return output;
  }

  /** Return String representation of DimensionValueRequest */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a File resource. A File contains the meta-data for a report run. It shows the status of the run and holds the urls to the generated report data if the run is finished and the status is "REPORT_AVAILABLE". */
class File {

  /** The date range for which the file has report data. The date range will always be the absolute date range for which the report is run. */
  DateRange dateRange;

  /** The eTag of this response for caching purposes. */
  String etag;

  /** The file name of the file. */
  String fileName;

  /** The output format of the report. Only available once the file is available. */
  String format;

  /** The unique ID of this report file. */
  String id;

  /** The kind of resource this is, in this case dfareporting#file. */
  String kind;

  /** The timestamp in milliseconds since epoch when this file was last modified. */
  String lastModifiedTime;

  /** The ID of the report this file was generated from. */
  String reportId;

  /** The status of the report file, one of:  
- "PROCESSING" 
- "REPORT_AVAILABLE" 
- "FAILED" 
- "CANCELLED" */
  String status;

  /** The urls where the completed report file can be downloaded. */
  FileUrls urls;

  /** Create new File from JSON data */
  File.fromJson(Map json) {
    if (json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(json["dateRange"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("fileName")) {
      fileName = json["fileName"];
    }
    if (json.containsKey("format")) {
      format = json["format"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("reportId")) {
      reportId = json["reportId"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("urls")) {
      urls = new FileUrls.fromJson(json["urls"]);
    }
  }

  /** Create JSON Object for File */
  Map toJson() {
    var output = new Map();

    if (dateRange != null) {
      output["dateRange"] = dateRange.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (fileName != null) {
      output["fileName"] = fileName;
    }
    if (format != null) {
      output["format"] = format;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (reportId != null) {
      output["reportId"] = reportId;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (urls != null) {
      output["urls"] = urls.toJson();
    }

    return output;
  }

  /** Return String representation of File */
  String toString() => JSON.stringify(this.toJson());

}

/** The urls where the completed report file can be downloaded. */
class FileUrls {

  /** The url for downloading the report data through the API. */
  String apiUrl;

  /** The url for downloading the report data through a browser. */
  String browserUrl;

  /** Create new FileUrls from JSON data */
  FileUrls.fromJson(Map json) {
    if (json.containsKey("apiUrl")) {
      apiUrl = json["apiUrl"];
    }
    if (json.containsKey("browserUrl")) {
      browserUrl = json["browserUrl"];
    }
  }

  /** Create JSON Object for FileUrls */
  Map toJson() {
    var output = new Map();

    if (apiUrl != null) {
      output["apiUrl"] = apiUrl;
    }
    if (browserUrl != null) {
      output["browserUrl"] = browserUrl;
    }

    return output;
  }

  /** Return String representation of FileUrls */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents the list of File resources. */
class FileList {

  /** The eTag of this response for caching purposes. */
  String etag;

  /** The files returned in this response. */
  List<File> items;

  /** The kind of list this is, in this case dfareporting#fileList. */
  String kind;

  /** Continuation token used to page through files. To retrieve the next page of results, set the next request's "pageToken" to the value of this field. The page token is only valid for a limited amount of time and should not be persisted. */
  String nextPageToken;

  /** Create new FileList from JSON data */
  FileList.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new File.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for FileList */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of FileList */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a recipient. */
class Recipient {

  /** The delivery type for the recipient, one of:  
- "ATTACHMENT" 
- "LINK" */
  String deliveryType;

  /** The email address of the recipient. */
  String email;

  /** The kind of resource this is, in this case dfareporting#recipient. */
  String kind;

  /** Create new Recipient from JSON data */
  Recipient.fromJson(Map json) {
    if (json.containsKey("deliveryType")) {
      deliveryType = json["deliveryType"];
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Recipient */
  Map toJson() {
    var output = new Map();

    if (deliveryType != null) {
      output["deliveryType"] = deliveryType;
    }
    if (email != null) {
      output["email"] = email;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Recipient */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a Report resource. */
class Report {

  /** The account ID to which this report belongs. */
  String accountId;

  /** The report criteria for a report of type "ACTIVE_GRP". */
  ReportActiveGrpCriteria activeGrpCriteria;

  /** The report criteria for a report of type "STANDARD". */
  ReportCriteria criteria;

  /** The report criteria for a report of type "CROSS_DIMENSION_REACH". */
  ReportCrossDimensionReachCriteria crossDimensionReachCriteria;

  /** The report's email delivery settings. */
  ReportDelivery delivery;

  /** The eTag of this response for caching purposes. */
  String etag;

  /** The file name used when generating report files for this report. */
  String fileName;

  /** The report criteria for a report of type "FLOODLIGHT". */
  ReportFloodlightCriteria floodlightCriteria;

  /** The output format of the report, one of:  
- "CSV" 
- "EXCEL"  If not specified, default format is "CSV". Note that the actual format in the completed report file might differ if for instance the report's size exceeds the format's capabilities. "CSV" will then be the fallback format. */
  String format;

  /** The unique ID identifying this report resource. */
  String id;

  /** The kind of resource this is, in this case dfareporting#report. */
  String kind;

  /** The timestamp (in milliseconds since epoch) of when this report was last modified. */
  String lastModifiedTime;

  /** The name of the report. */
  String name;

  /** The user profile id of the owner of this report. */
  String ownerProfileId;

  /** The report criteria for a report of type "PATH_TO_CONVERSION". */
  ReportPathToConversionCriteria pathToConversionCriteria;

  /** The report criteria for a report of type "REACH". */
  ReportReachCriteria reachCriteria;

  /** The report's schedule. Can only be set if the report's 'dateRange' is a relative date range and the relative date range is not "TODAY". */
  ReportSchedule schedule;

  /** The subbaccount ID to which this report belongs if applicable. */
  String subAccountId;

  /** The type of the report, one of:  
- STANDARD 
- REACH 
- ACTIVE_GRP 
- PATH_TO_CONVERSION 
- FLOODLIGHT 
- CROSS_DIMENSION_REACH */
  String type;

  /** Create new Report from JSON data */
  Report.fromJson(Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("activeGrpCriteria")) {
      activeGrpCriteria = new ReportActiveGrpCriteria.fromJson(json["activeGrpCriteria"]);
    }
    if (json.containsKey("criteria")) {
      criteria = new ReportCriteria.fromJson(json["criteria"]);
    }
    if (json.containsKey("crossDimensionReachCriteria")) {
      crossDimensionReachCriteria = new ReportCrossDimensionReachCriteria.fromJson(json["crossDimensionReachCriteria"]);
    }
    if (json.containsKey("delivery")) {
      delivery = new ReportDelivery.fromJson(json["delivery"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("fileName")) {
      fileName = json["fileName"];
    }
    if (json.containsKey("floodlightCriteria")) {
      floodlightCriteria = new ReportFloodlightCriteria.fromJson(json["floodlightCriteria"]);
    }
    if (json.containsKey("format")) {
      format = json["format"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("ownerProfileId")) {
      ownerProfileId = json["ownerProfileId"];
    }
    if (json.containsKey("pathToConversionCriteria")) {
      pathToConversionCriteria = new ReportPathToConversionCriteria.fromJson(json["pathToConversionCriteria"]);
    }
    if (json.containsKey("reachCriteria")) {
      reachCriteria = new ReportReachCriteria.fromJson(json["reachCriteria"]);
    }
    if (json.containsKey("schedule")) {
      schedule = new ReportSchedule.fromJson(json["schedule"]);
    }
    if (json.containsKey("subAccountId")) {
      subAccountId = json["subAccountId"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Report */
  Map toJson() {
    var output = new Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (activeGrpCriteria != null) {
      output["activeGrpCriteria"] = activeGrpCriteria.toJson();
    }
    if (criteria != null) {
      output["criteria"] = criteria.toJson();
    }
    if (crossDimensionReachCriteria != null) {
      output["crossDimensionReachCriteria"] = crossDimensionReachCriteria.toJson();
    }
    if (delivery != null) {
      output["delivery"] = delivery.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (fileName != null) {
      output["fileName"] = fileName;
    }
    if (floodlightCriteria != null) {
      output["floodlightCriteria"] = floodlightCriteria.toJson();
    }
    if (format != null) {
      output["format"] = format;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (ownerProfileId != null) {
      output["ownerProfileId"] = ownerProfileId;
    }
    if (pathToConversionCriteria != null) {
      output["pathToConversionCriteria"] = pathToConversionCriteria.toJson();
    }
    if (reachCriteria != null) {
      output["reachCriteria"] = reachCriteria.toJson();
    }
    if (schedule != null) {
      output["schedule"] = schedule.toJson();
    }
    if (subAccountId != null) {
      output["subAccountId"] = subAccountId;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Report */
  String toString() => JSON.stringify(this.toJson());

}

/** The report criteria for a report of type "ACTIVE_GRP". */
class ReportActiveGrpCriteria {

  /** The date range this report should be run for. */
  DateRange dateRange;

  /** The list of filters on which dimensions are filtered.
Filters for different dimensions are ANDed, filters for the same dimension are grouped together and ORed.
A valid active GRP report needs to have exactly one DimensionValue for the United States in addition to any advertiser or campaign dimension values. */
  List<DimensionValue> dimensionFilters;

  /** The list of dimensions the report should include. */
  List<SortedDimension> dimensions;

  /** The list of names of metrics the report should include. */
  List<String> metricNames;

  /** Create new ReportActiveGrpCriteria from JSON data */
  ReportActiveGrpCriteria.fromJson(Map json) {
    if (json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(json["dateRange"]);
    }
    if (json.containsKey("dimensionFilters")) {
      dimensionFilters = [];
      json["dimensionFilters"].forEach((item) {
        dimensionFilters.add(new DimensionValue.fromJson(item));
      });
    }
    if (json.containsKey("dimensions")) {
      dimensions = [];
      json["dimensions"].forEach((item) {
        dimensions.add(new SortedDimension.fromJson(item));
      });
    }
    if (json.containsKey("metricNames")) {
      metricNames = [];
      json["metricNames"].forEach((item) {
        metricNames.add(item);
      });
    }
  }

  /** Create JSON Object for ReportActiveGrpCriteria */
  Map toJson() {
    var output = new Map();

    if (dateRange != null) {
      output["dateRange"] = dateRange.toJson();
    }
    if (dimensionFilters != null) {
      output["dimensionFilters"] = new List();
      dimensionFilters.forEach((item) {
        output["dimensionFilters"].add(item.toJson());
      });
    }
    if (dimensions != null) {
      output["dimensions"] = new List();
      dimensions.forEach((item) {
        output["dimensions"].add(item.toJson());
      });
    }
    if (metricNames != null) {
      output["metricNames"] = new List();
      metricNames.forEach((item) {
        output["metricNames"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of ReportActiveGrpCriteria */
  String toString() => JSON.stringify(this.toJson());

}

/** The report criteria for a report of type "CROSS_DIMENSION_REACH". */
class ReportCrossDimensionReachCriteria {

  /** The list of dimensions the report should include. */
  List<SortedDimension> breakdown;

  /** The date range this report should be run for. */
  DateRange dateRange;

  /** The dimension option, one of:  
- "ADVERTISER" 
- "CAMPAIGN" 
- "SITE_BY_ADVERTISER" 
- "SITE_BY_CAMPAIGN" */
  String dimension;

  /** The list of filters on which dimensions are filtered. */
  List<DimensionValue> dimensionFilters;

  /** The list of names of metrics the report should include. */
  List<String> metricNames;

  /** The list of names of overlap metrics the report should include. */
  List<String> overlapMetricNames;

  /** Whether the report is pivoted or not. Defaults to true. */
  bool pivoted;

  /** Create new ReportCrossDimensionReachCriteria from JSON data */
  ReportCrossDimensionReachCriteria.fromJson(Map json) {
    if (json.containsKey("breakdown")) {
      breakdown = [];
      json["breakdown"].forEach((item) {
        breakdown.add(new SortedDimension.fromJson(item));
      });
    }
    if (json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(json["dateRange"]);
    }
    if (json.containsKey("dimension")) {
      dimension = json["dimension"];
    }
    if (json.containsKey("dimensionFilters")) {
      dimensionFilters = [];
      json["dimensionFilters"].forEach((item) {
        dimensionFilters.add(new DimensionValue.fromJson(item));
      });
    }
    if (json.containsKey("metricNames")) {
      metricNames = [];
      json["metricNames"].forEach((item) {
        metricNames.add(item);
      });
    }
    if (json.containsKey("overlapMetricNames")) {
      overlapMetricNames = [];
      json["overlapMetricNames"].forEach((item) {
        overlapMetricNames.add(item);
      });
    }
    if (json.containsKey("pivoted")) {
      pivoted = json["pivoted"];
    }
  }

  /** Create JSON Object for ReportCrossDimensionReachCriteria */
  Map toJson() {
    var output = new Map();

    if (breakdown != null) {
      output["breakdown"] = new List();
      breakdown.forEach((item) {
        output["breakdown"].add(item.toJson());
      });
    }
    if (dateRange != null) {
      output["dateRange"] = dateRange.toJson();
    }
    if (dimension != null) {
      output["dimension"] = dimension;
    }
    if (dimensionFilters != null) {
      output["dimensionFilters"] = new List();
      dimensionFilters.forEach((item) {
        output["dimensionFilters"].add(item.toJson());
      });
    }
    if (metricNames != null) {
      output["metricNames"] = new List();
      metricNames.forEach((item) {
        output["metricNames"].add(item);
      });
    }
    if (overlapMetricNames != null) {
      output["overlapMetricNames"] = new List();
      overlapMetricNames.forEach((item) {
        output["overlapMetricNames"].add(item);
      });
    }
    if (pivoted != null) {
      output["pivoted"] = pivoted;
    }

    return output;
  }

  /** Return String representation of ReportCrossDimensionReachCriteria */
  String toString() => JSON.stringify(this.toJson());

}

/** The report's email delivery settings. */
class ReportDelivery {

  /** Whether the report should be emailed to the report owner. */
  bool emailOwner;

  /** The type of delivery for the owner to receive, if enabled. One of:  
- "ATTACHMENT" 
- "LINK" */
  String emailOwnerDeliveryType;

  /** The message to be sent with each email. */
  String message;

  /** The list of recipients to which to email the report. */
  List<Recipient> recipients;

  /** Create new ReportDelivery from JSON data */
  ReportDelivery.fromJson(Map json) {
    if (json.containsKey("emailOwner")) {
      emailOwner = json["emailOwner"];
    }
    if (json.containsKey("emailOwnerDeliveryType")) {
      emailOwnerDeliveryType = json["emailOwnerDeliveryType"];
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
    if (json.containsKey("recipients")) {
      recipients = [];
      json["recipients"].forEach((item) {
        recipients.add(new Recipient.fromJson(item));
      });
    }
  }

  /** Create JSON Object for ReportDelivery */
  Map toJson() {
    var output = new Map();

    if (emailOwner != null) {
      output["emailOwner"] = emailOwner;
    }
    if (emailOwnerDeliveryType != null) {
      output["emailOwnerDeliveryType"] = emailOwnerDeliveryType;
    }
    if (message != null) {
      output["message"] = message;
    }
    if (recipients != null) {
      output["recipients"] = new List();
      recipients.forEach((item) {
        output["recipients"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of ReportDelivery */
  String toString() => JSON.stringify(this.toJson());

}

/** The report criteria for a report of type "PATH_TO_CONVERSION". */
class ReportPathToConversionCriteria {

  /** The list of 'dfa:activity' values to filter on. */
  List<DimensionValue> activityFilters;

  /** The list of conversion dimensions the report should include. */
  List<SortedDimension> conversionDimensions;

  /** The list of custom floodlight variables the report should include. */
  List<SortedDimension> customFloodlightVariables;

  /** The date range this report should be run for. */
  DateRange dateRange;

  /** The floodlight ID for which to show data in this report. All advertisers associated with that ID will automatically be added. The dimension of the value needs to be 'dfa:floodlightConfigId'. */
  DimensionValue floodlightConfigId;

  /** The list of names of metrics the report should include. */
  List<String> metricNames;

  /** The list of per interaction dimensions the report should include. */
  List<SortedDimension> perInteractionDimensions;

  /** The properties of the report. */
  ReportPathToConversionCriteriaReportProperties reportProperties;

  /** Create new ReportPathToConversionCriteria from JSON data */
  ReportPathToConversionCriteria.fromJson(Map json) {
    if (json.containsKey("activityFilters")) {
      activityFilters = [];
      json["activityFilters"].forEach((item) {
        activityFilters.add(new DimensionValue.fromJson(item));
      });
    }
    if (json.containsKey("conversionDimensions")) {
      conversionDimensions = [];
      json["conversionDimensions"].forEach((item) {
        conversionDimensions.add(new SortedDimension.fromJson(item));
      });
    }
    if (json.containsKey("customFloodlightVariables")) {
      customFloodlightVariables = [];
      json["customFloodlightVariables"].forEach((item) {
        customFloodlightVariables.add(new SortedDimension.fromJson(item));
      });
    }
    if (json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(json["dateRange"]);
    }
    if (json.containsKey("floodlightConfigId")) {
      floodlightConfigId = new DimensionValue.fromJson(json["floodlightConfigId"]);
    }
    if (json.containsKey("metricNames")) {
      metricNames = [];
      json["metricNames"].forEach((item) {
        metricNames.add(item);
      });
    }
    if (json.containsKey("perInteractionDimensions")) {
      perInteractionDimensions = [];
      json["perInteractionDimensions"].forEach((item) {
        perInteractionDimensions.add(new SortedDimension.fromJson(item));
      });
    }
    if (json.containsKey("reportProperties")) {
      reportProperties = new ReportPathToConversionCriteriaReportProperties.fromJson(json["reportProperties"]);
    }
  }

  /** Create JSON Object for ReportPathToConversionCriteria */
  Map toJson() {
    var output = new Map();

    if (activityFilters != null) {
      output["activityFilters"] = new List();
      activityFilters.forEach((item) {
        output["activityFilters"].add(item.toJson());
      });
    }
    if (conversionDimensions != null) {
      output["conversionDimensions"] = new List();
      conversionDimensions.forEach((item) {
        output["conversionDimensions"].add(item.toJson());
      });
    }
    if (customFloodlightVariables != null) {
      output["customFloodlightVariables"] = new List();
      customFloodlightVariables.forEach((item) {
        output["customFloodlightVariables"].add(item.toJson());
      });
    }
    if (dateRange != null) {
      output["dateRange"] = dateRange.toJson();
    }
    if (floodlightConfigId != null) {
      output["floodlightConfigId"] = floodlightConfigId.toJson();
    }
    if (metricNames != null) {
      output["metricNames"] = new List();
      metricNames.forEach((item) {
        output["metricNames"].add(item);
      });
    }
    if (perInteractionDimensions != null) {
      output["perInteractionDimensions"] = new List();
      perInteractionDimensions.forEach((item) {
        output["perInteractionDimensions"].add(item.toJson());
      });
    }
    if (reportProperties != null) {
      output["reportProperties"] = reportProperties.toJson();
    }

    return output;
  }

  /** Return String representation of ReportPathToConversionCriteria */
  String toString() => JSON.stringify(this.toJson());

}

/** The properties of the report. */
class ReportPathToConversionCriteriaReportProperties {

  /** DFA checks to see if a click interaction occurred within the specified period of time before a conversion. By default the value is pulled from Floodlight or you can manually enter a custom value. Valid values: 1-90. */
  int clicksLookbackWindow;

  /** DFA checks to see if an impression interaction occurred within the specified period of time before a conversion. By default the value is pulled from Floodlight or you can manually enter a custom value. Valid values: 1-90. */
  int impressionsLookbackWindow;

  /** Include conversions that have no cookie, but do have an exposure path. */
  bool includeAttributedIPConversions;

  /** Include conversions of users with a DoubleClick cookie but without an exposure. That means the user did not click or see an ad from the advertiser within the Floodlight group, or that the interaction happened outside the lookback window. */
  bool includeUnattributedCookieConversions;

  /** Include conversions that have no associated cookies and no exposures. Itâs therefore impossible to know how the user was exposed to your ads during the lookback window prior to a conversion. */
  bool includeUnattributedIPConversions;

  /** The maximum number of click interactions to include in the report. Advertisers currently paying for E2C reports get up to 200 (100 clicks, 100 impressions). If another advertiser in your network is paying for E2C, you can have up to 5 total exposures per report. */
  int maximumClickInteractions;

  /** The maximum number of click interactions to include in the report. Advertisers currently paying for E2C reports get up to 200 (100 clicks, 100 impressions). If another advertiser in your network is paying for E2C, you can have up to 5 total exposures per report. */
  int maximumImpressionInteractions;

  /** The maximum amount of time that can take place between interactions (clicks or impressions) by the same user. Valid values: 1-90. */
  int maximumInteractionGap;

  /** Enable pivoting on interaction path. */
  bool pivotOnInteractionPath;

  /** Create new ReportPathToConversionCriteriaReportProperties from JSON data */
  ReportPathToConversionCriteriaReportProperties.fromJson(Map json) {
    if (json.containsKey("clicksLookbackWindow")) {
      clicksLookbackWindow = json["clicksLookbackWindow"];
    }
    if (json.containsKey("impressionsLookbackWindow")) {
      impressionsLookbackWindow = json["impressionsLookbackWindow"];
    }
    if (json.containsKey("includeAttributedIPConversions")) {
      includeAttributedIPConversions = json["includeAttributedIPConversions"];
    }
    if (json.containsKey("includeUnattributedCookieConversions")) {
      includeUnattributedCookieConversions = json["includeUnattributedCookieConversions"];
    }
    if (json.containsKey("includeUnattributedIPConversions")) {
      includeUnattributedIPConversions = json["includeUnattributedIPConversions"];
    }
    if (json.containsKey("maximumClickInteractions")) {
      maximumClickInteractions = json["maximumClickInteractions"];
    }
    if (json.containsKey("maximumImpressionInteractions")) {
      maximumImpressionInteractions = json["maximumImpressionInteractions"];
    }
    if (json.containsKey("maximumInteractionGap")) {
      maximumInteractionGap = json["maximumInteractionGap"];
    }
    if (json.containsKey("pivotOnInteractionPath")) {
      pivotOnInteractionPath = json["pivotOnInteractionPath"];
    }
  }

  /** Create JSON Object for ReportPathToConversionCriteriaReportProperties */
  Map toJson() {
    var output = new Map();

    if (clicksLookbackWindow != null) {
      output["clicksLookbackWindow"] = clicksLookbackWindow;
    }
    if (impressionsLookbackWindow != null) {
      output["impressionsLookbackWindow"] = impressionsLookbackWindow;
    }
    if (includeAttributedIPConversions != null) {
      output["includeAttributedIPConversions"] = includeAttributedIPConversions;
    }
    if (includeUnattributedCookieConversions != null) {
      output["includeUnattributedCookieConversions"] = includeUnattributedCookieConversions;
    }
    if (includeUnattributedIPConversions != null) {
      output["includeUnattributedIPConversions"] = includeUnattributedIPConversions;
    }
    if (maximumClickInteractions != null) {
      output["maximumClickInteractions"] = maximumClickInteractions;
    }
    if (maximumImpressionInteractions != null) {
      output["maximumImpressionInteractions"] = maximumImpressionInteractions;
    }
    if (maximumInteractionGap != null) {
      output["maximumInteractionGap"] = maximumInteractionGap;
    }
    if (pivotOnInteractionPath != null) {
      output["pivotOnInteractionPath"] = pivotOnInteractionPath;
    }

    return output;
  }

  /** Return String representation of ReportPathToConversionCriteriaReportProperties */
  String toString() => JSON.stringify(this.toJson());

}

/** The report criteria for a report of type "STANDARD". */
class ReportCriteria {

  /** Activity group. */
  Activities activities;

  /** Custom Rich Media Events group. */
  CustomRichMediaEvents customRichMediaEvents;

  /** The date range for which this report should be run. */
  DateRange dateRange;

  /** The list of filters on which dimensions are filtered.
Filters for different dimensions are ANDed, filters for the same dimension are grouped together and ORed. */
  List<DimensionValue> dimensionFilters;

  /** The list of standard dimensions the report should include. */
  List<SortedDimension> dimensions;

  /** The list of names of metrics the report should include. */
  List<String> metricNames;

  /** Create new ReportCriteria from JSON data */
  ReportCriteria.fromJson(Map json) {
    if (json.containsKey("activities")) {
      activities = new Activities.fromJson(json["activities"]);
    }
    if (json.containsKey("customRichMediaEvents")) {
      customRichMediaEvents = new CustomRichMediaEvents.fromJson(json["customRichMediaEvents"]);
    }
    if (json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(json["dateRange"]);
    }
    if (json.containsKey("dimensionFilters")) {
      dimensionFilters = [];
      json["dimensionFilters"].forEach((item) {
        dimensionFilters.add(new DimensionValue.fromJson(item));
      });
    }
    if (json.containsKey("dimensions")) {
      dimensions = [];
      json["dimensions"].forEach((item) {
        dimensions.add(new SortedDimension.fromJson(item));
      });
    }
    if (json.containsKey("metricNames")) {
      metricNames = [];
      json["metricNames"].forEach((item) {
        metricNames.add(item);
      });
    }
  }

  /** Create JSON Object for ReportCriteria */
  Map toJson() {
    var output = new Map();

    if (activities != null) {
      output["activities"] = activities.toJson();
    }
    if (customRichMediaEvents != null) {
      output["customRichMediaEvents"] = customRichMediaEvents.toJson();
    }
    if (dateRange != null) {
      output["dateRange"] = dateRange.toJson();
    }
    if (dimensionFilters != null) {
      output["dimensionFilters"] = new List();
      dimensionFilters.forEach((item) {
        output["dimensionFilters"].add(item.toJson());
      });
    }
    if (dimensions != null) {
      output["dimensions"] = new List();
      dimensions.forEach((item) {
        output["dimensions"].add(item.toJson());
      });
    }
    if (metricNames != null) {
      output["metricNames"] = new List();
      metricNames.forEach((item) {
        output["metricNames"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of ReportCriteria */
  String toString() => JSON.stringify(this.toJson());

}

/** The report criteria for a report of type "FLOODLIGHT". */
class ReportFloodlightCriteria {

  /** The date range this report should be run for. */
  DateRange dateRange;

  /** The list of filters on which dimensions are filtered.
Filters for different dimensions are ANDed, filters for the same dimension are grouped together and ORed. */
  List<DimensionValue> dimensionFilters;

  /** The list of dimensions the report should include. */
  List<SortedDimension> dimensions;

  /** The floodlight ID for which to show data in this report. All advertisers associated with that ID will automatically be added. The dimension of the value needs to be 'dfa:floodlightConfigId'. */
  DimensionValue floodlightConfigId;

  /** The list of names of metrics the report should include. */
  List<String> metricNames;

  /** The properties of the report. */
  ReportFloodlightCriteriaReportProperties reportProperties;

  /** Create new ReportFloodlightCriteria from JSON data */
  ReportFloodlightCriteria.fromJson(Map json) {
    if (json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(json["dateRange"]);
    }
    if (json.containsKey("dimensionFilters")) {
      dimensionFilters = [];
      json["dimensionFilters"].forEach((item) {
        dimensionFilters.add(new DimensionValue.fromJson(item));
      });
    }
    if (json.containsKey("dimensions")) {
      dimensions = [];
      json["dimensions"].forEach((item) {
        dimensions.add(new SortedDimension.fromJson(item));
      });
    }
    if (json.containsKey("floodlightConfigId")) {
      floodlightConfigId = new DimensionValue.fromJson(json["floodlightConfigId"]);
    }
    if (json.containsKey("metricNames")) {
      metricNames = [];
      json["metricNames"].forEach((item) {
        metricNames.add(item);
      });
    }
    if (json.containsKey("reportProperties")) {
      reportProperties = new ReportFloodlightCriteriaReportProperties.fromJson(json["reportProperties"]);
    }
  }

  /** Create JSON Object for ReportFloodlightCriteria */
  Map toJson() {
    var output = new Map();

    if (dateRange != null) {
      output["dateRange"] = dateRange.toJson();
    }
    if (dimensionFilters != null) {
      output["dimensionFilters"] = new List();
      dimensionFilters.forEach((item) {
        output["dimensionFilters"].add(item.toJson());
      });
    }
    if (dimensions != null) {
      output["dimensions"] = new List();
      dimensions.forEach((item) {
        output["dimensions"].add(item.toJson());
      });
    }
    if (floodlightConfigId != null) {
      output["floodlightConfigId"] = floodlightConfigId.toJson();
    }
    if (metricNames != null) {
      output["metricNames"] = new List();
      metricNames.forEach((item) {
        output["metricNames"].add(item);
      });
    }
    if (reportProperties != null) {
      output["reportProperties"] = reportProperties.toJson();
    }

    return output;
  }

  /** Return String representation of ReportFloodlightCriteria */
  String toString() => JSON.stringify(this.toJson());

}

/** The properties of the report. */
class ReportFloodlightCriteriaReportProperties {

  /** Include conversions that have no cookie, but do have an exposure path. */
  bool includeAttributedIPConversions;

  /** Include conversions of users with a DoubleClick cookie but without an exposure. That means the user did not click or see an ad from the advertiser within the Floodlight group, or that the interaction happened outside the lookback window. */
  bool includeUnattributedCookieConversions;

  /** Include conversions that have no associated cookies and no exposures. Itâs therefore impossible to know how the user was exposed to your ads during the lookback window prior to a conversion. */
  bool includeUnattributedIPConversions;

  /** Create new ReportFloodlightCriteriaReportProperties from JSON data */
  ReportFloodlightCriteriaReportProperties.fromJson(Map json) {
    if (json.containsKey("includeAttributedIPConversions")) {
      includeAttributedIPConversions = json["includeAttributedIPConversions"];
    }
    if (json.containsKey("includeUnattributedCookieConversions")) {
      includeUnattributedCookieConversions = json["includeUnattributedCookieConversions"];
    }
    if (json.containsKey("includeUnattributedIPConversions")) {
      includeUnattributedIPConversions = json["includeUnattributedIPConversions"];
    }
  }

  /** Create JSON Object for ReportFloodlightCriteriaReportProperties */
  Map toJson() {
    var output = new Map();

    if (includeAttributedIPConversions != null) {
      output["includeAttributedIPConversions"] = includeAttributedIPConversions;
    }
    if (includeUnattributedCookieConversions != null) {
      output["includeUnattributedCookieConversions"] = includeUnattributedCookieConversions;
    }
    if (includeUnattributedIPConversions != null) {
      output["includeUnattributedIPConversions"] = includeUnattributedIPConversions;
    }

    return output;
  }

  /** Return String representation of ReportFloodlightCriteriaReportProperties */
  String toString() => JSON.stringify(this.toJson());

}

/** The report's schedule. Can only be set if the report's 'dateRange' is a relative date range and the relative date range is not "TODAY". */
class ReportSchedule {

  /** Whether the schedule is active or not. Must be set to either true or false. */
  bool active;

  /** Defines every how many days, weeks or months the report should be run. Needs to be set when "repeats" is either "DAILY", "WEEKLY" or "MONTHLY". */
  int every;

  /** The expiration date when the scheduled report stops running. */
  String expirationDate;

  /** The interval for which the report is repeated, one of:  
- "DAILY", also requires field "every" to be set. 
- "WEEKLY", also requires fields "every" and "repeatsOnWeekDays" to be set. 
- "TWICE_A_MONTH" 
- "MONTHLY", also requires fields "every" and "runsOnDayOfMonth" to be set. 
- "QUARTERLY" 
- "YEARLY" */
  String repeats;

  /** List of week days "WEEKLY" on which scheduled reports should run. */
  List<String> repeatsOnWeekDays;

  /** Enum to define for "MONTHLY" scheduled reports whether reports should be repeated on the same day of the month as "startDate" or the same day of the week of the month. Possible values are:  
- DAY_OF_MONTH 
- WEEK_OF_MONTH  
Example: If 'startDate' is Monday, April 2nd 2012 (2012-04-02), "DAY_OF_MONTH" would run subsequent reports on the 2nd of every Month, and "WEEK_OF_MONTH" would run subsequent reports on the first Monday of the month. */
  String runsOnDayOfMonth;

  /** Start date of date range for which scheduled reports should be run. */
  String startDate;

  /** Create new ReportSchedule from JSON data */
  ReportSchedule.fromJson(Map json) {
    if (json.containsKey("active")) {
      active = json["active"];
    }
    if (json.containsKey("every")) {
      every = json["every"];
    }
    if (json.containsKey("expirationDate")) {
      expirationDate = json["expirationDate"];
    }
    if (json.containsKey("repeats")) {
      repeats = json["repeats"];
    }
    if (json.containsKey("repeatsOnWeekDays")) {
      repeatsOnWeekDays = [];
      json["repeatsOnWeekDays"].forEach((item) {
        repeatsOnWeekDays.add(item);
      });
    }
    if (json.containsKey("runsOnDayOfMonth")) {
      runsOnDayOfMonth = json["runsOnDayOfMonth"];
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
  }

  /** Create JSON Object for ReportSchedule */
  Map toJson() {
    var output = new Map();

    if (active != null) {
      output["active"] = active;
    }
    if (every != null) {
      output["every"] = every;
    }
    if (expirationDate != null) {
      output["expirationDate"] = expirationDate;
    }
    if (repeats != null) {
      output["repeats"] = repeats;
    }
    if (repeatsOnWeekDays != null) {
      output["repeatsOnWeekDays"] = new List();
      repeatsOnWeekDays.forEach((item) {
        output["repeatsOnWeekDays"].add(item);
      });
    }
    if (runsOnDayOfMonth != null) {
      output["runsOnDayOfMonth"] = runsOnDayOfMonth;
    }
    if (startDate != null) {
      output["startDate"] = startDate;
    }

    return output;
  }

  /** Return String representation of ReportSchedule */
  String toString() => JSON.stringify(this.toJson());

}

/** The report criteria for a report of type "REACH". */
class ReportReachCriteria {

  /** Activity group. */
  Activities activities;

  /** Custom Rich Media Events group. */
  CustomRichMediaEvents customRichMediaEvents;

  /** The date range this report should be run for. */
  DateRange dateRange;

  /** The list of filters on which dimensions are filtered.
Filters for different dimensions are ANDed, filters for the same dimension are grouped together and ORed. */
  List<DimensionValue> dimensionFilters;

  /** The list of dimensions the report should include. */
  List<SortedDimension> dimensions;

  /** The list of names of metrics the report should include. */
  List<String> metricNames;

  /** The list of names of  Reach By Frequency metrics the report should include. */
  List<String> reachByFrequencyMetricNames;

  /** Create new ReportReachCriteria from JSON data */
  ReportReachCriteria.fromJson(Map json) {
    if (json.containsKey("activities")) {
      activities = new Activities.fromJson(json["activities"]);
    }
    if (json.containsKey("customRichMediaEvents")) {
      customRichMediaEvents = new CustomRichMediaEvents.fromJson(json["customRichMediaEvents"]);
    }
    if (json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(json["dateRange"]);
    }
    if (json.containsKey("dimensionFilters")) {
      dimensionFilters = [];
      json["dimensionFilters"].forEach((item) {
        dimensionFilters.add(new DimensionValue.fromJson(item));
      });
    }
    if (json.containsKey("dimensions")) {
      dimensions = [];
      json["dimensions"].forEach((item) {
        dimensions.add(new SortedDimension.fromJson(item));
      });
    }
    if (json.containsKey("metricNames")) {
      metricNames = [];
      json["metricNames"].forEach((item) {
        metricNames.add(item);
      });
    }
    if (json.containsKey("reachByFrequencyMetricNames")) {
      reachByFrequencyMetricNames = [];
      json["reachByFrequencyMetricNames"].forEach((item) {
        reachByFrequencyMetricNames.add(item);
      });
    }
  }

  /** Create JSON Object for ReportReachCriteria */
  Map toJson() {
    var output = new Map();

    if (activities != null) {
      output["activities"] = activities.toJson();
    }
    if (customRichMediaEvents != null) {
      output["customRichMediaEvents"] = customRichMediaEvents.toJson();
    }
    if (dateRange != null) {
      output["dateRange"] = dateRange.toJson();
    }
    if (dimensionFilters != null) {
      output["dimensionFilters"] = new List();
      dimensionFilters.forEach((item) {
        output["dimensionFilters"].add(item.toJson());
      });
    }
    if (dimensions != null) {
      output["dimensions"] = new List();
      dimensions.forEach((item) {
        output["dimensions"].add(item.toJson());
      });
    }
    if (metricNames != null) {
      output["metricNames"] = new List();
      metricNames.forEach((item) {
        output["metricNames"].add(item);
      });
    }
    if (reachByFrequencyMetricNames != null) {
      output["reachByFrequencyMetricNames"] = new List();
      reachByFrequencyMetricNames.forEach((item) {
        output["reachByFrequencyMetricNames"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of ReportReachCriteria */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents the list of reports. */
class ReportList {

  /** The eTag of this response for caching purposes. */
  String etag;

  /** The reports returned in this response. */
  List<Report> items;

  /** The kind of list this is, in this case dfareporting#reportList. */
  String kind;

  /** Continuation token used to page through reports. To retrieve the next page of results, set the next request's "pageToken" to the value of this field. The page token is only valid for a limited amount of time and should not be persisted. */
  String nextPageToken;

  /** Create new ReportList from JSON data */
  ReportList.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Report.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for ReportList */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of ReportList */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a sorted dimension. */
class SortedDimension {

  /** The kind of resource this is, in this case dfareporting#sortedDimension. */
  String kind;

  /** The name of the dimension. */
  String name;

  /** An optional sort order for the dimension column, one of:  
- "ASCENDING" 
- "DESCENDING" */
  String sortOrder;

  /** Create new SortedDimension from JSON data */
  SortedDimension.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("sortOrder")) {
      sortOrder = json["sortOrder"];
    }
  }

  /** Create JSON Object for SortedDimension */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (sortOrder != null) {
      output["sortOrder"] = sortOrder;
    }

    return output;
  }

  /** Return String representation of SortedDimension */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a UserProfile resource. */
class UserProfile {

  /** The account ID to which this profile belongs. */
  String accountId;

  /** The account name this profile belongs to. */
  String accountName;

  /** The eTag of this response for caching purposes. */
  String etag;

  /** The kind of resource this is, in this case dfareporting#userProfile. */
  String kind;

  /** The unique ID of the user profile. */
  String profileId;

  /** The sub account ID this profile belongs to if applicable. */
  String subAccountId;

  /** The sub account name this profile belongs to if applicable. */
  String subAccountName;

  /** The user name. */
  String userName;

  /** Create new UserProfile from JSON data */
  UserProfile.fromJson(Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("accountName")) {
      accountName = json["accountName"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("profileId")) {
      profileId = json["profileId"];
    }
    if (json.containsKey("subAccountId")) {
      subAccountId = json["subAccountId"];
    }
    if (json.containsKey("subAccountName")) {
      subAccountName = json["subAccountName"];
    }
    if (json.containsKey("userName")) {
      userName = json["userName"];
    }
  }

  /** Create JSON Object for UserProfile */
  Map toJson() {
    var output = new Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (accountName != null) {
      output["accountName"] = accountName;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (profileId != null) {
      output["profileId"] = profileId;
    }
    if (subAccountId != null) {
      output["subAccountId"] = subAccountId;
    }
    if (subAccountName != null) {
      output["subAccountName"] = subAccountName;
    }
    if (userName != null) {
      output["userName"] = userName;
    }

    return output;
  }

  /** Return String representation of UserProfile */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents the list of user profiles. */
class UserProfileList {

  /** The eTag of this response for caching purposes. */
  String etag;

  /** The user profiles returned in this response. */
  List<UserProfile> items;

  /** The kind of list this is, in this case dfareporting#userProfileList. */
  String kind;

  /** Create new UserProfileList from JSON data */
  UserProfileList.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new UserProfile.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for UserProfileList */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of UserProfileList */
  String toString() => JSON.stringify(this.toJson());

}

