class Receta {
  final int id;
  final String name;
  final String image;
  final String desc;

  const Receta({
    required this.id,
    required this.name,
    required this.image,
    required this.desc,
  });

  factory Receta.fromJson(Map<String, dynamic> json) => Receta(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        desc: json["desc"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "desc": desc,
      };
  Receta copy() => Receta(id: id, name: name, image: image, desc: desc);
}
