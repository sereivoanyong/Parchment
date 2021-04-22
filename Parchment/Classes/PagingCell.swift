import UIKit

/// A custom `UICollectionViewCell` subclass used to display the menu
/// items. When creating your own custom cells, you need to subclass
/// this type instead of `UICollectionViewCell` directly.
public typealias PagingCell = UICollectionViewCell & PagingCellConvertible

public protocol PagingCellConvertible: AnyObject {
  /// Called by the `PagingViewControllerDataSource` to customize the
  /// cell with an instance conforming to `PagingItem`. You have to
  /// override this method when creating your own subclass – the
  /// default implementation will crash.
  ///
  /// - Parameter pagingItem: The `PagingItem` that is provided by the
  /// data source.
  /// - Parameter selected: A boolean to indicate whether the cell is
  /// currently selected.
  /// - Parameter options: The `PagingOptions` used to customize the
  /// look and feel of the `PagingViewController.
  func setPagingItem(_ pagingItem: PagingItem, selected: Bool, options: PagingOptions)
}
