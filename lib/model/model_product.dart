class Product{
 late String id;
 late String name;
 late String size;
 late String color;

 late String type;

 late String image;
 late String price;
 
  Product({required this.name,required this.size,required this.image,
  required this.price , required this.color ,required this.type,
  
  });
  Product.fromMap(Map<String,dynamic>map){
 id=map['id'];   
name=map['name'];
image=map['image'];
price=map['price'];

size=map['size'];
type=map['type'];
color=map['color'];

}
  toMap(){
    return {
      'name':name,
     
      'image':image,
      'price':price,
   'color':color,
     
      'size':size,
      'type':type,
    };
  }
}