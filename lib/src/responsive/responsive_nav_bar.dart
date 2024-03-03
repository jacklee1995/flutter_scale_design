import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import './responsive.dart';

class ResposiveScaffold extends StatefulWidget {
  /// Multiple pages to switch between.
  final List<Widget> pages;

  /// Corresponding items for multiple switching pages.
  final List<BottomNavigationBarItem> items;

  /// Color when navigation item is selected.
  final Color? selectedNavItemColor;

  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final Widget? endDrawer;
  final Widget? drawer;
  final DrawerCallback? onDrawerChanged;
  final DrawerCallback? onEndDrawerChanged;
  final Color? drawerScrimColor;
  final Color? backgroundColor;
  final Widget? bottomSheet;
  final bool? resizeToAvoidBottomInset;
  final bool primary;
  final DragStartBehavior drawerDragStartBehavior;
  final double? drawerEdgeDragWidth;
  final bool drawerEnableOpenDragGesture;
  final bool endDrawerEnableOpenDragGesture;
  final String? restorationId;
  final bool extendBody;
  final bool extendBodyBehindAppBar;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final FloatingActionButtonAnimator? floatingActionButtonAnimator;
  final List<Widget>? persistentFooterButtons;
  final AlignmentDirectional persistentFooterAlignment;

  const ResposiveScaffold({
    super.key,
    required this.pages,
    required this.items,
    this.selectedNavItemColor,
    this.appBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
    this.persistentFooterAlignment = AlignmentDirectional.centerEnd,
    this.drawer,
    this.onDrawerChanged,
    this.endDrawer,
    this.onEndDrawerChanged,
    this.bottomSheet,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.primary = true,
    this.drawerDragStartBehavior = DragStartBehavior.start,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.drawerScrimColor,
    this.drawerEdgeDragWidth,
    this.drawerEnableOpenDragGesture = true,
    this.endDrawerEnableOpenDragGesture = true,
    this.restorationId,
  });

  @override
  State<StatefulWidget> createState() => _ResposiveScaffoldState();
}

class _ResposiveScaffoldState extends State<ResposiveScaffold> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsive.isDesktop(context);

    // Convert BottomNavigationBarItem to NavigationRailDestination.
    List<NavigationRailDestination> destinations = widget.items.map((item) {
      return NavigationRailDestination(
        icon: item.icon,
        selectedIcon: item.activeIcon,
        label: Text(item.label ?? ''),
      );
    }).toList();

    // Return different layouts based on whether it's a desktop layout.
    return Scaffold(
      appBar: widget.appBar,
      floatingActionButton: widget.floatingActionButton,
      floatingActionButtonLocation: widget.floatingActionButtonLocation,
      floatingActionButtonAnimator: widget.floatingActionButtonAnimator,
      persistentFooterButtons: widget.persistentFooterButtons,
      persistentFooterAlignment: widget.persistentFooterAlignment,
      drawer: widget.drawer,
      onDrawerChanged: widget.onDrawerChanged,
      endDrawer: widget.endDrawer,
      onEndDrawerChanged: widget.onEndDrawerChanged,
      bottomSheet: widget.bottomSheet,
      backgroundColor: widget.backgroundColor,
      resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
      primary: widget.primary,
      drawerDragStartBehavior: widget.drawerDragStartBehavior,
      extendBody: widget.extendBody,
      extendBodyBehindAppBar: widget.extendBodyBehindAppBar,
      drawerScrimColor: widget.drawerScrimColor,
      drawerEdgeDragWidth: widget.drawerEdgeDragWidth,
      drawerEnableOpenDragGesture: widget.drawerEnableOpenDragGesture,
      endDrawerEnableOpenDragGesture: widget.endDrawerEnableOpenDragGesture,
      restorationId: widget.restorationId,
      body: isDesktop
          ? Row(
              children: [
                NavigationRail(
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: _onItemTapped,
                  labelType: NavigationRailLabelType.selected,
                  destinations: destinations,
                ),
                Expanded(
                  child: widget.pages.elementAt(_selectedIndex),
                ),
              ],
            )
          : widget.pages.elementAt(_selectedIndex),
      bottomNavigationBar: isDesktop
          ? null
          : BottomNavigationBar(
              items: widget.items,
              currentIndex: _selectedIndex,
              selectedItemColor: widget.selectedNavItemColor,
              onTap: _onItemTapped,
            ),
    );
  }
}
