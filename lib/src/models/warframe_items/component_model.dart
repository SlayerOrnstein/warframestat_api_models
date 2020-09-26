import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/component.dart';
import 'component_drop_model.dart';

part 'component_model.g.dart';

@JsonSerializable()
class ComponentModel extends Component {
  const ComponentModel({
    String uniqueName,
    String name,
    String description,
    num itemCount,
    String imageName,
    bool isTradable,
    this.drops,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          itemCount: itemCount,
          imageName: imageName,
          isTradable: isTradable,
          drops: drops,
        );

  factory ComponentModel.fromJson(Map<String, dynamic> json) =>
      _$ComponentModelFromJson(json);

  @override
  final List<ComponentDropModel> drops;

  Map<String, dynamic> toJson() => _$ComponentModelToJson(this);

  @override
  List<Object> get props => super.props..addAll([itemCount, drops]);
}
