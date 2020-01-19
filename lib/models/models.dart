class Karma {
  List<Search> search;
  String totalResults;
  String response;

  Karma({this.search, this.totalResults, this.response});

 Karma.fromJson(Map<String, dynamic> json) {
    if (json['Search'] != null) {
      search = new List<Search>();
      json['Search'].forEach((v) {
        search.add(new Search.fromJson(v));
      });
    }
    totalResults = json['totalResults'];
    response = json['Response'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.search != null) {
      data['Search'] = this.search.map((v) => v.toJson()).toList();
    }
    data['totalResults'] = this.totalResults;
    data['Response'] = this.response;
    return data;
  }
}

class Search {
  String data;
  String id;
  String year;
  String name;
  String color;
  

  Search({this.data,this.id, this.year, this.name, this.color, });

  Search.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    id = json['id'];
    year = json['Year'];
    name = json['name'];
    color = json['color'];
    
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data;
    data['id'] = this.id;
    data['Year'] = this.year;
    data['name'] = this.name;
    data['color'] = this.color;
    
    return data;
  }
}