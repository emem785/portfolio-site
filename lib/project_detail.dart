import 'package:portfolio_site/gen/assets.gen.dart';

class ProjectDetail {
  final String title;
  final String description;
  final String pngAssetPath;

  const ProjectDetail(this.title, this.description, this.pngAssetPath);

  static Map<String, ProjectDetail> details = {
    "libertyPay": ProjectDetail(
      "LibertyPay",
      "LibertyPay is a versatile mobile application that streamlines card transactions and financial services. This app allows users to perform card transactions through Point-of-Sale (POS) terminals, making transactions more convenient and efficient.\nLibertyPay also offers a wide range of financial services, including bank transfers, savings, loan offerings, bill payments, and the purchase of subscriptions and electricity.",
      Assets.png.libertyBanner.path,
    ),
    "beeep": ProjectDetail(
      "Beeep",
      "Beeep is a personal safety app designed to help users in danger. In the event of a potentially dangerous situation, such as being stopped by corrupt police officers, Beeep allows users to send out a panic signal to their designated next of kin. This feature provides immediate notification that the user is in danger and may require assistance.\nIn addition to sending a panic signal, Beeep also tracks lawyers in proximity to the user's location. This can be helpful in situations where legal representation may be needed. By using Beeep, users can feel more secure knowing that help is only a tap away.",
      Assets.png.beeepBanner.path,
    ),
    "smartParcel": ProjectDetail(
      "SmartParcel",
      "Smart Parcel is an innovative and convenient logistics solution that helps people manage their package deliveries. With Smart Parcel, customers can have their packages delivered to a secure smart locker, where they can retrieve them at their convenience. This smart locker solution provides delivery people with a temporary storage space for packages, making it easier for customers to receive their deliveries.",
      Assets.png.smartParcelBanner.path,
    ),
    "whisperSms": ProjectDetail(
      "WhisperSms",
      "Whisper SMS is a powerful and streamlined mobile application that simplifies the process of sending bulk SMS. This app is designed to make the process of sending messages to large groups of people fast, easy and efficient. Whether you're a business owner looking to send updates to your customers, or a social organizer looking to send mass messages to your friends and family, Whisper SMS is the perfect solution.",
      Assets.png.whisperBanner.path,
    ),
  };
}
