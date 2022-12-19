class User{
  String name='ml';
  String city='lk';
  String image='';

  User({required this.name ,required this.city ,required this.image,});

//Convert json into user object...
  User.fromJson(Map<String,dynamic> json){
    name=json['name'];
    city=json['city'];
    image=json['image'];

  }

  //Converting user object to JSON....
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data=Map<String,dynamic>();
    data['name']=this.name;
    data['city']=this.city;
    data['image']=this.image;
    return data;
  }

}
