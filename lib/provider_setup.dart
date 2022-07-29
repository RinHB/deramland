import 'package:provider/single_child_widget.dart';
import 'entity/VerificationCodeLogin.dart';
import 'package:provider/provider.dart';

List<SingleChildStatelessWidget> providers =[
  ChangeNotifierProvider<UserBean>(
    create: (_) => UserBean(),
  ),
];