import 'base_item.dart';
import 'component_drop.dart';

class Component extends BaseItem {
  const Component({
    String uniqueName,
    String name,
    String description,
    this.itemCount,
    String imageName,
    bool isTradable,
    this.drops,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          imageName: imageName,
          isTradable: isTradable,
        );

  final num itemCount;
  final List<ComponentDrop> drops;

  @override
  List<Object> get props => super.props..addAll([itemCount, drops]);
}
