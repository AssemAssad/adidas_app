

class Category{
 late String name;
 late String image;
  String? id; 

Category({required this.image,required this.name});
Category.fromMap(Map<String,dynamic>map){
  this.name=map['name'];
  this.id=map['id'];
  this.image=map['image'];


}
toMap(){
  return {
'name':name,
'image':image,

  };
}

}