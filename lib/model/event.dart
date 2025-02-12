class Event {
  final String imagePath,
      title,
      description,
      location,
      duration,
      punchLine1,
      punchLine2;
  final List categoryIds, galleryImages;

  Event(
      {required this.imagePath,
      required this.title,
      required this.description,
      required this.location,
      required this.duration,
      required this.punchLine1,
      required this.punchLine2,
      required this.categoryIds,
      required this.galleryImages});
}

final talkShowEvent = Event(
    imagePath: "assets/event_images/tedx.jpg",
    title: "TEDxTalk",
    description: "",
    location: "IILM Auditorium",
    duration: "3h",
    punchLine1: "Very cool and awesome.",
    punchLine2: "Do attend!",
    galleryImages: [],
    categoryIds: [0, 1]);

final meetupEvent = Event(
  imagePath: "assets/event_images/talkshow.jpg",
  title: "Narendra Modi Meetup",
  description: "Guest list will fill up fast.",
  location: "IILM Library",
  duration: "4h",
  punchLine1: "Our strong and handsome prime minister is coming.",
  punchLine2: "Attend or you will be executed!",
  categoryIds: [0, 2],
  galleryImages: [],
);

final hackathonEvent = Event(
    imagePath: "assets/event_images/hackathon.jpg",
    title: "Ideathon 2.0",
    description: "Bruh",
    location: "IILM Admission Block",
    duration: "5h",
    punchLine1: "Avengers!! Assemble",
    punchLine2: "I ain't typing shit",
    galleryImages: [],
    categoryIds: [0, 3]);

final festEvent = Event(
    imagePath: "assets/event_images/fest.jpg",
    title: "Annual Fest",
    description: "",
    location: "IILM Football Ground",
    duration: "1d",
    punchLine1: "Yapping at it's peak.",
    punchLine2: "Don't miss out on the shittiest food.",
    galleryImages: [],
    categoryIds: [0, 4]);

final events = [
  talkShowEvent,
  meetupEvent,
  hackathonEvent,
  festEvent,
];
