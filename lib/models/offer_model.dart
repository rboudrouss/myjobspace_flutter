class Offer {
  final String title;
  final String subtitle;
  final String imageurl;
  final String time; // Must be datetime
  final String adress;
  final bool recent;
  bool saved = false;

  Offer({
    this.title,
    this.subtitle,
    this.time,
    this.imageurl = 'assets/images/work_image.jpg',
    this.adress,
    this.recent,
    saved,
  });
}

// Offers (bad imagination)

List<Offer> workoffers = [
  Offer(
    title: "Offre de stage rémunéré en marketing",
    subtitle: "gotta make a good coffee",
    time: "il y a 1 jour",
    adress: "Meknès, Région Fès-Meknès",
    recent: true,
  ),
  Offer(
    title: "Offre de stage rémunéré en comptabilité",
    subtitle: "gotta make a good coffee",
    time: "il y a 2 jour",
    adress: "Meknès, Région Fès-Meknès",
    recent: true,
  ),
  Offer(
    title: "Stage de pré-embauche - agence d'assurrance",
    subtitle: "gotta make a good coffee",
    time: "il y a 4 jour",
    adress: "Fés, Région Fès-Meknès",
    recent: false,
  ),
  Offer(
    title: "Offre de stage en commerce",
    subtitle: "gotta make a good coffee",
    time: "il y a 4 jour",
    adress: "Fés, Région Fès-Meknès",
    recent: false,
  ),
  Offer(
    title: "Offre de stage en informatique",
    subtitle: "gotta make a good coffee",
    time: "il y a 4 jour",
    adress: "Fés, Région Fès-Meknès",
    recent: false,
  ),
];

List<Offer> internoffers = [
  Offer(
    title: "Offre de stage rémunéré en marketing",
    subtitle: "gotta make a good coffee",
    time: "il y a 1 jour",
    adress: "Meknès, Région Fès-Meknès",
    recent: true,
  ),
  Offer(
    title: "Offre de stage rémunéré en comptabilité",
    subtitle: "gotta make a good coffee",
    time: "il y a 2 jour",
    adress: "Meknès, Région Fès-Meknès",
    recent: true,
  ),
  Offer(
    title: "Stage de pré-embauche - agence d'assurrance",
    subtitle: "gotta make a good coffee",
    time: "il y a 4 jour",
    adress: "Fés, Région Fès-Meknès",
    recent: false,
  ),
  Offer(
    title: "Offre de stage en commerce",
    subtitle: "gotta make a good coffee",
    time: "il y a 4 jour",
    adress: "Fés, Région Fès-Meknès",
    recent: false,
  ),
  Offer(
    title: "Offre de stage en informatique",
    subtitle: "gotta make a good coffee",
    time: "il y a 4 jour",
    adress: "Fés, Région Fès-Meknès",
    recent: false,
  ),
];
