import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';

import 'model/user_model.dart';

List<SingleChildStatelessWidget> providers =[
  ChangeNotifierProvider<UserModel>(
    create: (_) => UserModel(),
  ),
];