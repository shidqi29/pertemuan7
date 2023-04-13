class News {
  int? id;
  String? title;
  String? image;
  String? content;

  News({
    this.id,
    this.title,
    this.image,
    this.content,
  });
  
  // factory News.fromMap(Map<String, dynamic> map) {
  //   return News(
  //     id: map["id"],
  //     title: map["title"],
  //     titleImage: map["titleImage"],
  //     content: map["content"],
  //   );
  // }

  // factory News.dummy() {
  //   return News(
  //     id: 001,
  //     title:
  //         "Qui in aute sunt veniam minim deserunt laboris sint ut quis excepteur.",
  //     titleImage:
  //         "https://cdn.idntimes.com/content-images/community/2020/09/104967619-2451390651819718-4934284928595035666-n-2fc82b7325949c7d003c1c58e17d48b7.jpg",
  //     content:
  //         "Quis incididunt irure Lorem excepteur duis sint occaecat enim ullamco sit consectetur ea. Nostrud ipsum pariatur nisi mollit nostrud anim eiusmod enim. Dolor incididunt adipisicing nisi duis commodo et aliqua veniam minim laborum cillum veniam officia. Aliqua officia eiusmod dolore ad incididunt exercitation enim tempor. Ex ullamco magna culpa eu est quis amet consequat irure labore deserunt ad nisi ipsum. Do reprehenderit enim ex voluptate veniam.",
  //   );
  // }
}
