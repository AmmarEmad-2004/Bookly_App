import 'package:bookly_app/core/widgets/show_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLaunchUrl(context, String url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
    ShowSnackBar(
      text: 'Success',
    );
  } else {
    ShowSnackBar(
      text: 'Can not launch this Url',
    );
  }
}
