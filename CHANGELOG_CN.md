
# Changelog

所有显著的变更都将在此文件中记录。

## [0.0.4] - 20231104

修复 IconBtn 组件尺寸失效错误，将原 width、height 属性统一为 size 属性。

## [0.0.2] - 20231103

### Added

- 新增 `scaleFont` 函数，用于根据屏幕宽度缩放字体大小。
- `T` 和 `TSpan` 类中的 `fontSize` 和 `height` 参数现在会被 `scaleFont` 函数进行缩放。
- 新增 `TextBtn`、`OutlinedBtn`、`FloatingActionBtn` 组件。
- 对 `IconBtn` 进行了改进。

## [0.0.1] - 20231003

### Added

- 新增 `Scale`、`scaleHeight`、`scaleWidth`、`perWidth`、`perHeight` 等基本工具。
- 新增 `T` 类，该类继承自 `Text` 类，用于创建文本。
- 新增 `TSpan` 类，该类继承自 `TextSpan` 类，用于创建富文本。
- 新增 `ElevatedBtn`、`IconBtn`、`ScrollableIconsCard` 组件。
